#lang racket/base

(require  pollen/decode
          sugar/list
          txexpr
          pollen/tag
          pollen/setup
          pollen/core
          pollen/file
          racket/list      ;required by `count`
          racket/function) ;required by `curry`
(require (only-in srfi/13 string-contains))
;~ (require pollen/decode txexpr)
(require hyphenate/fr)

(provide (all-defined-out))

(module setup racket/base
  ;~ (define poly-targets '(xhtml html tex pdf epub))
  (define linebreak-separator "\n\n")
  ;~ (define newline "\r\n")
  (define paragraph-separator "\n\n\n")
  (provide (all-defined-out)))

;~ (define (root . elements)
    ;~ (make-txexpr 'root null (decode-elements elements
        ;~ #:exclude-tags '(script style mathjax)
        ;~ #:txexpr-elements-proc detect-paragraphs
        ;~ #:block-txexpr-proc (compose1 hyphenate wrap-hanging-quotes)
        ;~ #:string-proc (compose hyphenate smart-quotes smart-dashes)
        ;~ )))
;~ (provide root)

(define (root . elements)
  ;~ Bare version
  ;~ `(root ,@elements ,(footnote-block)))
  ;~ More flexible version
  `(root
    ,@(decode-elements elements
                     #:txexpr-elements-proc detect-paragraphs
                     #:exclude-tags '(script style img video table figure)
                     #:string-proc (compose hyphenate smart-quotes smart-dashes))
    ,(footnote-block)))

(define (anchor href . text)
  `(a ((href ,href) (title ,href)) ,@text))

(define (marginnote ref . text)
  `(list (label ((fort ,ref) (class "margin-toggle sidenote-number")))
    (input ((typet "checkbox") (id ,ref) (class "margin-toggle")))
      (span ((class "sidenote")) ,@text)))

(define ($ . xs)
  `(mathjax ,(apply string-append `("$" ,@xs "$"))))
(define ($$ . xs)
  `(mathjax ,(apply string-append `("$$" ,@xs "$$"))))


#| FOOTNOTES |#

(define (fn-id x) (string-append x "_fn"))
(define (fnref-id x) (string-append x "_fnref"))

;~ Initialize list of footnotes
(define fn-names null)

;~ Create footnote reference
(define (fn name-in)
  (define name (format "~a" name-in))
  ;~ Append new note reference to list
  (set! fn-names (cons name fn-names))
  `(sup (a [[href ,(string-append "#" (fnref-id name))]
            [class "footnote-ref"]
            [id ,(string-append (fn-id name) (number->string (count (curry string=? name) fn-names)))]]
           ,(format "(~a)" (+ 1 (index-of (remove-duplicates (reverse fn-names)) name))))))

(define fndefs (make-hash))

;~ Create footnote hash
(define (fndef name . xs) (hash-set! fndefs (format "~a" name) xs))

;~ Create footnote block
(define (footnote-block)
  (define note-items
    ;~ Loop through footnote hashes
    (for/list ([fn-name (in-list (remove-duplicates (reverse fn-names)))])
              `(li [[id ,(fnref-id fn-name)]
                    [role "doc-endnote"]]
                   ,@(append
                      (or (hash-ref fndefs fn-name #f) '((i "Missing.")))
                      (for/list ([fref-num (in-range (count (curry string=? fn-name) fn-names))])
                                `(a [[href ,(string-append "#" (fn-id fn-name) (format "~a" (+ 1 fref-num)))]
                                     [class "footnote-back"]
                                     [role "doc-backlink"]] "↩"))))))
  ;~ Output footnote block
  `(section ((class "footnotes")) (hr) (ol ,@note-items)))

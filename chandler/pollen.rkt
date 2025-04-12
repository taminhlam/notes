#lang racket/base

(require pollen/decode sugar/list txexpr pollen/tag pollen/setup pollen/core pollen/file
         racket/list ;required by `count`
         racket/function) ;required by `curry`
(require (only-in srfi/13 string-contains))
(require hyphenate)

(provide (all-defined-out))

(module setup racket/base
  (define poly-targets '(xhtml html tex pdf epub))
  ;~ (define block-tags '(address article aside blockquote body canvas dd div dl fieldset figcaption figure footer form h1 h2 h3 h4 h5 h6 header hgroup hr li main nav noscript ol output p pre section table tfoot ul video))
  (define linebreak-separator "")
  (define paragraph-separator "\n\n")
  (provide (all-defined-out)))

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


(define (img src . caption)
  (displayln (file-size src)) ;~ Returns the (logical) size of the specified file in bytes.
  (define s (string-append "shape-outside: url('" src "');"))
  `(figure [[class ""][style ,s]]
    (img [[class ""][src ,src][loading "lazy"]])
      (figcaption ,@caption) ))

(define (dropcap letter)
  `(span [[class "dropcap"]] ,letter))

(define (a href . content)
  `(a [[href ,href]] ,@content))

(define hr `(hr))

;~ attempt at manipulating metas.
;~ "works" (i.e. compiles) but has no effect ...
;~ (define (foo . content)
    ;~ (hash-set (current-metas) "foo" content) `"")

;~ For now, the original page numbers are not used,
;~ but the information is preserved in the source.
(define (pagebreak . content) `"")

(define (details summary . content)
  `(details
    (summary ,summary ": ")
    ,@content))


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
           ,(format "(~a⤵)" (+ 1 (index-of (remove-duplicates (reverse fn-names)) name))))))

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

#| MATH |#

(define ($ . content)
  `(em [[class "math"]] ,@content))

(define (^ . content)
  `(sup ,@content))

(define (_ . content)
  `(sub ,@content))

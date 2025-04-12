◊(local-require racket/file)
◊(define-values (base file isdir)
  (split-path (hash-ref metas 'here-path)))
<!doctype html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xml:lang="◊when/splice[(select-from-metas 'lang metas)]{◊(hash-ref metas 'lang)}"
      lang="◊when/splice[(select-from-metas 'lang metas)]{◊(hash-ref metas 'lang)}">
<head>
<meta name=viewport content="width=device-width, initial-scale=1">
<meta charset="utf-8"/>
<meta name="robots" content="noindex">
<meta name="googlebot" content="noindex">
<style>
◊(file->string (build-path base "style.min.css"))
</style>
<title>◊(select 'h1 doc)</title>
◊(for/list ([i (hash-keys metas)])
  (when/splice (not (eq? i 'here-path)) "<meta name=\"" i "\" content=\"" (hash-ref metas i) "\">\n"))
</head>
<body>

  ◊(->html #:splice #t doc)

</body>
</html>

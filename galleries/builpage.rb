require 'erb'
require 'pathname'

page = ERB.new(<<TEMPLATE)
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      lang="fr-FR"
      xml:lang="fr-FR">
<head>
<meta charset="utf-8">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
<meta name="author" content="Ta Minh Lam">
<meta name="robots" content="noindex">
<meta name="googlebot" content="noindex">
<link rel="stylesheet" href="/simple.min.css" type="text/css"/>
<style>
ul        { list-style-type: none;
            width:           100%; }
li        { width:           100%; }
.hidden   { display:         none; }
</style>
<script>
document.addEventListener("DOMContentLoaded", function() {
  var body = document.querySelector("body");

  body.addEventListener("click", function(e) {
    var target = e.target;

    if (target.id == "batchdownload") {
      var inputs = document.querySelectorAll("input:checked");
      Array.from(inputs).map((i) => document.querySelector("#"+i.name).click());
    };

    if (target.id == "uncheckall") {
      var inputs = document.querySelectorAll("input:checked");
      Array.from(inputs).map((i) => i.checked = false);
    };
  });
})
</script>
<title><%= directory %></title>
</head>
<body>
<h1>
<%= directory %>
</h1>
<nav>
<a class="button" href="/">Retour</a>
<button class="button" id="batchdownload">Télécharger la sélection</button>
<button class="button" id="uncheckall">Tout désélectionner</button>
</nav>
<hr>
<ul>
<% directories.each.with_index do |path, id| %>
    <li>
      <figure class="directory">
        <a href="<%= ERB::Util.url_encode(path) %>">
          <%= File.basename(path) %>
        </a>
      </figure>
    </li>
<% end %>
<% images.each.with_index do |path, id| %>
    <li>
      <figure>
        <img src="<%= ERB::Util.url_encode(path) %>" loading="lazy">
        <figcaption>
          <input type="checkbox" id="check<%= id %>" name="img<%= id %>" />
          <%= File.basename(path) %>
          <a class="hidden" id="img<%= id %>" href="<%= ERB::Util.url_encode(path) %>" download="<%= File.basename(path) %>">download</a>
        </figcaption>
      </figure>
    </li>
<% end %>
  </ul>
  <footer>
    <p>Crée avec <a href="https://simplecss.org/">Simple.css</a> (MIT license)
    <br>
    de <a href="https://kevquirk.com">Kev Quirk</a></p>
  </footer>
</body>
</html>
TEMPLATE

def buildpage(path, page)
  directory   = File.basename path
  directory   = "" if directory == "."
  images      = []
  directories = []
  has_imgs    = false
  Dir.children(path).each { |child|
    extension = File.extname(child)
    if File.directory? child
      directories.push Pathname.new(path).join(child)
      buildpage(Pathname.new(path).join(child), page)

    elsif /webp|jpe*g|png|gif/.match? extension.downcase
      has_imgs = true
      images.push child
    end
  }
  index = Pathname.new(path).join("index.html")
  File.open(index, 'w') { |file| file.write(page.result(binding)) }
end

buildpage ".", page

__END__
images = `find .`.split("\n")
               .select { |path| 
                 ext = File.extname(path)
                 /webp|jpe*g|png/.match? ext.downcase
               }

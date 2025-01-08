var names = [
['Akaleh', 'Alina', 'Aram', 'Baso', 'Benah', 'Daian'],
['Desarim', 'Elisio', 'Esfahen', 'Fiyn', 'Foret', 'Ifori'],
['Inda', 'Kasien', 'Kel', 'Kiva', 'Lora', 'Mahera'],
['Masero', 'Moradi', 'Neven', 'Nima', 'Obeha', 'Orlen'],
['Osto', 'Parda', 'Pela', 'Rasei', 'Revel', 'Sareh'],
['Sibil', 'Talia', 'Teodan', 'Toram', 'Valen', 'Vero']
];

var metiers = [
[['Antiquaire', ['artefacts', 'embrouille', 'mythes']],
 ['Brute', ['destruction', 'force', 'obstination']],
 ['Chasseur', ['bêtes', 'chasse', 'pièges']],
 ['Contrebandier', ['dextérité', 'discrétion', 'spontanéité']],
 ['Crocheteur', ['acrobaties', 'sécurité', 'surprise']],
 ['Garde du corps', ['protection', 'vigilance', 'vitesse']]],
[['Magicien', ['rituels', 'spectacle', 'supercherie']],
 ['Médecin', ['chirurgie', 'herbes', 'médecine légale']],
 ['Mercenaire', ['armes', 'athlétisme', 'défense']],
 ['Oracle', ['divinités', 'rituels', 'transes']],
 ['Rebouteux', ['esprits', 'improvisation', 'malédictions']],
 ['Sorcier', ['alchimie', 'rituels', 'symboles']]]
]

var origines = [
[['Apprenti expulsé', ['connaissance']],
 ['Artisan pas inspiré', ['artisanat']],
 ['Chasseur de rats enhardi', ['repaires']],
 ['Chevalier errant', ['duel']],
 ['Colporteur infortuné', ['commerce']],
 ['Cultiste évadé', ['tromperie']]],
[['Écuyer abandonné', ['soutien']],
 ['Fée démasquée', ['illusions']],
 ['Fermier ruiné', ['plantes']],
 ['Garde du Roi déserteur', ['pistage']],
 ['Inquisiteur hérétique', ['secrets']],
 ['Mannequin orphelin', ['mimétisme']]],
[['Mordu guéri', ['transformation']],
 ['Noble déshérité', ['évaluation']],
 ['Prêtre défroqué', ['présages']],
 ['Prisonnier libéré', ['négociation']],
 ['Soldat retraité', ['tactique']],
 ['Voyou repenti', ['intimidation']]]
]

var equipement = [
[["Filet de pêche tissé d'argent", "Bouteilles et bouchons (6)", "Aimant"],
 ["Sachet de bonbons durs (12)", "Couteau à dépecer", "Peau de loup d'hiver"],
 ["Craie, 3 couleurs (12 utilisations)", "Pied de biche", "Boussole héritée"],
 ["Sang de troll (soigne 1 Perte)", "Bocal de vers luisants (3)", "Répulsif à vermine (3 utilisations)"],
 ["Billes en verre (30)", "Pot de goudron (6 utilisations)", "Tube à parchemin (avec un parchemin mystérieux)"],
 ["Nourriture pour votre chèvre domestique", "Clef squelette (1 utilisation)", "Petite licorne en bois"]],
[["Cage de rats (3)", "Flûte", "Pot de miel (6 utilisations)"],
 ["Ficelle (100 m)", "Carillons à vent", "Masque en bois monstrueux"],
 ["Bouteille de bon vin", "Chevalière et cire", "Sifflet"],
 ["Piège à ours", "Musc d'ours et de cerf (6 utilisations)", "Savon (6 utilisations)"],
 ["Carnet et encres noire et invisible", "Graisse (6 utilisations)", "Dés (6 normaux, 3 pipés)"],
 ["Grappin", "Corde (35 m)", "Longue-vue"]],
[["Pointes de fer (12)", "Maillet", "Tente pour 2 personnes"],
 ["Sac de fausses pièces d'or (6)", "Torches, 3 h d'éclairage (6)", "Pioche"],
 ["Chaîne (4 m)", "Menottes", "Labyrinthe en bois"],
 ["Bougies, 2 h d'éclairage (12)", "Petit miroir en acier", "Parfum (6 utilisations)"],
 ["Cendres de votre grand-mère", "Livre blasphématoire", "Pelle"],
 ["Sablier de 10 minutes", "Herbes engourdissantes (3 utilisations)", "Kit de couture"]]
]

var rituels = [
[[["Analyse", "deviner le vrai sens de n'importe quel mot, écrit, son, signe ou symbole"],
  ["Flamme", "produire du feu de son propre corps"],
  ["Obscurité", "créer une ombre vivante étouffant toute lumière naturelle ou magique à proximité"]],
 [["Animation", "donner corps et souffle à une effigie humaine"],
  ["Foudre", "envoyer un éclair de chaleur et d'énergie"],
  ["Parfum", "exploiter son odorat pour se déplacer dans l'obscurité totale"]],
 [["Armée", "créer trois copies illusoires de soi-même qui reproduisent exactement ses gestes"],
  ["Germe", "faire pousser les plantes de façon spectaculaire"],
  ["Plainte", "produire un son déboussolant"]],
 [["Aura", "faire luire faiblement toute créature ou objet sous influence surnaturelle"],
  ["Guide", "faire apparaître un fil doré à suivre"],
  ["Projection", "observer un endroit distant sous forme d'esprit"]],
 [["Balise", "faire briller de mille feux tout être invisible ou objet caché à proximité"],
  ["Hâte", "faire défiler le temps deux fois plus vite que la normale dans une petite zone"],
  ["Refuge", "rester concentré pour protéger une petite zone"]],
 [["Bourrasque", "conjurer et guider un vent puissant"],
  ["Hospitalité", "maintenir la paix pendant que vous partagez vos boissons et nourritures"],
  ["Répulsif", "repousser tout animal ou personne par la force de l'esprit"]]],
[[["Bouteille", "enfermer un esprit dans un objet"],
  ["Intrusion", "prendre possession d'une personne ou un animal"],
  ["Retour", "renvoyer une personne ou un animal légèrement dans le temps"]],
 [["Camouflage", "cacher une personne ou un objet de tout esprit"],
  ["Inversion", "inverser temporairement la gravité dans une petite zone"],
  ["Sécheresse", "réduire la flore en cendres et pourriture"]],
 [["Canal", "permettre à un esprit d'agir à travers soi"],
  ["Joug", "commander un taureau spectral qui peut tirer une charge équivalente au poids du ritualiste"],
  ["Sésame", "ouvrir les verrous normaux et magiques à proximité"]],
 [["Cercle", "empêcher toute personne dans un petit cercle de sel d'infliger ou de subir une violence"],
  ["Lenteur", "faire défiler le temps deux fois moins vite que la normale dans une petite zone"],
  ["Silence", "assourdir tout alentour pendant quelques minutes"]],
 [["Charme", "apparaître plus séduisant·e et attirant·e"],
  ["Lévitation", "retenir son souffle pour léviter doucement"],
  ["Sommeil", "envoyer une personne ou un animal dans un profond sommeil"]],
 [["Convocation", "attirer un esprit ou une personne connue"],
  ["Lien", "immobiliser une personne ou un animal"],
  ["Terrier", "se déplacer à travers le sol"]]],
[[["Coup", "frapper un être ou un objet avec une arme spirituelle"],
  ["Lueur", "lier un esprit lumineux à un objet pour projeter une lumière semblable à celle d'une torche"],
  ["Têtard", "placer une grenouille dans une bouche pour transformer des poumons en branchies, et vice-versa"]],
 [["Creux", "expulser un esprit de son propre corps"],
  ["Masque", "couvrir son visage et rester immobile pour devenir indétectable"],
  ["Toile", "produire suffisamment de toile pour recouvrir une créature ou atteindre un endroit proche"]],
 [["Déliement", "tirer les fils d'un rituel pour le dénouer, et le relancer autre part"],
  ["Médium", "submerger une cible des pensées d'autres créatures à proximité"],
  ["Transfert", "échanger son corps avec un autre en le touchant"]],
 [["Engourdissement", "étouffer les sensations d'un corps"],
  ["Messager", "charger une créature des bois d'un message"],
  ["Verrou", "tracer un signe de protection sur une porte pour empêcher tout passage pendant un court délai"]],
 [["Envoûtement", "faire un don à une personne ou un animal, qui exécute en échange un ordre simple"],
  ["Mirage", "créer une illusion"],
  ["Vide", "faire disparaître l'eau d'une personne ou d'un animal"]],
 [["Essaim", "échanger des faveurs avec une colonie de vermines"],
  ["Miroir", "prendre la forme d'une personne ou un animal connu·e"],
  ["Voix", "transformer sa voix pour donner l'impression qu'elle vient d'un endroit proche"]]]
]

var buts = [
["Acheter l'orphelinat où il avait été maltraité·e",
 "Acheter la libération de son frère de la prison de Barsul",
 "Acquérir des terres dans la campagne de Levasti",
 "Acquérir la Cache Luisante avant qu'il ne soit trop tard",
 "Apporter la paix à Tirollis",
 "Armer la Résistance contre la tyrannie de Sire Haffir"],
["Assister au Festival Interdit de la Comtesse Shima",
 "Briser le siège sur la forteresse de sa sœur / son frère",
 "Briser les sceaux placés par la Sorcière de Nevask",
 "Commander une statue à la gloire de sa divinité",
 "Corrompre la justice pour qu'elle oublie ses crimes",
 "Détruire les travaux d'Ajino le Peintre Débauché"],
["Devenir l'unique protecteur d'Anse le Mélancolique",
 "Donner à son fiancé·e le cadeau dont iel rêve",
 "Faire partie de la Cour Tourbillonnante",
 "Financer une expédition vers la Mer en Fleurs",
 "Gagner le cœur de l'héritier·ère de Naganeh",
 "Gagner le droit à son nom de famille"],
["Gagner le respect du gouverneur de Fort Duhrin",
 "Humilier le chancelier de Yogyakarta Lyceaum",
 "Libérer les esclaves de la préfecture de Bandung",
 "Localiser le joyau qui hante les rêves d'Eriol",
 "Payer la dette de son père à Assyrio les Dents Blanches",
 "Payer le péage du Pont d'Émeraude"],
["Prendre la place de Cyrus au Conseil Terrestre",
 "Prendre le contrôle du Quartier Libre de Khamal",
 "Prendre sa retraite dans le Quartier des Roses d'Ambaret",
 "Publier ses découvertes sur l'ancien Kalduhr",
 "Reconstruire la fontaine d'Hisham",
 "Rembourser sa dette à la cheftaine d'Ubud"],
["Ressusciter le culte de Derawan",
 "Restaurer la gloire perdue du Jardin Caligineux",
 "Restaurer le temple de Tanahlot",
 "Retrouver la bannière perdue de la Légion Sans Nom",
 "Trouver l'artefact qui prouve la vraie nature du Roi",
 "Trouver la tombe du Chevalier Mâtin"]
]

var faces = [
  "",
  "&#9856;",
  "&#9857;",
  "&#9858;",
  "&#9859;",
  "&#9860;",
  "&#9861;"
]

function randomInArray(array) {
    if (Array.isArray(array)) {
        var i = Math.floor(Math.random() * array.length)
        return [i, array[i]];
    } else {
        throw new Error(array + ' is not an array.');
    }
}

function d6() { return randomInArray([1,2,3,4,5,6])[1]; }

function dice(d1, d2) {
  return '<span class="dark dice">'+ faces[d1] +'</span><span class="dice">'+ faces[d2] + '</span>'
}

function Perso() {
    this.n          = d6();
    this.name       = randomInArray(names[this.n-1]);
    this.m          = d6();
    this.metier     = randomInArray(metiers[Math.ceil(this.m/3)-1])
    this.o          = d6();
    this.origine    = randomInArray(origines[Math.ceil(this.o/2)-1]);
    this.e          = d6();
    this.equipement = randomInArray(equipement[Math.ceil(this.e/2)-1]);
    this.r          = d6();
    this.rituels    = randomInArray(rituels[Math.ceil(this.r/2)-1]);
    this.b          = d6();
    this.but        = randomInArray(buts[this.b-1]);
    console.log(this);
};

function createCharacter() {
    var perso = new Perso();
    document.querySelector("#name_dice")
            .innerHTML = dice(perso.n, perso.name[0]+1);
    document.querySelector("#name")
            .innerHTML = perso.name[1];
    document.querySelector("#metier_dice")
            .innerHTML = dice(perso.m, perso.metier[0]+1);
    document.querySelector("#metier")
            .innerHTML = perso.metier[1][0];
    document.querySelector("#origine_dice")
            .innerHTML = dice(perso.o, perso.origine[0]+1);
    document.querySelector("#origine")
            .innerHTML = perso.origine[1][0];
    document.querySelector("#talents")
            .innerHTML = perso.metier[1][1]
                              .concat(perso.origine[1][1])
                              .map((e) => "<li>"+ e +"</li>")
                              .join("\n");
    document.querySelector("#rituels_dice")
            .innerHTML = dice(perso.r, perso.rituels[0]+1);
    document.querySelector("#rituels")
            .innerHTML = perso.rituels[1]
                              .map((e) => "<dt>"+ e[0] +"</dt><dd>"+ e[1] +"</dd>")
                              .join("\n");
    document.querySelector("#equipement_dice")
            .innerHTML = dice(perso.e, perso.equipement[0]+1);
    document.querySelector("#equipement")
            .innerHTML = perso.equipement[1]
                              .map((e) => "<li>"+ e +"</li>")
                              .join("\n");
    document.querySelector("#but_dice")
            .innerHTML = dice(perso.b, perso.but[0]+1);
    document.querySelector("#but")
            .innerHTML = perso.but[1];
};

document.addEventListener("DOMContentLoaded", function() {
  createCharacter();
})


/*
//var d6 = [1,2,3,4,5,6]
//var d3 = [[1,2],[3,4],[5,6]]
//var d2 = [[1,2,3],[4,5,6]]

Bougies, 2 h d'éclairage (6)
Bouteilles et bouchons (3)
Cadenas & clef
Canne à pêche
Carnet et encre noire
Chaîne (4 m)
Corde (20 m)
Craie blanche (6 utilisations)
Éponge
Ficelle (45 m)
Filet de pêche standard
Graisse (3 utilisations)
Grappin
Kit de crochetage
Maillet
Marmite
Maquillage (3 utilisations)
Musc de cerf (3 utilisations)
Palan
Pelle
Perche (3 m)
Petit miroir
Petite cloche
Pied-de-biche
Piège à ours
Pieux en bois (6)
Pioche
Pointes de fer (6)
Pot de goudron (3 utilisations)
Sablier de 30 min
Seau
Sifflet
Tente 1 personne
Torches, 3 h d'éclairage (3)
Tube à parchemin, vide
Vessie à air
*/

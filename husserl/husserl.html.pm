#lang pollen

◊;(define (newthought . parts) `(span ((class "newthought")) ,@parts))
◊;(define (fraktur . parts) `(span ((class "fraktur")) ,@parts))
◊;(define (caps . parts) `(span ((class "caps")) ,@parts))
◊;(define (code content) `(code ,(string-replace content " " "#")))
◊;(define (code content) `(code ,(format "Hey! Listen up! ~a" content)))

◊(define (sq . parts) `(span "√" (span [[class "sqrt"]],@parts)))

◊(define (ol #:start [n #f] . parts)
  (define index
      (if n n ""))
  `(ol [[start ,index]] ,@parts))

◊(define (s . parts) `"")
◊(define (page num) `(p (data [[class "pagebreak"] [value ,num]] "p.",num)))

◊(define (qs . content) `(q [[class "start"]] ,@content))
◊(define (qe . content) `(q [[class "end"]] ,@content))
◊(define (bq . content) `(blockquote ,@content))
◊(define (bqs . content) `(blockquote [[class "start"]] ,@content))

◊(define (code . content) `(span [[class "mono"]] ,@content))

◊;~ ◊h6{APPENDICE VI}

◊(define-meta date "1901"
              author "Husserl, Edmund"
              lang "fr-FR"
              keywords "Philosophie, Mathématiques")

◊details{
◊summary{Source:}
◊dl{
◊dt{◊em{Articles sur la logique : 1890-1913.} }
◊dd{auteur: Edmund Husserl}
◊dd{traduction: Jacques English. 1975}
◊dd{collection: Épimethée}
◊dd{date de parution: 01/03/1995}
◊dd{ISBN: 978-2-13-033474-3} }}

◊page["494"]

◊h1{L'imaginaire en Mathématiques}

◊h2{1. Pour une conférence à la société mathématique de Gottingen (1901)}

◊h3{1. Introduction}

Le thème que je vais traiter dans cette conférence porte sur une
question fondamentale de la méthodologie mathématique, et, en tant que
tel, il appartient à ce domaine difficile qui intéresse les
mathématiciens et les philosophes à un degré égal, même si ce n'est pas
tout à fait dans le même sens. Le mathématicien est le théoricien de la
déduction. Limitées à l'origine au domaine des nombres et des
quantités, les mathématiques se sont développées bien au-delà de ce
domaine. Elles se sont de plus en plus rapprochées du but que Leibniz
avait déjà clairement conçu, c'est-à-dire du but d'une doctrine des
théories (◊em{Theorienlehre}) pure, indépendante de tout domaine
particulier de connaissance, et, dans cette mesure, formelle ; les
mathématiques, au sens le plus haut et le plus large, sont la science
des systèmes théoriques en général, faisant abstraction de ce qui est
théorisé dans les théories données des différentes sciences ; dans
n'importe quelle théorie donnée, dans n'importe quel système déductif
donné, nous faisons abstraction de sa matière, des genres particuliers
d'objets dont elle a cherché la maîtrise théorique, et, si nous
substituons aux représentations d'objets matériellement déterminées les
simples formules, donc la représentation d'objets en général qui est
maîtrisée par une telle théorie, par une théorie de cette forme, nous
avons alors accompli une généralisation qui considère les théories
données comme un simple cas singulier d'une classe de théories ou bien
plutôt d'une forme de théories ◊s{431} que nous considérons de façon unitaire
et en vertu de laquelle nous pouvons dire alors que tous ces domaines
scientifiques singuliers ont, quant à la forme, la même théorie. Une
théorie élaborée systématiquement en ce sens est définie
◊page["495"] par un ensemble d'axiomes formels, c'est-à-dire par un
nombre limité de propositions fondamentales purement formelles,
consistantes les unes avec les autres et indépendantes les unes des
autres. La déduction systématique livre d'une manière purement logique,
c'est-à-dire purement selon le principe de contradiction, les
propositions dépendantes et par là l'ensemble global de propositions
qui appartiennent à la théorie définie. Mais le domaine d'objets est
défini par les axiomes en ce sens qu'il est délimité en tant que sphère
quelconque d'objets en général, peu importe qu'ils soient réels ou
idéaux, pour lesquels sont valables des propositions fondamentales de
telles et telles formes. Nous appelons un domaine d'objets ainsi défini
une multiplicité déterminée, mais définie formellement.


Les formes de théories définies dans une telle abstraction peuvent
alors être mises en rapport les unes avec les autres, elles peuvent
être classées d'une manière systématique, on peut élargir et rétrécir
de telles formes, on peut mettre n'importe quelle forme donnée d'avance
en relation (◊em{Zusammenhang}) systématique avec d'autres formes de
classes définies d'une manière déterminée et tirer d'importantes
conclusions sur son rapport. Un exemple bien connu rend clair cela : la
géométrie ◊em{euclidienne} est une théorie concrète qui, formalisée,
donne la forme des théories que nous désignons comme doctrine de
multiplicité ◊em{euclidienne} triple, et celle-ci à son tour n'est
qu'un cas singulier tiré de la classe systématiquement cohérente
(◊em{zusammmhangenden}) de la multiplicité de degré de courbure variable.


Les mathématiques sont donc, dans leur idée la plus haute, une doctrine
des théories, la science la plus générale des systèmes déductifs
possibles en général.


Avec cette généralisation par laquelle les sphères des anciens supports
de la recherche mathématique --- les numérations, les nombres ordinaux,
les grandeurs absolues et dirigées, etc. --- sont entièrement dépassées,
se posent alors des problèmes de méthodologie qui ne sont pas résolus.
La doctrine mathématique des théories, que nous désignons d'habitude
comme arithmétique formelle ou mathématiques formelles, n'est
précisément pas due à un intérêt purement théorique, à un intérêt porté
à la légalité de la forme des théories, et elle ne veut pas non plus
servir simplement à cet intérêt. Les mathématiques formelles veulent
être ◊s{432} l'instrument de découvertes mathématiques concrètes ; comme les
anciennes mathématiques de la quantité ont été l'instrument des
grandeurs dans les recherches faites par les sciences de la nature,
c'est-à-dire l'instrument de théorisation inductive des différents
domaines de connaissances physiques, pour lequel l'induction avait
livré les théorèmes appropriés, de même les nouvelles mathématiques
formelles veulent apporter non seulement la même chose, mais encore
beaucoup plus. Elles veulent produire des méthodes d'une généralité et
d'une force incomparablement plus grandes, qui rendent superflus tous
les travaux méthodologiques du genre mathématique réel.

◊page["496"]

Mais précisément les difficultés se trouvent dans le rapport entre les
mathématiques formelles et leur application aux mathématiques réelles,
aux domaines particuliers de connaissance. Les philosophes sont
intéressés par les problèmes qui se rattachent à cela, puisque c'est de
la solution de ces problèmes que dépend la compréhension de l'essence
générale des sciences déductives et des théories en général. Les
mathématiciens sont intéressés par eux, bien entendu, mais seulement
d'une manière conditionnelle, c'est-à-dire dans la mesure où la
certitude de leur travail méthodologique s'en trouve conditionnée.
Toutefois le développement des sciences montre constamment que
l'obscurité dans les questions de principe finit par se venger, que, si
en effet certains stades du progrès sont atteints, le progrès ultérieur
est entravé par des erreurs qui sont dues à des idées méthodologiques
obscures.


Le problème de l'imaginaire s'est développé à l'intérieur de la
première forme historique des mathématiques pures, à l'intérieur de
l'arithmétique, particulièrement sous la forme de l'algèbre
arithmétique. La tendance à la formalisation qui se manifeste dans le
calcul algébrique a conduit à des formes d'opération qui
arithmétiquement n'avaient pas de sens, mais qui montraient la
propriété étonnante de pouvoir être employées, malgré cela, dans les
calculs. Il est en effet apparu que, si le calcul était accompli
mécaniquement selon les règles d'opération comme si tout avait un sens,
alors, du moins dans de larges sphères de cas, tout résultat de calcul
qui était exempt des éléments imaginaires pouvait être utilisé d'une
façon juste, ainsi qu'on pouvait le montrer empiriquement par une
vérification indirecte.


(je comprends naturellement ici le terme ◊q{imaginaire} de la manière
la plus large possible, selon laquelle le nombre négatif, et même le
nombre fractionnaire, le nombre irrationnel, etc., peuvent valoir eux
aussi comme imaginaires. ◊s{433} Historiquement, il n'y a que l'imaginaire au
sens du négatif et du nombre latéral à avoir fait scandale.)


Or cette situation a conduit à l'habitude, se généralisant toujours
davantage, d'opérer librement avec l'imaginaire. Les erreurs et les
obscurités qui ont pu naître, comme la question du sens des nombres
logiquement négatifs, ont toutes conduit aussitôt à construire des
règles fixes de calcul pour les formes imaginaires, règles qui rendent
possible une activité opératoire indubitablement certaine et juste.
Mais le problème de l'imaginaire est resté lui-même par là sans
solution. Nous pouvons le formuler de la façon suivante :


Soit donné un domaine d'objets, dans lequel, par la nature particulière
des objets, sont déterminées des formes de jonction et de relation qui
s'énoncent dans un certain système d'axiomes ◊code{A}. Sur le fondement
de ce système, donc sur le fondement de la nature particulière des
objets, certaines formes de jonction ◊page["497"] n'ont pas de
signification réelle, c'est-à-dire que ce sont des formes de jonction
qui sont absurdes. De quel droit ce qui est absurde peut-il être
utilisé dans le calcul, de quel droit ce qui est absurde peut-il être
employé dans la pensée déductive comme si c'était quelque chose de
concordant ? Comment est-il possible d'expliquer qu'on puisse opérer
avec cc qui est absurde selon des règles, et que, si ce qui est absurde
se situe en dehors des propositions, les propositions obtenues soient
justes ?


Il ne semble pas que des considérations de logique générale puissent
apporter ici une explication et une solution. Les logiciens ont
continuellement insisté sur la prescription d'opérer avec des concepts
clairs, tranchés et définis d'une manière concordante. S'ils ont
accordé de l'importance au caractère clair et tranché des concepts,
c'est principalement parce qu'on évite ainsi des contradictions
inaperçues. La contradiction serait bannie. Il n'y a que sous une
forme, ont dit les logiciens, que la contradiction peut jouer un rôle
dans la pensée ; c'est quand il importe de montrer la contradiction pour
prouver par là que le concept n'a pas d'objet. Dans la preuve indirecte
on opère avec des concepts absurdes z en toute conscience. Mais ici
tout est clair. Du concept contradictoire nous tirons des conséquences
pleines de contradiction et nous en concluons que le concept est
précisément contradictoire, qu'aucun objet ne lui correspondra ; mais,
dans les mathématiques de l'imaginaire, ce n'est manifestement pas cela
qui entre en considération.


◊s{434}

◊h3{2. Théories sur l'imaginaire}


◊em{Première} théorie : <L'imaginaire est acquis> empiriquement par induction (◊em{Bain, Baumann}).


◊em{Deuxième} <théorie : l'imaginaire est> a priori immédiatement évident (◊em{Boole}).


◊em{Troisième} théorie : Les nombres fractionnaires. les nombres
négatifs. etc. sont bien entendu des nombres impossibles du point de
vue des numérations qui seules sont définies à l'origine ; ce sont des
concepts auxquels ne peut correspondre aucun objet. Mais qui nous force
à maintenir le domaine des nombres limité ? Les nombres sont de simples
créations de notre esprit par l'acte de dénombrer. Produisons de
nouveaux nombres, élargissons le domaine des nombres. Et cela de telle
façon qu'alors toute opération inverse puisse être exécutée et qu'en
même temps les nouveaux nombres obéissent le plus possible aux règles
des anciens. ◊q{Précisément cet état de limitation dans l'exécutabilité
des opérations indirectes est devenu à chaque fois la raison propre
d'un acte nouveau de création ; c'est ainsi que l'esprit humain produit
les nombres négatifs et fractionnaires} ◊page["498"]
(◊em{Dedekind})◊fn["n1"]. Or si nous demandons de quelle manière
l'esprit humain accomplit cette création, on répond ceci : par la
définition. L'équation ◊code{a+x=c} ne peut pas être remplacée par
une numération au cas ou ◊code{c<a}; la difficulté est simplement
écartée: nous définissons un nouveau nombre qui fait cela, et nous
entendons par ◊code{c-a} le nombre ainsi défini, en ayant seulement à
nous convaincre que les lois d'opération pour ce nombre, décalquées sur
les nombres définis qui valent à l'origine et qui sont possibles, ne
peuvent pas donner de contradiction dans l'ensemble du système des
opérations.

◊fndef["n1"]{Cf. R. DEDEKIND, Stetigkeit und irrationale Zahlen, ◊em{Braunschweig, 1872, p.6} ; Husserl écrit dans le manuscrit ◊q{◊em{opérations inverses}} au lieu de ◊q{◊em{opérations indirectes}}. (Note de l'éditeur.)}


Réfutation. Cette théorie, telle qu'elle est établie ici, est tout
simplement incompréhensible. Si nous entendons par numération la
réponse à la question combien, la suite des nombres est alors la
multiplicité fermée de particularisations qui sont possibles dans la
sphère ◊s{435} du combien. Or, sur le fondement des opérations, je peux certes
définir de multiple façon l'idée sur laquelle se fondent les
numérations, mais certains résultats d'opération entrent en
contradiction avec l'idée du combien, et, si je définis ceux-ci, j'ai
alors défini précisément des nombres contradictoires. Je ne peux pas
élargir sans absurdité d'une manière quelconque la sphère du concept de
numération en me fondant sur des définitions créatrices, car c'est ce
concept lui-même qui me pose des limites. Mais si pourtant je les
définis, je définis alors des concepts absurdes, et pour que ceux-ci
soient admis dans les calculs, pour qu'il soit permis d'opérer dans la
pensée avec eux malgré leur absurdité, il faut prouver le droit de ces
opérations. C'est une chose incompréhensible de voir comment on peut
affirmer que la difficulté est écartée d'une façon ou d'une autre au
moyen de la définition arbitraire. La définition est l'établissement
arbitraire de la signification d'un mot. En cela sans doute nous ne
sommes pas limités. Mais si un mot, par exemple le mot numération, est
limité à un domaine d'objets donné et apparaissant d'une manière
évidente comme possible, je ne peux pas alors décréter par n'importe
quel établissement arbitraire que le domaine doit admettre un
élargissement par de nouveaux objets. Ce serait comme si on voulait
décréter en géométrie : il doit y avoir des carrés ronds, sinon dans
le plan, du moins dans une dimension supérieure de l'espace.


Ce qui se trouve derrière cette théorie et qui lui confère chez les
mathématiciens une fausse apparence, c'est un certain déplacement dans
les idées. Il est certain que nous ne pouvons pas élargir
arbitrairement le concept de numération. Mais nous pouvons bien
délaisser le concept de numération, et, par le système formel des
définitions et des opérations valant pour les numérations, définir
◊page["500"] un nouveau concept, purement formel, celui des nombres
entiers positifs. Et ce concept formel des nombres positifs, tel qu'il
est délimité lui-même par la définition, peut s'élargir par de
nouvelles définitions, et cela en étant exempt de contradiction.

◊;{lost fragment: à l'origine et qui sont possibles, ne peuvent pas donner de contradiction dans}

◊em{Quatrième} théorie : On construit l'arithmétique de la manière
suivante : on commence par l'explication du concept de numération et
par celle de la suite des numérations, on définit pour ce domaine les
opérations de calcul, on fixe les règles de calcul et on trouve les
limitations bien connues. Pour vérifier celles-ci, on recourt aux
applications réelles de l'arithmétique. On dit : ◊q{Ces limitations
sont inessentielles. Dans la vie et dans la science, les unités du
dénombrement sont les grandeurs : grandeurs de temps, grandeurs de
force, segments, etc. Or la nature des différents concepts de grandeur
implique que les opérations peuvent s'accomplir pour eux d'une manière
absolument générale. Et c'est ainsi ◊s{436} qu'acquièrent un sens réel
dans le domaine des grandeurs partageables en parties égales les
nombres fractionnaires, dans le domaine des grandeurs de segments les
nombres rationnels, dans le domaine des segments les nombres négatifs
et imaginaires.} ◊q{L'impossibilité des formes de nombre en question},
dit-on, ◊q{n'est donc qu'apparente, et on est tout à fait justifié à
opérer avec elles}.


Même ceux qui parviennent à cette justification par d'autres suites
d'idées, qui font appel à la force créatrice des définitions ou à
l'idée de l'arithmétique formelle, aiment faire appel aux applications
réelles, comme si cela apportait une démonstration décisive au fait que
les éléments imaginaires ne sont qu'une apparence.


La réfutation de cette théorie repose à mon avis sur une analyse
défectueuse du rapport des différentes sortes réelles de nombre et des
différentes arithmétiques les unes avec les autres, je veux dire des
arithmétiques formelles. Si nous définissons le nombre comme
numération, comme le font par exemple ◊em{Weierstrass}, ◊em{Cantor} et
d'autres, alors il n'y a pas dans cette sphère de nombres
fractionnaires, de nombres négatifs, etc., peu importe que nous
prenions ou non comme unités dénombrées des grandeurs partageables ou
non partageables, continues ou discontinues, munies de direction et de
sens à la manière des suites et des segments. Un exemple plus précis
montrera que les nombres fractionnaires n'obtiennent pas un sens réel
par ceci qu'on conserve le concept de numération et qu'on suppose que
les unités sont partageables, mais par ceci qu'on abandonne en général
le concept de numération et qu'on se fonde sur un nouveau concept,
celui des grandeurs partageables. Cela conduit à un système d'opération
qui coïncide en partie avec celui de la numération, mais qui en partie
est plus large, c'est-à-dire qui renferme plus d'éléments fondamentaux
et d'axiomes. Et alors. de cette façon, avec chaque sorte de grandeur,
on change aussi d'arithmétique. Les différentes atithmétiques n'ont pas
de parties communes, elles ont des sphères ◊page["500"] totalement
différentes, mais elles ont une construction analogue, elles ont des
formes d'opération qui sont en partie les mêmes, quoiqu'elles aient des
concepts d'opération différents. Et voilà pourquoi c'est une absurdité
de dire que la possibilité de la représentation réelle de l'imaginaire
en géométrie prouve que l'imaginaire n'est pas du tout imaginaire.
D'abord il n'est pas du tout vrai que l'imaginaire dans l'arithmétique
des numérations est représenté de quelque manière que ce soit,
serait-ce en géométrie. L'imaginaire de l'arithmétique au sens de la
◊s{437} numération veut dire : une numération qui est la racine de
◊code{−1}. Mais ce que l'on représente, c'est le concept d'un segment
qui a subi par rapport à un segment de base une rotation telle que si
je lui applique la même rotation j'en arrive à la rotation de 180° par
rapport au segment originaire qui a subi la rotation.


La numération ◊code{7−9} ne peut pas se représenter ; ce qui est
représenté, c'est une certaine opération désignée par les mêmes signes
dans une suite simple.


Ce qui jette la confusion ici, c'est l'égalité de la relation pour des
concepts intrinsèquement différents, et cette égalité de la relation
est due à son tour à l'égalité des formes d'opération qui seules
importent dans la déduction. Mais des formes d'opération qui ont un
plein sens dans un domaine conceptuel sont contradictoires dans un
autre. Et du fait qu'elles ont un plein sens dans l'un, on ne peut pas
tirer la conclusion que la contradiction est une apparence dans
l'autre.


Il y a en arithmétique la tendance à la formalisation, et celle-ci se
trouve derrière de telles théories obscures. Si l'on s'élève jusqu'au
système pur d'opération, si l'on abandonne le domaine réel originaire
d'objets, que ce soit des segments ou des numérations, et si l'on garde
sous les yeux dans la généralité la plus générale un domaine en
général, on peut alors modifier différemment l'idée d'un tel domaine,
tantôt dans le sens d'un système d'opération ou d'un système d'axiomes
plus large, tantôt dans le sens d'un système plus étroit. Et dans cette
généralité qui n'est délimitée par aucune limite de concepts donnés, il
n'y a naturellement aucune absurdité, à moins que l'on ait pourvu les
opérations des définitions de conventions ou d'axiomes contradictoires.


Mais, à vrai dire, le problème continue à se poser. Si nous avons
défini l'idée formelle d'une multiplicité en général par une série
d'établissements ◊code{a+b=b+a}, etc., alors il va de soi que
tout domaine réel dans lequel, en nous fondant sur les particularités
réelles de ses objets, nous en venons aux lois précisément de cette
forme, est commandé par l'algorithme de la multiplicité. Toute théorie
de multiplicité commande, cela va de soi, toutes les théories des
multiplicités spéciales réellement déterminées de la même forme. Mais
que se passe-t-il si une multiplicité réelle n'a qu'en partie des
axiomes de la même forme ? Que se ◊s{438} passe-t-il si la multiplicité
générale a plus d'objets et plus d'axiomes ? Il est clair alors que la
multiplicité particulière n'est pas un simple cas spécial de la
◊page["501"] multiplicité générale dont le système de calcul ne peut
plus maintenant être applicable tel quel. Les signes et les formations
de ce système ou bien perdent absolument tout sens dans le cas donné ou
bien prendront le caractère de concepts impossibles, c'est-à-dire
contradictoires.


Nous en venons par là à la ◊em{cinquième} théorie, qui dit : nous nous
élevons d'après le principe de la permanence au-dessus du domaine
particulier, nous passons dans le formel, et là nous pouvons opérer
librement avec ◊sq{−1}. Alors l'algorithme de l'opération formelle
est certes plus large que l'algorithme des opérations étroites, qui
seules sont le support d'opérations réelles dans un domaine conceptuel
donné. Mais si l'arithmétique formelle est en soi consistante,
l'activité opératoire élargie ne peut pas montrer de contradiction avec
l'activité étroite ; donc ce que j'ai déduit formellement de telle façon
que cela ne contienne que des signes du domaine étroit doit pour le
domaine étroit être vrai aussi.


Nous concevons la chose d'une manière tout à fait générale. Nous
faisons un examen tout à fait général. Supposons qu'un domaine donné
quelconque, qu'il soit ◊em{a priori} ou réel, nous conduise à certaines
propositions fondamentales, propres à commander l'ensemble du domaine
d'une manière théorique, donc dans une déduction pure ; alors il peut
arriver et il arrivera en général que, soit déjà dans les propositions
fondamentales, soit dans les propositions déduites, une limitation des
concepts composés, disons des formes d'opération, soit exigée pour que
les propositions conservent un sens, pour qu'elles ne deviennent pas
absurdes du fait de l'absurdité des concepts eux-mêmes. Or on peut
soulever la question de savoir dans quelles circonstances, sans
s'occuper de la possibilité ou de l'absurdité des concepts, on peut les
compliquer et appliquer librement les propositions des axiomes aux
complexions sans aboutir à une contradiction ; et puis ensuite : dans
quelles circonstances les propositions qui ne sont pas absurdes sont
aussi effectivement valables.


Par imitation du procédé des mathématiques, on pourrait penser ceci :
nous prenons les propositions fondamentales et les définitions des
concepts dans un sens purement formel. Au lieu de partir du domaine
réel, faisons totalement abstraction de celui-ci, et considérons les
énoncés comme des définitions formelles ◊s{439} d'un domaine en
général, qui est défini précisément comme tel, auquel conviennent des
énoncés de telle forme. Appelons ◊code{D} ce domaine. Alors, dans cette
formalisation, à toute proposition déterminée par les propositions
fondamentales du domaine réel correspondra une proposition dans le
domaine formel et inversement. Le domaine formel aura les mêmes limites
que le réel, limites qui sont préformées dans les axiomes.
Représentons-nous maintenant le domaine formel élargi de telle façon
qu'il n'ait plus ces limites, dans la mesure où cela est possible. Le
concept de l'élargissement implique, si nous le rapportons aux axiomes,
que ◊page["502"] les nouveaux axiomes englobent en même temps
les anciens et que les nouveaux admettent en outre des cas d'opération
que les anciens excluent. On pourrait dire alors : une présupposition
évidente de l'élargissement, c'est que le nouveau système d'axiomes
soit en lui-même compatible. Car, à partir de quelque chose
d'incompatible, on peut évidemment démontrer n'importe quoi, ou plutôt
: il n'y a pas là de démonstration. Mais si le nouveau système est
compatible et s'il inclut en soi l'ancien, il ne peut y avoir
d'incompatibilité dans tout le domaine de la déduction ; donc une
proposition qui d'une façon ou d'une autre est déduite de telle sorte
qu'elle ne contient pas de formations d'opération ◊q{impossibles} ne
peut pas renfermer d'incompatibilité, donc elle est vraie.

Toutefois Cette manière de raisonner soulève une difficulté. Tout
d'abord il est certainement juste qu'aucune proposition déduite qui
renferme les complexions imaginaires, ne peut contenir
d'incompatibilité, qu'elle ne peut entrer en conflit ni avec les
axiomes élargis ni avec les axiomes originaires et étroits. Mais d'où
savons-nous que ce qui n'est pas contradictoire est vrai aussi, ou
bien, ainsi qu'il faut l'exprimer ici, d'où savons-nous qu'une
proposition qui contient exclusivement les concepts apparaissant dans
le domaine étroit et y étant définis et qui n'entre pas en conflit avec
les axiomes du domaine étroit, qu'une telle proposition soit valable
pour le domaine étroit ? Que veut dire : une proposition vaut pour le
domaine étroit ? Cela veut dire : elle vaut sur le fondement des axiomes
de ce domaine, elle en est une conséquence purement logique. D'où
savons-nous donc qu'une proposition qui n'entre pas en conflit avec les
axiomes étroits est une conséquence de ces axiomes P Pensons à la chose
suivante : le domaine étroit ◊code{D} a les axiomes
◊code{A◊sub{D}}, l'ensemble des conséquences purement logiques
◊code{C◊sub{D}}, le reste du domaine ◊code{Δ} par exemple
◊code{A◊sub{D}+A'=A◊sub{Δ}}; ou bien
◊code{A◊sub{Δ}>A◊sub{D}}, donc la
conséquence (◊code{C =} conséquence) :

◊s{440}

◊table{
    ◊tr{
        ◊td{◊code{C}◊sub{Δ}}
        ◊td{◊code{= C◊sub{D}+C◊sub{A'}}}
    }
    ◊tr{
        ◊td{}
        ◊td{◊code{= C◊sub{D+A'}}}
    }
}


Si une proposition quelconque ne contient pas les complexions
d'opération élargies, il ne va pas de soi cependant qu'elle appartienne
aux ◊code{C◊sub{D}}.


◊h3{3. Le passage par l'imaginaire}

◊q{Défini} d'une manière limitée ou ◊q{défini} d'une manière relative =
◊q{défini} dans le sens pris jusqu'à maintenant. ◊q{Défini} d'une
manière absolue :


◊ol{
  ◊li{Un système d'axiomes est ◊q{défini} d'une manière relative si
  toute proposition qui a un sens d'après lui est décidée dans la
  limitation au domaine de ce système ; un système d'axiomes est
  ◊q{défini} d'une manière absolue si toute proposition qui a un sens
  d'après lui est décidée en général.) ◊page["504"] Donc est
  ◊q{défini} d'une manière absolue = complet au sens de ◊em{Hilbert}.}

  ◊li{Si non seulement ne peut être ajouté pour les objets du domaine
  aucun axiome (qui reçoit un sens des axiomes déjà donnés), mais si en
  général ne peut être ajouté aucun axiome.}

  ◊li{Mais cela implique que la multiplicité (le domaine) ne peut pas
  être élargie de telle façon que pour le domaine élargi le même
  système d'axiomes vaille que pour l'ancien.}
}


Car dans le domaine élargi ne peuvent pas simplement valoir les axiomes
anciens, autrement le domaine ne serait pas élargi. Donc, dans le
domaine large, doivent valoir, en plus des anciens axiomes, encore
d'autres axiomes, et des axiomes qui ne soient pas de simples
conséquences des anciens. Mais toute proposition possible est déjà
décidée d'avance.


Il est clair que c'est une propriété particulière du système de
déduction qui vient en question ici. Pour trouver cette propriété,
jetons un coup d'œil sur le cas particulier de l'◊em{arithmetica
universalis}. Qu'est-ce qui nous est connu ici ? 1) Que toute
proposition déduite dans l'arithmétique élargie, qui tombe à
l'intérieur du domaine étroit, ne peut pas entrer en conflit avec les
axiomes de celui-ci. 2) Mais nous savons encore davantage. Une telle
proposition peut se réduire à une équation, peu importe que ce soit une
équation avec des éléments déterminés ou en partie avec des éléments
indéterminés. De même que nous entendons ◊code{a>b} comme l'équation
◊code{a+u=b}. Mais il est clair alors que le système d'axiomes de
◊s{441} l'arithmétique, si étroitement qu'il soit défini, a pour
propriété que toute équation se situant dans cette arithmétique ou bien
est valable sur le fondement des axiomes ou bien n'est pas valable sur
le fondement des axiomes ; c'est-à-dire que ou bien la proposition est
une conséquence des axiomes ou bien elle est en contradiction avec les
axiomes. Nous dirons par conséquent : pour l'arithmétique le problème
se résout ainsi : toute proposition qui se situe dans l'arithmétique
étroite, mais qui est déduite sur le fondement de l'arithmétique large,
est une équation. Or toute équation qui se situe dans l'arithmétique
étroite, ou bien y est juste ou bien y est contradictoire ; une équation
déduite dans le domaine large ne peut pas être contradictoire avec les
axiomes du domaine étroit, autrement tout le reste du domaine serait
inconsistant. Donc elle est juste.


Il semble donc en résulter la loi générale suivante : un passage par
l'imaginaire est permis : 1) si l'imaginaire peut se définir
formellement dans un vaste système de déduction consistant et si 2) le
domaine de déduction originaire formalisé a pour propriété que toute
proposition qui se situe dans ce domaine est ou bien vraie sur le
fondement des axiomes de ce domaine, ou bien fausse sur leur fondement,
c'est-à-dire contradictoire avec les axiomes.


Toutefois on voit facilement que cette conception ne suffit pas,
quoiqu'elle ◊page["505"] exprime déjà la partie essentielle de la
vérité. A savoir : la difficulté se trouve dans l'expression
◊q{proposition se situant dans le domaine}. Qu'est-ce que cela veut
dire ? D'où sais-je qu'une proposition se situe dans le domaine ? Se
situe dans le domaine une proposition dont on peut démontrer sur le
fondement des axiomes qu'elle est vraie, c'est-à-dire qu'elle en est la
conséquence, ou qu'elle est contradictoire, qu'elle les repousse. Mais
la question est encore de savoir si les propositions déduites du
domaine large se situent en ce sens dans le domaine étroit. Si cela
n'est pas déterminé d'avance, nous ne pouvons absolument rien dire.
Mais cela ne peut être déterminé d'avance que si je peux voir d'emblée
sur la proposition si elle se place en ce sens sous l'axiome. Et ceci
est possible de telle façon que les axiomes délimitent complètement le
domaine, dans la mesure où il ne doit pas y avoir d'autre axiome pour
ce domaine. Un domaine de choses peut être délimité par les axiomes
d'une manière complète et incomplète ; à savoir : si j'ai l'ensemble des
propositions supérieures à partir desquelles sont déductibles toutes
les propositions possibles du domaine, j'ai avec cela la théorie
entière du domaine. Si nous formalisons ces propositions supérieures,
nous obtenons un ◊s{442} système formel de déduction dans lequel il y a
pour toute proposition du domaine une proposition formelle
correspondante. Mais, en cela, parmi les axiomes formels par lesquels
doit être défini le domaine formel, il y a un axiome de fermeture qui
dit : c'est par tels et tels axiomes que le domaine est déterminé et il
n'y en a pas d'autres qui soient valables. Si cet axiome de fermeture
n'est pas ajouté, le domaine n'est pas fermé dans la mesure où
peut-être d'autres axiomes encore peuvent être admis et où ainsi les
objets du domaine peuvent être définis formellement par de nouvelles
déterminations. Ce concept de la complétude doit être désigné comme
complétude inauthentique.


Cette complétude n'est pas en effet quelque chose qui caractériserait
spécialement des systèmes d'axiomes. Car nous pouvons rendre tout
système d'axiomes, tout système de propositions supérieures pour des
déductions possibles, quasi complet par un tel axiome de fermeture
négatif, et cette complétude ne peut donc absolument pas nous servir à
quoi que ce soit. Au moment où nous élargissons un système d'axiomes,
nous posons, cela va de soi, l'axiome de fermeture. Un système
d'axiomes avec l'axiome de fermeture ne peut pas être élargi : le
concept de l'élargissement présuppose que l'axiome négatif de fermeture
n'est pas visé en même temps.


D'autre part il est vrai, bien entendu, qu'un tel système d'axiomes
fermé extérieurement d'une manière inauthentique a déjà la propriété à
laquelle nous nous sommes attaché : c'est-à-dire qu'on peut voir sur
toute proposition si c'est ou non une conséquence du système d'axiomes.
La proposition n'a qu'à contenir les relations, les formes de liaison,
bref les concepts qui sont définis formellement ◊page["506"] par le
système d'axiomes. Si elle a en général un sens d'après ces
définitions, alors elle est vraie ou contradictoire : par exemple
◊code{a+b=b+a} et les axiomes d'égalité et les axiomes de
fermeture. Par conséquent je sais que la loi d'association ou bien vaut
comme conséquence ou bien est en contradiction par rapport aux axiomes.
Si ce n'est pas en effet une conséquence des axiomes (à l'exclusion de
l'axiome de fermeture), elle ne peut valoir que sur le fondement d'un
nouvel axiome, mais cela est exclu. Nous posons donc maintenant la
question de savoir s'il y a des systèmes d'axiomes qui ne contiennent
pas d'axiomes de fermeture, et qui pourtant, sur le fondement de leur
nature particulière, font voir sur chaque proposition si elle
appartient à la sphère de leur déduction quant à la vérité et à la
fausseté.


Or c'est là précisément le cas de l'arithmétique. Toute arithmétique,
si étroite ◊s{443} soit-elle, qu'elle se rapporte aux nombres entiers
positifs ou aux nombres entiers réels ou aux nombres rationnels
positifs ou aux nombres rationnels en général, etc., toute arithmétique
est définie par un système d'axiomes tel que nous pouvons prouver en
nous fondant sur lui : toute proposition en général qui se construit
exclusivement à partir de concepts qui (pris axiomatiquement) sont
posés comme valables par les axiomes, toute proposition telle se situe
dans le domaine, c'est-à-dire qu'elle est ou bien une conséquence des
axiomes ou bien qu'elle est en contradiction avec eux. La preuve de
cette affirmation consiste en ceci que toute formation définie
d'opération est un nombre naturel et que tout nombre naturel se trouve
par rapport à tout autre dans un rapport de grandeur déterminable sur
le fondement des axiomes. Si donc une proposition a en général un sens
en vertu des axiomes, ou bien elle est valable en tant que conséquence
des axiomes ou bien elle n'est pas valable parce qu'elle entre en
contradiction avec les axiomes. Car il y a une équation numérique,
c'est-à-dire que dans l'exécution des opérations au sens des axiomes se
pose l'identité ◊code{a=a}. Toute équation numérique est vraie si
elle peut se transformer en une identité, sinon elle est fausse. Toute
formule algébrique est alors aussi décidée, car elle est décidée pour
tout cas numérique. On peut concevoir cela d'une manière générale : un
système formel d'axiomes qui ne contient pas d'axiome de fermeture
extrinsèque est dit en état de définition si toute proposition qui a en
général un sens par le système d'axiomes se situe ◊em{eo ipso} dans le
système d'axiomes, que ce soit comme conséquence, que ce soit comme
contradiction, et cela est confirmé partout où il est possible (le
montrer sur le fondement des axiomes que tout objet du domaine se
réduit au groupe des objets numériques pour lequel toute relation qui
est remplie identiquement est vraie et toute autre donc est fausse.
Partout où par exemple chaque proposition définie est réductible à une
égalité ou à ◊code{><} entre des objets idéaux, le système d'axiomes
est défini. On pourrait ici faire encore des distinctions. Si par
exemple ◊page["506"] il n'y a que des propositions d'une certaine
forme qui ont avec certitude cette propriété, on pourrait alors
désigner le système d'axiomes comme défini relativement aux
propositions de cette forme. Le passage par l'imaginaire est donc lié a
la condition de la définitude et cette situation partiellement
◊q{définie} suflit certes déjà. Donc toute proposition est rangée dans le
domaine par son sens ◊q{défini}, et l'élargissement doit donc consister
en ceci que, si les mêmes formes d'opération interviennent des deux
côtés, les résultats d'opération ◊s{444} ou bien appartiennent aux deux
domaines ou bien sont définis dans le domaine étroit de telle façon que
les définitions continuent à valoir dans le domaine large, à ceci près
que des cas d'opération possibles, mais non définis, sont adjoints dans
le domaine large à titre de définitions. Nous avons donc la situation
suivante :


◊ol{
  ◊li{Certains axiomes délimitent un domaine parfaitement dans la
  mesure où ce sont tous, par supposition même, des axiomes du
  domaine.}

  ◊li{Le système d'opération est susceptible d'élargissement dans la
  mesure où, pour les mêmes formes d'opération et de relation, d'autres
  axiomes sont encore possibles : il peut y avoir un domaine qui ait
  formellement les mêmes axiomes et encore en plus d'autres.}

  ◊li{Les anciens axiomes donnent aux opérations générales et à
  certaines formations particulières d'opération un sens déterminé.
  Ce qui n'est pas défini est, dans ce domaine étroit, exclu. Les
  nouveaux axiomes conservent tous ces axiomes, mais donnent un sens à
  des formations particulières d'opération qui auparavant n'étaient pas
  définies et qui auparavant étaient laissées ouvertes. Cela exige des
  axiomes supplémentaires. Le domaine large possède des axiomes élargis
  qui peuvent se partager de telle façon :

  ◊ol{
    ◊li{qu'on formule les axiomes de telle sorte qu'ils ne contiennent
    que des concepts étroits et que par là ils écartent aussi les
    axiomes spéciaux relatifs aux concepts élargis ;}

    ◊li{qu'on ajoute les axiomes supplémentaires.}}
  }
}


Toute proposition qui contient des concepts définis dans le premier
domaine appartient alors au domaine étroit. Nous savons alors ◊em{a
priori} que dans ce domaine elle est vraie et fausse, donc en vertu des
axiomes corrélatifs.


On dit donc que tout système d'axiomes est complet d'une manière
limitée si, en raison de ses définitions, il ne laisse ouvert aucun
résultat possible d'opération. On dit qu'un système d'axiomes est
complet d'une manière absolue s'il déploie la définition sur une telle
étendue qu'absolument aucun résultat possible d'opération ne reste
ouvert.

◊page["507"]

◊h2{II. --- ANNEXES}

◊h3{Annexe I : Notes sur une conférence de ◊em{Hilbert}}

◊em{Hilbert}, Société mathématique, 5-XI-01 (reproduit de mémoire) :


◊ol{
    ◊li{Un système d'axiomes est fermé (je ne me souviens
    malheureusement plus de l'expression de ◊em{Hilbert}) s'il
    détermine le domaine d'objets de pensée qu'il commande, de telle
    façon qu'aucun nouvel objet (d'un nouveau genre) ne peut être
    adjoint au domaine de telle sorte que ce système d'axiomes commande
    alors aussi le domaine élargi (ne peut pas être adjoint --- sans
    qu'une contradiction n'apparaisse).}

    ◊li{On peut alors essayer pour un système donné d'axiomes de le
    fermer de telle façon qu'on lui ajoute l'axiome de fermeture : il
    ne doit y avoir aucun objet ◊code{ε} d'un genre nouveau qui (en
    plus des autres objets) satisfasse au système d'axiomes. Mais en
    général cela ne se produit pas. Spécialement le système d'axiomes
    de l'arithmétique (d'après le dénombrement de ◊em{Hilbert}) à
    l'exclusion de l'axiome d'◊em{Archimède} (ou sans ceux qui se
    rapportent aux irrationnels) n'est pas fermé.}

    ◊li{Si on ajoute l'axiome d'◊em{Archimède}, le système de
    l'arithmétique est alors fermé. On peut démontrer que toute
    addition d'un nouvel objet ◊code{ε} entraînerait une
    contradiction.}
}


Et ensuite, dit ◊em{Hilbert}, on peut démontrer l'existence des nombres
irrationnels dans le domaine ; il est donc inutile de présupposer
d'emblée des processus infinis. Objection de ◊em{Hilbert}. --- Est-ce que
j'avais raison de dire que toute proposition qui ne contient que les
nombres entiers positifs est ou vraie ou fausse sur le fondement des
axiomes pour des nombres entiers positifs ? Il faudrait ajouter ici la
chose suivante : si nous affirmons qu'une proposition est décidée sur
le fondement des axiomes d'un domaine, que devons-nous utiliser en
outre en plus de ces axiomes ? Tout ce qui est logique. Qu'est-ce que
c'est ? Toutes les propositions qui sont exemptes de toute
particularité d'un domaine de connaissance, ce qui vaut indépendamment
de tout ◊q{axiome particulier}, de toute matière de connaissance.


Mais là on tombe dans un bel embarras ; dans le domaine de la logique
algorithmique, dans le domaine de la numération, dans le domaine de la
théorie combinatoire, dans le domaine de la théorie générale des
nombres de suite et des nombres ordinaux. Et finalement la théorie la
plus générale de la multiplicité n'est-elle pas elle-même purement
logique ?


Si les axiomes sont des établissements formels, ils me◊fn["hm"] déterminent le
domaine indéterminé d'une multiplicité par la forme de leur jonction et
de leur relation. Là sont les termes pour les matières d'un tel
domaine. Les axiomes ne sont pas ◊page["508"] des lois purement
logiques. Les théorèmes de la multiplicité ne le sont pas non plus. A
être purement logique, il n'y a que le rapport entre les axiomes et les
théorèmes ou la valeur des axiomes sur le fondement des théorèmes.

◊fndef["hm"]{Ne serait-ce pas "ils ◊strong{ne} déterminent ..." au lieu
de "ils ◊strong{me} déterminent ..." ? Coquille ? (Note personnelle)}


Je peux donc très bien dire : pour mettre en valeur une telle théorie,
je peux employer toute la logique pure, la sphère de toutes les
propositions qui ne sont pas déterminées matériellement. Naturellement,
pour ne pas tomber dans un cercle, je ne dois pas employer les
propositions de rapport qui se rattachent au rapport des axiomes et des
théorèmes des formes de théories présentes. Autrement tous les autres.


Or, à vrai dire, un certain ordre doit être établi pour que ce qui est
plus ◊s{446} facile ne soit pas démontré au moyen de ce qui est plus
difficile. Si nous avions une table de tous les axiomes au sens
véritable en tant que propositions fondamentales de toute proposition
valant avant toute matière, ce serait là la sphère dont on pourrait
disposer absolument.


Idée d'un ordre des théories du genre logique pur, d'après quoi est
développée une première théorie, en tant qu'elle n'utilise pas d'autres
propositions tirées d'autres théories, en mettant les choses au pis les
propositions fondamentales ; puis une seconde théorie qui est un peu
plus élaborée et qui emploie tout au plus les propositions de la
première théorie, au point où elle en est rendue. Alors la première
théorie peut à son tour être développée plus largement, en employant
peut-être quelque chose des dernières propositions déduites, etc.


◊q{Défini} ? Je ne peux ajouter aux ◊q{axiomes}, c'est-à-dire aux
formes de proposition fondamentale qui sont prises hypothétiquement
pour fondement, aucun nouvel ◊q{axiome}, aucune nouvelle fixation de
matière et de sens, sans provoquer une contradiction. Ou bien : toute
proposition qui emploie les concepts définis du domaine et en outre
seulement des concepts absolus, c'est-à-dire des concepts tels qu'ils
soient purement logiques, qu'ils soient valables dans tout domaine
parce qu'ils ne contiennent rien d'une matière de la connaissance, mais
que d'autre part ils ne soient pas des concepts qui définissent
formellement le domaine, donc toute proposition composée à partir de
concepts purement logiques et des concepts qui définissent le domaine,
est dans le domaine vraie ou fausse.


D'où sais-je cela ? Toute liaison directe d'opération, autant de fois
qu'elle contient chaque opération, est égale à un nombre. Cela est
démontré. Donc naturellement toute proposition qui affirme que deux
expressions algébriques générales fermées sont égales et de même toute
équation construite par mélange à partir de signes algébriques et
numériques doivent être nécessairement vraies ou fausses sur le
fondement des axiomes. En effet : quel que soit le groupe de nombres
que je pose dans une formule pour les ◊code{a}, ◊code{b}, ◊code{c},
..., ◊code{p}, il y a toujours ◊page["509"] un nombre déterminé pour
chaque côté de l'équation. Et cela sur le fondement des axiomes. S'il
est égal pour toutes les combinaisons de nombres possibles, alors la
formule est valable ; sinon elle ne l'est pas. Peu m'importe la manière
dont je démontre le caractère formel. Il suffit que je puisse démontrer
à partir des axiomes que toute expression est un nombre, et ainsi il
est évident que deux expressions présentent ou bien toujours le même
nombre ou bien des nombres différents.


◊ol[#:start "2"]{
  ◊li{◊fn["wtf"]Equation de détermination. Ou bien une équation est
  remplie par une expression, par n'importe quel nombre du domaine, ou
  bien elle ne l'est pas. Si nous nous représentons tout nombre comme
  substitué, alors est valable la proposition selon laquelle pour
  chacun la valeur du côté gauche de l'équation et de même du côté
  droit est déterminée ; il est donc objectivement déterminé si
  l'équation a ou non dans le domaine une solution. Le fait qu'elle en
  ait ou qu'elle n'en ait pas une ne peut pas être laissé ouvert.}

◊fndef["wtf"]{Ou est le numero 1 ?! (Note personnelle)}

  ◊li{Equations avec des indéterminés. Cela ne donne rien de nouveau.}

  ◊li{Problèmes qui proviennent du fait que les nombres sont des objets
  de dénombrements, qu'on demande combien de fois intervient telle ou
  telle valeur dans tel ou tel domaine, etc. Dans ces problèmes on
  prend en considération les axiomes du domaine et d'autre part les
  propositions de la théorie des numérations. En tout cas, il est bien
  possible et il est certain qu'ici ce ne sont pas simplement les
  axiomes qui sont employés, mais aussi des propositions sur les
  numérations, peut-être aussi des propositions de la théorie
  combinatoire, etc. Mais pour commencer il peut aussi se faire que
  de telles propositions soient utilisées dans le domaine primitif et
  qu'elles ne soient pas exclues. Et 2) ces propositions sont
  objectivement vraies indépendamment du domaine donné. Mais ce qui
  nous importe, ce n'est pas que teut puisse se démontrer à partir des
  simples axiomes du domaine donné, mais c'est que j'aie le droit de
  dire que, si ces axiomes sont établis, comme conventions qui se
  rapportent à des matières laissées dans un état d'indétermination,
  qu'alors on puisse dire : toute ◊q{proposition du domaine} est vraie
  ou fausse sur le fondement des axiomes.}
}


Naturellement toute proposition effective est ou vraie ou fausse. Mais
ici il s'agit de ceci : si ◊code{M} est défini par tel ou tel axiome,
est-ce que la proposition à l'intérieur de ◊code{M}, c'est-à-dire la
proposition ◊code{P} qui se range sous ◊code{M}, est ou vraie ou fausse
◊code{P} Si les ◊code{M} sont valables, alors ◊code{P} ou non-◊code{P}
est valable, au cas où elle ne reste pas indéterminée par ◊code{M},
mais toujours avec le secours des propositions purement logiques
absolument valables.


1) Le problème récapitulé :

a) celui de la libre liaison des expressions imaginaires dans des domaines réels ;

b) le principe formel.

◊page["510"]

2) L'idée de la solution :

a) solution singulière et solution particulière. --- je sais que
certains groupes de proposition sont décidés a priori par les axiomes ;

b) solution universelle : Condition nécessaire et suffisante : le
système d'axiomes doit être ◊q{défini}, c'est-à-dire qu'il définit une
multiplicité de telle façon que, pour chaque proposition employant les
concepts définis et tout au plus encore des concepts purement logiques,
il est déterminé objectivement qu'elle vaut ou qu'elle ne vaut pas pour
cette multiplicité, au lieu de rester indéterminée.


◊h2{Annexe 2:  Résumé fait par Husserl d'une correspondance échangée entre ◊em{Hilbert} et ◊em{Frege}}

◊em{Frege} dans une lettre à ◊em{Hilbert} 27-XII-99: Les propositions mathématiques se divisent en 1) définitions, 2) toutes les autres propositions.


◊bq{Toute définition contient un signe (une expression, un mot) qui
auparavant n'avait pas encore de signification et auquel une
signification n'est donnée que par la définition. Après cela, on peut à
partir de la définition constituer une proposition compréhensible
d'elle-même qui doit être utilisée comme un axiome. Mais en cela il
faut établir que dans la définition rien n'est affirmé, mais quelque
chose établi. On ne posera donc jamais comme définition quelque chose
qui a besoin d'une démonstration ou dont la vérité autrement doit être
fondée. J'utilise le signe d'égalité comme signe d'identité.}


Si ◊code{+}, ◊code{1}, ◊code{3} sont déjà expliqués, alors ◊code{3+1=4}
est une définition de ◊code{4}. A présent, l'équation ◊code{3+1=4} est
◊q{vraie d'elle-même ct n'a plus besoin d'être démontrée}.


◊s{448} ◊em{Frege} fait une distinction entre les définitions et les
propositions d'explication, mais il ne voudrait pas ranger celles-ci
dans les mathématiques elles-mêmes, il voudrait les renvoyer dans le
◊q{vestibule}, dans une propédeutique. Dans leur cas aussi il s'agit
d'établir la signification d'un signe (mot), ◊qs{elles contiennent donc
elles aussi quelque chose dont la signification ne peut pas être
présupposée comme complètement et indubitablement connue, puisque c'est
là quelque chose qui est utilisé dans le langage de la vie courante
d'une façon fluctuante et plurivoque. Si dans un tel cas la
signification à attribuer est logiquement simple, on ne peut donner de
cela aucune définition proprement dite, mais on doit se contenter de
rejeter les significations qui se présentent dans l'usage de la langue,
mais qui ne sont pas voulues, ce qui suppose pour être compris un
interlocuteur de bonne volonté et capable de deviner. De telles
propositions d'éclaircissement ne peuvent pas être utilisées dans les
démonstrations de la même façon que dans les} ◊page["511"]
◊qe{définitions, puisqu'il leur manque la précision nécessaire à cela},
et voilà pourquoi ◊em{Frege} voudrait les renvoyer dans 1e
◊q{vestibule}.


◊em{Frege} utilise bien ici la distinction des explications comme
celles qui sont données pour le point ct les autres ◊q{éléments} en
géométrie et pour le ◊code{1} en arithmétique, par opposition aux
définitions comme celles pour les autres numérations ou pour
◊code{a/b}, ◊code{a◊sup{n}}, etc.


Les concepts élémentaires au moyen desquels on définit, et la
définition elle-meme.


Axiomes : ◊qs{Propositions qui sont vraies, mais qui ne sont pas
démontrées, puisque leur connaissance découle d'une source de
connaissance qui est entièrement différente de la source logique et que
l'on peut nommer intuition de l'espace (l).}


◊qe{Il résulte de la vérité des axiomes qu'ils ne se contredisent pas les
uns les autres ; cela n'a donc pas besoin d'autre preuve. S'ils le font,
c'est qu'ils sont fautifs. Les propositions fondamentales par
lesquelles on définit doivent être constituées de telle sorte que si on
leur obéit on ne peut pas rencontrer de contradiction.}


A ceci je fais 1a remarque suivante. ◊em{Frege} ne comprend pas le sens
de la fondation de la géométrie ◊q{axiomatique} ◊em{hilbertienne},
c'est-à-dire qu'il s'agit d'un système purement formel de conventions
qui coïncide, quant à la forme des théories, avec le système ◊em{euclidien}.


Quand sommes-nous certains de ne pas avoir introduit la matière d'un
domaine de connaissance et d'avoir raisonné effectivement d'une manière
purement logique ? Quand sommes nous certains d'avoir tiré dans les
propositions fondamentales préalables toutes les connaissances qui
découlent de la matière du domaine, qui sont suffisantes pour le
système de la théorie entière et de ses théorèmes ? Ce n'est que quand
nous concevons la matière symboliquement, quand nous nous élevons à un
système formel, à une forme des théories qui est définie par les formes
de proposition des propositions fondamentales matérielles du domaine.
Ce n'est qu'ainsi que nous pouvons résoudre les questions de la
dépendance et de l'indépendance.



◊s{449} Dans un système déductif formel (algorithme), il n'y a pas
d'◊q{explication} au sens de ◊em{Frege}. Dans les soubassements des
définitions, aux signes élémentaires correspondent les places d'une
explication possible. Aux formes générales de proposition correspondent
les axiomes. Aux formes de proposition qui définissent d'une façon
opératoire des valeurs numériques déterminées, correspondent des
définitions, et des définitions réelles, qui ont en même temps le
caractère de propositions d'existence. De simples définitions, il n'y
en a pas dans les soubassements. Donc les soubassements axiomatiques
définissent le domaine formel. Toutefois


◊page["512"]


nous distinguons aussi en eux entre axiomes ou propositions
fondamentales (quoique là absolument rien d'axiomatique nc soit valable
au sens logique) et définitions. Plus précisément, nous distinguons
entre lois fondamentales, lois de relation, propositions axiomatiques
d'existence de sorte générale et de sorte spéciale et définitions.


De même nous distinguons dans le domaine formel, dans la forme des
théories, entre propositions fondamentales (◊em{Grundsätze}) et
théorèmes (◊em{Lehrsätze}), quoique les propositions fondamentales ne
soient absolument pas des propositions, ni de même les théorèmes des
propositions effectives, mais seulement des formes de propositions
dérivées (◊em{Nachsätze}) hypothétiques.


Mais il est évident que maintenant axiome veut dire : une proposition
qu'il serait possible d'établir comme axiome dans un domaine de savoir
dont la forme théorique serait la forme présente ; de même proposition
fondamentale : une proposition qui vaudrait comme point de départ des
déductions théoriques ; théorème, une proposition démontrée à
l'intérieur de la théorie.


Réponse de ◊em{Hilbert}.


La proposition : ◊q{il résulte de la vérité des axiomes qu'ils ne se
contredisent pas les uns les autres}, aurait beaucoup intéressé
◊em{Hilbert}, puisqu'en effet, depuis le temps qu'il pense, écrit, fait
des conférences sur de telles choses, il dit exactement le contraire :
◊q{Si les axiomes posés arbitrairement ne se contredisent pas les uns
les autres ..., c'est qu'ils sont vrais, c'est que les choses définies
par les axiomes existent. C'est là pour moi le critère de la vérité et
de l'existence. La proposition : ◊q{Toute équation a une racine} est
vraie} et cela implique que la démonstration de la racine existe, de
même que la proposition, ajoutée comme axiome aux axiomes de
l'arithmétique, ne peut iamais conduire à une contradiction. En ce sens
nous parlons ◊q{de l'existence des nombres réels}, de la
◊q{non-existence} du système de toutes les puissances.



Le point en géométrie. Sa définition complète dans le système complet
de tous les axiomes. Tout axiome apporte une contribution à la
définition. Tout nouvel axiome change donc le concept de point : dans
les géométries ◊em{euclidienne}, ◊em{non euclidienne},
◊em{archimédienne}, ◊em{non archimédienne}, il est à chaque fois
quelque chose d'autre. Après l'établissement parfaitement complet et
univoque du concept, l'introduction de n'importe quel axiome est
quelque chose d'absolument interdit et d'illogique --- faute qui est
souvent commise par les physiciens, du fait qu'ils ajoutent par-ci
par-là des axiomes constamment nouveaux, et, comme ils ne confrontent
pas ceux-ci avec les anciens, cela donne une pure stupidité.



◊s{450} ◊bqs{C'est précisément le procédé qui consiste à constituer un
axiome, à en appeler à la vérité (?) de celui-ci (le point
d'interrogation est de ◊em{Hilbert}) et à en conclure}


◊page["513"]


◊qe{que celui-ci s'accorde avec les concepts définis, qui est la source
éternelle des erreurs et des malentendus. C'est précisément cela que
j'ai voulu éviter dans le ◊em{Festschrift}◊fn["na"].}


◊fndef["na"]{D. HILBERT, Grundlagen der Geometrie (I. Aufl.),
◊em{Festschrift zur Feier der Enthùllung der Gauss-Weber-Denkmals in
Gôttingen,} Leipzig, 1899. (Note de l'éditeur.)}


◊blockquote{Oui, c'est bien évident, toute théorie n'est qu'un
cloisonnage (schéma) de concepts avec des rapports nécessaires, où les
éléments fondamentaux peuvent être pensés d'une manière quelconque, par
exemple posés comme point, amour, loi, cheminée, et ensuite tous les
axiomes remplis, et alors pour ces choses est valable le théorème de
◊em{Pythagore}.}



◊blockquote{Toute théorie peut être appliquée à un nombre infini de
systèmes d'éléments fondamentaux. Il n'y a qu'à appliquer une
transformation réversible univoque et à stipuler que les axiomes
correspondants pour les choses transformées doivent être les mêmes
(comme par exemple cela arrive dans le principe de dualité et dans mes
démonstrations d'indépendance).}


◊blockquote{Pour appliquer une théorie au monde des phénomènes, il faut
un certain degré de tact et de bonne volonté. Point un corps le plus
petit possible, ligne un corps le plus long possible, par exemple des
rayons. Aussi vérification des propositions pas trop pénible.}


◊blockquote{D'ailleurs, plus une théorie est largement développée et
finement ramifiée, plus est évidente sa manière de s'appliquer au monde
des phénomènes. Il faudrait sans doute un certain degré de mauvaise
volonté si l'on voulait appliquer par exemple les propositions fines de
la théorie des surfaces ou les propositions de la théorie de
l'électricité de Maxwell à d'autres phénomènes que ceux qui sont
visés.}


Ainsi ◊em{Hilbert}.


Frege, 6-1-1900 :


Remerciements pour l'accueil de la conférence de Munich (Sur les
axiomes de l'arithmétique).


◊bqs{Il semble que vous vouliez séparer complètement la géométrie de
l'intuition de l'espace et en faire une science purement logique à
l'égal de l'arithmétique (l). Les axiomes, qui ordinairement, en tant
qu'ils sont garantis par l'intuition de l'espace, sont placés au
fondement de toute la construction, doivent, si je vous comprends bien,
être introduits en même temps dans chaque théorème comme conditions,
non pas exprimées d'une manière pleinement littérale, mais renfermées}


◊page["514"]


dans les mots ◊q{point}, ◊q{droite}, etc. Vous voulez démontrer
l'indépendance mutuelle et l'absence de contradiction de certaines
présuppositions (axiomes), l'impossibilité de démontrer certaines
propositions à partir de certaines présuppositions (axiomes). D'un
point de vue logique tout à fait général, c'est toujours le même cas :
il faut montrer l'absence de contradiction de certaines déterminations.
D est la conséquence de ◊code{A}, ◊code{B} et ◊code{C} veut dire la
même chose que le fait qu'ait lieu ◊code{A}, ◊code{B} et ◊code{C} ne se
trouve pas en contradiction avec le fait que n'ait pas lieu ◊code{D}.
◊code{A}, ◊code{B}, C sont indépendants les uns des autres = ◊code{B}
n'est pas une conséquence de ◊code{A}, ◊code{C} ; ◊code{C} n'est pas
une conséquence de ◊code{A}, ◊code{B} ; ◊code{A} n'est pas une conséquence
de ◊code{A}, ◊code{C}◊fn["err"].


◊bqs{Mais quel moyen avons-nous de démontrer que certaines propriétés,
certaines exigences (ou tout autre nom qu'on voudra dire) ne se
trouvent pas en contradiction les unes avec les autres ?}


◊qe{La seule chose qui m'est connue, c'est ceci : indiquer un objet qui a
ces propriétés ensemble, montrer un cas dans lequel ces exigences sont
remplies ensemble. Démontrer d'une autre façon l'absence de
contradiction, ce ne devrait pas être possible.}



◊fndef["err"]{Le texte depuis ◊q{◊code{D} est la conséquence ...
jusqu'à ... conséquence de ◊code{A}, ◊code{C}} est retranscrit d'une
manière fausse par Husserl ; le voici sous la forme correcte :
◊q{◊code{D} n'est pas une conséquence de ◊code{A}, {B}, ◊code{C}} veut
dire la même chose que ◊q{le fait qu'ait lieu ◊code{A}, ◊code{B} et
◊code{C} ne se trouve pas en contradiction avez le fait que n'ait pas
lieu ◊code{D}}. ◊q{◊code{A}, ◊code{B}, ◊code{C} sont indépendants les
uns des autres} signifie : ◊q{◊code{C} n'est pas une conséquence de
◊code{A} et ◊code{B} ; ◊code{B} n'est pas une conséquence de ◊code{A}
et ◊code{C} ; et ◊code{A} n'est par une conséquence de ◊code{B} et
◊code{C}}. » (Note de l'éditeur.)}



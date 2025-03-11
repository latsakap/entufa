###THE BIG DICTIONARY###

possessive_suffix -> ['] "s" {% 
function(data) {
return {id: data[0], node: {type: "suffix"}, probability: 502}
}%}

#a
A -> "a" {% 
function(data) {
return {id: data[0], node: {type: "article"}, probability: 2150}
}%}

#able
copula_verb_TO -> "able" {% 
function(data) {
return {id: data[0], node: {type: "adjective", article: "an", animacy: "inanimate"}, probability: 32}
}%}

#acid
AN_noun_sI -> "acid" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "inanimate"}, probability: 2}
}%}

AN_noun_uI -> "acid" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "uncountable", animacy: "inanimate"}, probability: 2}
}%}

#acids
AN_noun_pI -> "acids" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "inanimate"}, probability: 1}
}%}

#acidic
AN_adjective_I -> "acidic" {% 
function(data) {
return {id: data[0], node: {type: "adjective", article: "an", animacy: "inanimate"}, probability: 1}
}%}

#all
ALL -> "all" {% 
function(data) {
return {id: data[0], node: {type: "quantifier"}, probability: 108}
}%}

quantifier -> "all" {% 
function(data) {
return {id: data[0], node: {type: "quantifier"}, probability: 108}
}%}

AN_adverb_C -> "all" {% 
function(data) {
return {id: data[0], node: {type: "adverb", article: "an", animacy: "concept"}, probability: 21}
}%}


#am
BE_1s_pres -> "am" {% 
function(data) {
return {id: data[0], node: {type: "copula", person: 1, number: "singular", tense: "present"}, probability: 18}
}%}

#an
AN -> "an" {% 
function(data) {
return {id: data[0], node: {type: "article"}, probability: 398}
}%}

#and
AND -> "and" {% 
function(data) {
return {id: data[0], node: {type: "coorinating conjunction"}, probability: 2844}
}%}

#angle
AN_noun_sI -> "angle" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "inanimate"}, probability: 1}
}%}
#verb

#angles
AN_noun_pI -> "angles" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "inanimate"}, probability: 1}
}%}
#verb

#angry
AN_adjective_A -> "angry" {% 
function(data) {
return {id: data[0], node: {type: "adjective", article: "an", animacy: "animate"}, probability: 2}
}%}

#ant
AN_noun_sA -> "ant" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "animate"}, probability: 1}
}%}

#ants
AN_noun_pA -> "ants" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "animate"}, probability: 1}
}%}

#apple
AN_noun_sI -> "apple" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "inanimate"}, probability: 4}
}%}

#apples
AN_noun_pI -> "apples" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "inanimate"}, probability: 1}
}%}

#as
AS_comparative -> "as" {%
function(data) {
return {id: data[0], node: {type: "adverb"}, probability: 100}
}%}
preposition_ND -> "as" {%
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 70}
}%}

preposition_VD -> "as" {%
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 70}
}%}

subclause_conjunction_S -> "as"  {%
function(data) {
return {id: data[0], node: {type: "subordinating conjunction"}, probability: 198}
}%}

#arch
AN_noun_sI -> "arch" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "inanimate"}, probability: 1}
}%}
#verb

#arches
AN_noun_pI -> "arches" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "inanimate"}, probability: 1}
}%}
#verb

#are
BE_1p_pres -> "are" {% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "present"}, probability: 141}
}%}

BE_2s_pres -> "are"{% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "present"}, probability: 141}
}%}

BE_2p_pres -> "are"{% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "present"}, probability: 141}
}%}

BE_3p_pres -> "are"{% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "present"}, probability: 141}
}%}

#arm
AN_noun_sI -> "arm" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "inanimate"}, probability: 4}
}%}
#verb

#arms
AN_noun_pI -> "arms" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "inanimate"}, probability: 5}
}%}
#verb

#army
AN_noun_sA -> "army" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "animate"}, probability: 11}
}%}

#armies
AN_noun_pA -> "armies" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "animate"}, probability: 1}
}%}

#at
preposition_ND -> "at" {%
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 468}
}%}

#aunt
AN_noun_sA -> "aunt" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "singular", animacy: "animate"}, probability: 1}
}%}

#aunts
AN_noun_pA -> "aunts" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "an", number: "plural", animacy: "animate"}, probability: 1}
}%}

#automatic
AN_adjective_I -> "automatic" {% 
function(data) {
return {id: data[0], node: {type: "adjective", article: "an", animacy: "inanimate"}, probability: 3}
}%}

#baby
A_noun_sA -> "baby" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "singular", animacy: "animate"}, probability: 5}
}%}
#verb

#babies
A_noun_pA -> "babies" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "plural", animacy: "animate"}, probability: 1}
}%}
#verb

#bag
A_noun_sI -> "bag" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "singular", animacy: "inanimate"}, probability: 2}
}%}
#verb

#bags
A_noun_pI -> "bags" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "plural", animacy: "inanimate"}, probability: 1}
}%}
#verb

#ball
A_noun_sI -> "ball" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "singular", animacy: "inanimate"}, probability: 4}
}%}

#balls
A_noun_pI -> "balls" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "plural", animacy: "inanimate"}, probability: 1}
}%}

#band
A_noun_sI -> "band"
A_noun_sA -> "band"

#bands
A_noun_pI -> "bands"
A_noun_pA -> "bands"

#basin
A_noun_sI -> "basin"

#basins
A_noun_pI -> "basins"

#basket
A_noun_sI -> "basket"

#baskets
A_noun_pI -> "baskets"

#bath
A_noun_sE -> "bath" 

#baths
A_noun_pE -> "baths" 

#bathroom
A_noun_sI -> "bathroom"

#bathrooms
A_noun_pI -> "bathrooms"

#be
BE -> "be" {% 
function(data) {
return {id: data[0], node: {type: "copula"}, probability: 726}
}%}

#beautiful
A_adjective_C -> "beautiful"

#bed
A_noun_sI -> "bed"

#beds
A_noun_pI -> "beds"

#bee
A_noun_sA -> "bee"

#bees
A_noun_pA -> "bees"

#bell
A_noun_sI -> "bell"

#bells
A_noun_pI -> "bells"

#been
BE_perf -> "been"

#being
BE_ING -> "being"

#berry
A_noun_sI -> "berry"

#berries
A_noun_pI -> "berries"

#bird
A_noun_sA -> "bird"

#birds
A_noun_pA -> "birds"

#black
A_adjective_I -> "black"

#blade
A_noun_sI -> "blade"

#blades
A_noun_pI -> "blades"

#board
A_noun_sI -> "board"
#verb

#boards
A_noun_pI -> "boards"
#verb

#boat
A_noun_sI -> "boat"

#boats
A_noun_pI -> "boats"

#boiling
A_adjective_I -> "boiling"

#bone
A_noun_sI -> "bone"

#bones
A_noun_pI -> "bones"

#book
A_noun_sI -> "book"
#verb

#books
A_noun_pI -> "books"
#verb

#boot
A_noun_sI -> "boot"
#verb

#boots
A_noun_pI -> "boots"

#bottle
A_noun_sI -> "bottle"
#verb

#bottles
A_noun_pI -> "bottles"
#verb

#box
A_noun_sI -> "box"
#verb

#boxes
A_noun_pI -> "boxes"
#verb

#boy
A_noun_sA -> "boy"

#boys
A_noun_pA -> "boys"

#brain
A_noun_sI -> "brain"

#brains
A_noun_pI -> "brains"

#brake
A_noun_sI -> "brake"
#verb

#brakes
A_noun_pI -> "brakes"
#verb

#branch
A_noun_sI -> "branch"
#verb

#branches
A_noun_pI -> "branches"
#verb

#brick
A_noun_sI -> "brick"

#bricks
A_noun_pI -> "bricks"

#bridge
A_noun_sI -> "bridge"
#verb

#bridges
A_noun_pI -> "bridges"
#verb

#bright
A_adjective_I -> "bright"

#broken
A_adjective_I -> "broken"

#brown
A_adjective_I -> "brown"

#brush
A_noun_sI -> "brush"
#verb

#brushes
A_noun_pI -> "brushes"
#verb

#bucket
A_noun_sI -> "bucket"

#buckets
A_noun_pI -> "buckets"

#bulb
A_noun_sI -> "bulb"

#bulbs
A_noun_pI -> "bulbs"

#but
BUT -> "but"

#button
A_noun_sI -> "button"
#verb

#buttons
A_noun_pI -> "buttons"
#verb

#by
preposition_NI -> "by" {%
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 633}
}%}

#cake
A_noun_sI -> "cake"

#cakes
A_noun_pI -> "cakes"

#camera
A_noun_sI -> "camera"

#cameras
A_noun_pI -> "cameras"

#car
A_noun_sI -> "car"

#cars
A_noun_pI -> "cars"

#card
A_noun_sI -> "card"

#cards
A_noun_pI -> "cards"

#cart
A_noun_sI -> "cart"
#verb

#carts
A_noun_pI -> "carts"
#verb

#cat
A_noun_sA -> "cat"

#cats
A_noun_pA -> "cats"

#chain
A_noun_sI -> "chain"
#verb

#chains
A_noun_pI -> "chains"
#verb

#cheap
A_adjective_I -> "cheap"

#cheese
A_noun_uI -> "cheese"
A_noun_sI -> "cheese"

#cheeses
A_noun_pI -> "cheeses"

#chemical
A_noun_sI -> "chemical"
A_adjective_I -> "chemical"

#chemicals
A_noun_pI -> "chemicals"

#chest
A_noun_sI -> "chest"

#chests
A_noun_pI -> "chests"

#chess
A_noun_uC -> "chess"

#chief
A_noun_sA -> "chief"
A_adjective_C -> "chief"

#chin
A_noun_sI -> "chin"

#chins
A_noun_pI -> "chins"

#church
A_noun_sI -> "church"
A_noun_uC -> "church"

#churches
A_noun_pI -> "churches"

#circle
A_noun_sI -> "circle"
#verb

#circles
A_noun_pI -> "circles"
#verb

#clean
A_adjective_I -> "clean"
#verb

#clear
A_adjective_C -> "clear"

#clock
A_noun_sI -> "clock"
#verb

#clocks
A_noun_pI -> "clocks"
#verb

#cloud
A_noun_sI -> "cloud"

#clouds
A_noun_pI -> "clouds"

#coat
A_noun_sI -> "coat"
#verb

#coats
A_noun_pI -> "coats"
#verb

#collar
A_noun_sI -> "collar"

#collars
A_noun_pI -> "collars"

#comb
A_noun_sI -> "comb"
#verb

#combs
A_noun_pI -> "combs"
#verb

#common
A_adjective_C -> "common"

#complex
A_noun_sI -> "complex"
A_adjective_C -> "complex"

#complexes
A_noun_pI -> "complexes"

#conscious
A_adjective_A -> "conscious"

#cord
A_noun_sI -> "cord"

#cords
A_noun_pI -> "cords"

#cow
A_noun_sA -> "cow"

#cows
A_noun_pA -> "cows"

#cup
A_noun_sI -> "cup"
#verb

#cups
A_noun_pI -> "cups"
#verb

#curtain
A_noun_sI -> "curtain"

#curtains
A_noun_pI -> "curtains"

#cushion
A_noun_sI -> "cushion"
#verb

#cushions
A_noun_pI -> "cushions"
#verb

#cut
A_adjective_I -> "cut"
#verb

#deep
A_adjective_C -> "deep"

#dependent
A_adjective_C -> "dependent"
copula_verb_ON -> "dependent"

#did
DO_1s_past -> "did"
DO_1p_past -> "did"
DO_2s_past -> "did"
DO_2p_past -> "did"
DO_3s_past -> "did"
DO_3p_past -> "did"

#do
DO -> "do"
DO_1s_pres -> "do"
DO_1p_pres -> "do"
DO_2s_pres -> "do"
DO_2p_pres -> "do"
DO_3p_pres -> "do"

#does
DO_3s_pres -> "does"

#dog
A_noun_sA -> "dog"

#dogs
A_noun_pA -> "dogs"

#doing

#done

#dooler
A_noun_sA -> "dooler" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "singular", animacy: "animate", person: 3}, probability: 1}
}%}

#doolers
A_noun_pA -> "doolers" {% 
function(data) {
return {id: data[0], node: {type: "noun", article: "a", number: "plural", animacy: "animate", person: 3}, probability: 1}
}%}

#door
A_noun_sI -> "door"

#doors
A_noun_pI -> "doors"

#drain
A_noun_sI -> "drain"
#verb

#drains
A_noun_pI -> "drains"
#verb

#drawer
A_noun_sI -> "drawer"

#drawers
A_noun_pI -> "drawers"

#dress
A_noun_sI -> "dress"
#verb

#dresses
A_noun_pI -> "dresses"
#verb

#drop
A_noun_sI -> "drop"
#verb

#drops
A_noun_pI -> "drops"
#verb

#ear
AN_noun_sI -> "ear"

#early
AN_adjective_C -> "early"

#ears
AN_noun_pI -> "ears"

#egg
AN_noun_sI -> "egg"

#eggs
AN_noun_pI -> "eggs"

#elastic
AN_noun_uI -> "elastic"
AN_adjective_I -> "elastic"

#electric
AN_adjective_I -> "electric"

#electricity
AN_noun_C -> "electricity"

#electronic
AN_adjective_I -> "electronic"

#electronics
AN_noun_pI -> "electronics"

#engine
AN_noun_sI -> "engine"

#engines
AN_noun_pI -> "engines"

#eye
AN_noun_sI -> "eye"
#verb

#eyes
AN_noun_pI -> "eyes"
#verb

#equal
AN_adjective_C -> "equal"
copula_verb_TO -> "equal"

#face
A_noun_sI -> "face"
#verb

#faces
A_noun_pI -> "faces"
#verb

#farm
A_noun_sI -> "farm"
#verb

#farms
A_noun_pI -> "farms"
#verb

#fat
A_noun_sI -> "fat"
A_noun_uI -> "fat"
A_adjective_I -> "fat"

#fats
A_noun_pI -> "fats"

#feather
A_noun_sI -> "feather"

#feathers
A_noun_pI -> "feathers"

#fertile
A_adjective_I -> "fertile"

#finger
A_noun_sI -> "finger"
#verb

#fingers
A_noun_pI -> "fingers"
#verb

#first
A_adjective_C -> "first"

#fish
A_noun_sI -> "fish"
A_noun_pI -> "fish"
#verb

#fishes
A_noun_pI -> "fishes"
#verb

#fixed
A_adjective_I -> "fixed"
copula_verb_TO -> "fixed"

#flag
A_noun_sI -> "flag"
#verb

#flags
A_noun_pI -> "flags"
#verb

#flat
A_adjective_I -> "flat"

#floor
A_noun_sI -> "floor"

#floors
A_noun_pI -> "floors"

#fly
A_noun_sI -> "fly"
#verb

#flies
A_noun_pI -> "flies"
#verb

#foot
A_noun_sI -> "foot"

#feet
A_noun_pI -> "feet"

#fork
A_noun_sI -> "fork"
#verb

#forks
A_noun_pI -> "forks"
#verb

#fowl
A_noun_sA -> "fowl"
A_noun_pA -> "fowl"

#fowls
A_noun_pA -> "fowls"

#frame
A_noun_sI -> "frame"
#verb

#frames
A_noun_pI -> "frames"
#verb

#free
A_adjective_I -> "free"
copula_verb_OF -> "free"

#frequent
A_adjective_E -> "frequent"

#from
preposition_ND -> "from"

#for
preposition_ND -> "for" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 949}
}%}

#full
A_adjective_I -> "full"
copula_verb_OF -> "full"

#garden
A_noun_sI -> "garden"
#verb

#gardens
A_noun_pI -> "gardens"
#verb

#general
A_noun_sA -> "general"
A_adjective_C -> "general"

#generals
A_noun_pA -> "generals"

#get
verb_2o_I_infinitive -> "get"
verb_2o_1s_pres -> "get"
verb_2o_1p_pres -> "get"
verb_2o_2s_pres -> "get"
verb_2o_2p_pres -> "get"
verb_2o_3pI_pres -> "get"

#gets
verb_2o_3sI_pres -> "gets"

#girl
A_noun_sA -> "girl"

#girls
A_noun_pA -> "girls"

#glove
A_noun_sI -> "glove"

#gloves
A_noun_pI -> "gloves"

#goat
A_noun_sA -> "goat"

#goat
A_noun_pA -> "goats"

#good
A_noun_sI -> "good"
A_adjective_C -> "good"

#goods
A_noun_pI -> "goods"

#got
verb_2o_1s_past -> "got"
verb_2o_1p_past -> "got"
verb_2o_2s_past -> "got"
verb_2o_2p_past -> "got"
verb_2o_3sI_past -> "got"
verb_2o_3pI_past -> "got"

#gray
A_adjective_I -> "gray"

#great
A_adjective_C -> "great"

#grey
A_adjective_I -> "grey"

#gun
A_noun_sI -> "gun"

#gun
A_noun_pI -> "guns"

#had
HAVE_1s_past -> "had"
HAVE_1p_past -> "had"
HAVE_2s_past -> "had"
HAVE_2p_past -> "had"
HAVE_3s_past -> "had"
HAVE_3p_past -> "had"

verb_2o_1s_past -> "had"
verb_2o_1p_past -> "had"
verb_2o_2s_past -> "had"
verb_2o_2p_past -> "had"
verb_2o_3sI_past -> "had"
verb_2o_3pI_past -> "had"

#hair
A_noun_sI -> "hair"
A_noun_uI -> "hair"

#hairs
A_noun_pI -> "hairs"

#hammer
A_noun_sI -> "hammer"
#verb

#hammers
A_noun_pI -> "hammers"
#verb

#hand
A_noun_sI -> "hand"
#verb

#hands
A_noun_pA -> "hands"
#verb

#hanging
A_adjective_I -> "hanging"

#happy
A_adjective_A -> "happy"

#hard
A_adjective_C -> "hard"

#has
HAVE_3s_pres -> "has"
verb_2o_3sI_pres -> "has"

#have
HAVE -> "have"
HAVE_1s_pres -> "have"
HAVE_1p_pres -> "have"
HAVE_2s_pres -> "have"
HAVE_2p_pres -> "have"
HAVE_3p_pres -> "have"
verb_2o_I_infinitive -> "have"
verb_2o_1s_pres -> "have"
verb_2o_1p_pres -> "have"
verb_2o_2s_pres -> "have"
verb_2o_2p_pres -> "have"
verb_2o_3pI_pres -> "have"

#hat
A_noun_sI -> "hat"

#hats
A_noun_pI -> "hats"

#he
3ssM -> "he"

#head
A_noun_sI -> "head"
#verb

#head
A_noun_pI -> "heads"
#verb

#healthy
A_adjective_I -> "healthy"

#heart
A_noun_sI -> "heart"

#hearts
A_noun_pI -> "hearts"

#her
3soF -> "her"
3spF1 -> "her"

#hers
3spF2 -> "hers"

#herself
3srF -> "herself"

#high
A_adjective_I -> "high"

#him
3soM -> "him"

#himself
3srM -> "himself"

#his
3spM1 -> "his"
3spM2 -> "his"

#hollow
A_adjective_I -> "hollow"

#hook
A_noun_sI -> "hook"
#verb

#hooks
A_noun_pI -> "hooks"
#verb

#horn
A_noun_sI -> "horn"

#horns
A_noun_pI -> "horns"

#horse
A_noun_sA -> "horse"

#horses
A_noun_pA -> "horses"

#hospital
A_noun_sI -> "hospital"

#hospitals
A_noun_pI -> "hospitals"

#house
A_noun_sI -> "house"

#houses
A_noun_pI -> "houses"

#i
1ss -> "i"

#important
AN_adjective_C -> "important"

#in
preposition_NI -> "in" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 2075}
}%}

#is
BE_3s_pres -> "is" {% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "present"}, probability: 1192}
}%}

#island
AN_noun_sI -> "island"

#islands
AN_noun_pI -> "islands"

#it
3ssI -> "it" {% 
function(data) {
return {id: data[0], node: {type: "pronoun"}, probability: 407}
}%}

3soI -> "it" {% 
function(data) {
return {id: data[0], node: {type: "pronoun"}, probability: 407}
}%}

#its
3spI1 -> "its"
3spI2 -> "its"

#itself
3srI -> "itself"

#jewel
A_noun_sI -> "jewel"

#jewels
A_noun_pI -> "jewels"

#kettle
A_noun_sI -> "kettle"

#kettles
A_noun_pI -> "kettles"

#key
A_noun_sI -> "key"

#keys
A_noun_pI -> "keys"

#kind
A_noun_sI -> "kind"
A_adjective_C -> "kind"

#kinds
A_noun_pI -> "kinds"

#knee
A_noun_sI -> "knee"

#knees
A_noun_pI -> "knees"

#knife
A_noun_sI -> "knife"

#knives
A_noun_pI -> "knives"

#knot
A_noun_sI -> "knot"
#verb

#knots
A_noun_pI -> "knots"
#verb

#leaf
A_noun_sI -> "leaf"

#leaves
A_noun_pI -> "leaves"
#verb

#leg
A_noun_sI -> "leg"

#legs
A_noun_pI -> "legs"

#library
A_noun_sI -> "library"

#libraries
A_noun_pI -> "libraries"

#like
preposition_ND -> "like"
#verb

#line
A_noun_sI -> "line"
#verb

#lines
A_noun_pI -> "lines"
#verb

#lip
A_noun_sI -> "lip"

#lips
A_noun_pI -> "lips"

#living
A_adjective_A -> "living"
#verb

#lock
A_noun_sI -> "lock"
#verb

#locks
A_noun_pI -> "locks"
#verb

#long
A_adjective_I -> "long"

#male
A_adjective_A -> "male"

#map
A_noun_sI -> "map"
#verb

#maps
A_noun_pI -> "maps"
#verb

#married
A_adjective_A -> "married"
copula_verb_TO -> "married"

#match
A_noun_sI -> "match"
#verb

#matches
A_noun_pI -> "matches"
#verb

#material
A_noun_sI -> "material"
A_noun_uI -> "material"
A_adjective_I -> "material"

#materials
A_noun_pI -> "materials"

#me
1so -> "me"

#medical
A_adjective_C -> "medical"

#military
A_noun_sA -> "military"
A_adjective_C -> "military"

#militaries
A_noun_pA -> "militaries"

#mine
1sp2 -> "mine"
#verb

#monkey
A_noun_sA -> "monkey"
#verb

#monkeys
A_noun_pA -> "monkeys"
#verb

#moon
A_noun_sI -> "moon"

#moons
A_noun_pI -> "moons"

#mouth
A_noun_sI -> "mouth"

#mouths
A_noun_pI -> "mouths"

#muscle
A_noun_sI -> "muscle"

#muscles
A_noun_pI -> "muscles"

#my
1sp1 -> "my"

#myself
1sr -> "myself"

#nail
A_noun_sI -> "nail"
#verb

#nails
A_noun_pI -> "nails"
#verb

#natural
A_adjective_C -> "natural"

#necessary
A_adjective_C -> "necessary"

#neck
A_noun_sI -> "neck"

#necks
A_noun_pI -> "necks"

#needle
A_noun_sI -> "needle"

#needles
A_noun_pI -> "needles"

#nerve
A_noun_sI -> "nerve"

#nerves
A_noun_pI -> "nerves"

#net
A_noun_sI -> "net"
#adjective
#verb

#nets
A_noun_pI -> "nets"
#verb

#new
A_adjective_C -> "new"

#normal
A_adjective_C -> "normal"

#nose
A_noun_sI -> "nose"

#noses
A_noun_pI -> "noses"

#not
NOT -> "not" 

#nut 
A_noun_sI -> "nut"

#nuts
A_noun_pI -> "nuts"
#adjective

#of
OF -> "of" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 3534}
}%}

#office
AN_noun_sI -> "office"

#offices
AN_noun_pI -> "offices"

#on
preposition_NI -> "on" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 671}
}%}

#one
ONE -> "one"

#open
AN_adjective_I -> "open"
#verb

#or
OR -> "or"

#orange
AN_noun_sI -> "orange"
#adjective

#oranges
AN_noun_pI -> "oranges"

#our
1pp1 -> "our"

#ours
1pp2 -> "ours"

#ourselves
1pr -> "ourselves"

#oven
AN_noun_sI -> "oven"

#ovens
AN_noun_pI -> "ovens"

#package
A_noun_sI -> "package"

#packages
A_noun_pI -> "packages"

#pants
A_noun_pI -> "pants"

#parallel
A_adjective_C -> "parallel"

#parcel
A_noun_sI -> "parcel"

#parcels
A_noun_pI -> "parcels"

#past
A_noun_sC -> "past"
A_adjective_C -> "past"

#past
A_noun_pC -> "pasts"

#pen
A_noun_sI -> "pen"
#verb

#pens
A_noun_pI -> "pens"
#verb

#pencil
A_noun_sI -> "pencil"

#pencils
A_noun_pI -> "pencils"

#people
A_noun_pA -> "people"

#person
A_noun_sA -> "person"

#physical
A_adjective_I -> "physical"

#picture
A_noun_sI -> "picture"
#verb

#pictures
A_noun_pI -> "pictures"
#verb

#pig
A_noun_sA -> "pig"

#pigs
A_noun_pA -> "pigs"

#pin
A_noun_sI -> "pin"
#verb

#pins
A_noun_pI -> "pins"
#verb

#pipe
A_noun_sI -> "pipe"

#pipes
A_noun_pI -> "pipes"

#plane
A_noun_sI -> "plane"

#planes
A_noun_pI -> "planes"

#plate
A_noun_sI -> "plate"

#planes
A_noun_pI -> "plates"

#plough
A_noun_sI -> "plough"
#verb

#ploughs
A_noun_pI -> "ploughs"
#verb

#plow
A_noun_sI -> "plow"
#verb

#plows
A_noun_pI -> "plows"
#verb

#pocket
A_noun_sI -> "pocket"

#pockets
A_noun_pI -> "pockets"

#political
A_adjective_C -> "political"

#poor
A_adjective_A -> "poor"

#possible
A_adjective_C -> "possible" 

#pot
A_noun_sI -> "pot" 
A_noun_uI -> "pot"

#pots
A_noun_pI -> "pots" 

#potato
A_noun_sI -> "potato"

#potatoes
A_noun_pI -> "potatoes"

#present
A_noun_sI -> "present"
A_adjective_C -> "present"
#verb

#presents
A_noun_pI -> "presents"

#prison
A_noun_sI -> "prison"

#prisons
A_noun_pI -> "prisons"

#private
A_noun_sA -> "private"
A_adjective_C -> "private"

#privates
A_noun_pA -> "privates"

#probable
A_adjective_C -> "probably"

#pump
A_noun_sI -> "pump"
#verb

#pumps
A_noun_pI -> "pumps"
#verb

#quick
A_adjective_I -> "quick"

#quiet
A_adjective_I -> "quiet"

#rail
A_noun_sI -> "rail"
#verb

#rails
A_noun_pI -> "rails"
#verb

#rat
A_noun_sA -> "rat"

#rats
A_noun_pA -> "rats"

#ready
A_adjective_C -> "ready"

#red
A_adjective_I -> "red"

#receipt
A_noun_sI -> "receipt"

#receipts
A_noun_pI -> "receipts"

#regular
A_adjective_C -> "regular"

#responsible
A_adjective_A -> "responsible"

#right
A_adjective_C -> "right"

#ring
A_noun_sI -> "ring"

#rings
A_noun_pI -> "rings"

#rod
A_noun_sI -> "rod"

#rods
A_noun_pI -> "rods"

#roof
A_noun_sI -> "roof"

#roofs
A_noun_pI -> "roofs"

#root
A_noun_sI -> "root"

#roots
A_noun_pI -> "roots"

#round
A_noun_sC -> "round"
A_adjective_I -> "round"
#verb

#same
SAME -> "same"

#school
A_noun_sI -> "school"
A_noun_uC -> "school"

#schools
A_noun_pI -> "schools"

#scissors
A_noun_pI -> "scissors"

#screw
A_noun_sI -> "screw"
#verb

#screws
A_noun_pI -> "screw"
#verb

#seed
A_noun_sI -> "seed"
A_noun_uI -> "seed"

#seeds
A_noun_pI -> "seeds"

#she
3ssF -> "she"

#sheep
A_noun_sA -> "sheep"
A_noun_pA -> "sheep"

#shelf
A_noun_sI -> "shelf"

#shelves
A_noun_pI -> "shelves"
#verb

#ship
A_noun_sI -> "ship"
#verb

#ships
A_noun_pI -> "ships"
#verb

#shirt
A_noun_sI -> "shirt"

#shirt
A_noun_pI -> "shirts"

#shoe
A_noun_sI -> "shoe"

#shoes
A_noun_pI -> "shoes"

#shovel
A_noun_sI -> "shovel"
#verb

#shovels
A_noun_pI -> "shovels"
#verb

#skin
A_noun_sI -> "skin"
A_noun_uI -> "skin"
#verb

#skins
A_noun_pI -> "skins"
#verb

#skirt
A_noun_sI -> "skirt"
#verb

#skirts
A_noun_pI -> "skirts"
#verb

#snake
A_noun_sA -> "snake"
#verb

#snakes
A_noun_pA -> "snakes"
#verb

#sock
A_noun_sI -> "sock"

#socks
A_noun_pI -> "socks"

#spade
A_noun_sI -> "spade"

#spades
A_noun_pI -> "spades"

#sponge
A_noun_sI -> "sponge"

#sponges
A_noun_pI -> "sponges"

#spoon
A_noun_sI -> "spoon"

#spoons
A_noun_pI -> "spoons"

#spring
A_noun_sI -> "spring"

#springs
A_noun_pI -> "springs"

#square
A_noun_sI -> "square"
#adjective

#squares
A_noun_pI -> "squares"

#stamp
A_noun_sI -> "stamp"
#verb

#stamps
A_noun_pI -> "stamps"
#verb

#star
A_noun_sI -> "star"

#stars
A_noun_pI -> "stars"

#station
A_noun_sI -> "station"
#verb

#stations
A_noun_pI -> "stations"
#verb

#stem
A_noun_sI -> "stem"
#verb

#stems
A_noun_pI -> "stems"
#verb

#stick
A_noun_sI -> "stick"
#verb

#sticks
A_noun_pI -> "sticks"
#verb

#stocking
A_noun_sI -> "stocking"
#verb

#stockings
A_noun_pI -> "stockings"

#stomach
A_noun_sI -> "stomach"
#verb

#stomachs
A_noun_pI -> "stomachs"
#verb

#store
A_noun_sI -> "store"
#verb

#stores
A_noun_pI -> "stores"
#verb

#street
A_noun_sI -> "street"

#streets
A_noun_pI -> "streets"

#sun
A_noun_sI -> "sun"

#suns
A_noun_pI -> "suns"

#table
A_noun_sI -> "table"

#tables
A_noun_pI -> "tables"

#tail
A_noun_sI -> "tail"

#tails
A_noun_pI -> "tails"

#that
demonstrative_s -> "that" {%
function(data) {
return {id: data[0], node: {type: "demonstrative"}, probability: 183}
}%}

subclause_conjunction_P -> "that" {%
function(data) {
return {id: data[0], node: {type: "subordinating conjunction"}, probability: 641}
}%}

#the
THE -> "the" {% 
function(data) {
return {id: data[0], node: {type: "article"}, probability: 6775}
}%}

#their
3spN1 -> "their"
3pp1 -> "their"

#theirs
3spN2 -> "theirs"
3pp2 -> "theirs"

#them
3soN -> "them"
3po -> "them"

#themself
3srN -> "themself"

#themselves
3pr -> "themselves"

#these
demonstrative_p -> "these"

#they
3ssN -> "they"
3ps -> "they"

#this
demonstrative_s -> "this"

#those
demonstrative_p -> "those"

#thread
A_noun_sI -> "thread"
A_noun_uI -> "thread"

#threads
A_noun_pI -> "threads"

#throat
A_noun_sI -> "throat"

#throats
A_noun_pI -> "throats"

#thumb
A_noun_sI -> "thumb"

#thumbs
A_noun_pI -> "thumbs"

#ticket
A_noun_sI -> "ticket"

#tickets
A_noun_pI -> "tickets"

#to
TO -> "to"{% 
function(data) {return {id: data[0], node: {type: "preposition"}, probability: 1655}
}%}

preposition_VD -> "to"{% 
function(data) {return {id: data[0], node: {type: "preposition"}, probability: 975}
}%}

#toe
A_noun_sI -> "toe"

#toes
A_noun_pI -> "toes"

#tongue
A_noun_sI -> "tongue"

#tongues
A_noun_pI -> "tongues"

#tooth
A_noun_sI -> "tooth"

#teeth
A_noun_pI -> "teeth"

#town
A_noun_sI -> "town"

#towns
A_noun_pI -> "towns"
 
#train
A_noun_sI -> "train"
#verb
 
#trains
A_noun_pI -> "trains"
#verb

#tray
A_noun_sI -> "tray"

#trays
A_noun_pI -> "trays"

#tree
A_noun_sI -> "tree"

#trees
A_noun_pI -> "trees"

#trousers
A_noun_pI -> "trousers"

#two
number -> "two"

#umbrella
A_noun_sI -> "umbrella"

#umbrellas
A_noun_pI -> "umbrellas"

#us
1po -> "us"

#wall
A_noun_sI -> "wall"

#walls
A_noun_pI -> "walls"

#was
BE_1s_past -> "was" {% 
function(data) {
return {id: data[0], node: {type: "copula", person: 1, number: "singular", tense: "past"}, probability: 355}
}%}

BE_3s_past -> "was" {% 
function(data) {
return {id: data[0], node: {type: "copula", person: 3, number: "singular", tense: "past"}, probability: 355}
}%}

#watch
A_noun_sI -> "watch"
#verb

#watch
A_noun_pI -> "watches"
#verb

#we
1ps -> "we"

#were
BE_1p_past -> "were"
BE_2s_past -> "were"
BE_2p_past -> "were"
BE_3p_past -> "were"

#wheel
A_noun_sI -> "wheel"

#wheels
A_noun_pI -> "wheels"

#which
subclause_conjunction_P -> "which"

#whip
A_noun_sI -> "whip"
#verb

#whips
A_noun_pI -> "whips"
#verb

#whistle
A_noun_sI -> "whistle"
#verb

#whistles
A_noun_pI -> "whistles"
#verb

#will
WILL -> "will"

#window
A_noun_sI -> "window"

#windows
A_noun_pI -> "windows"

#wing
A_noun_sI -> "wing"

#wings
A_noun_pI -> "wings"

#wire
A_noun_sI -> "wire"
#verb

#wires
A_noun_pI -> "wires"
#verb

#with
preposition_ND -> "with" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 333}
}%}

preposition_VI -> "with" {% 
function(data) {
return {id: data[0], node: {type: "preposition"}, probability: 333}
}%}

#worm
A_noun_sI -> "worm"

#worms
A_noun_pI -> "worms"

#you
2ss -> "you"
2so -> "you"
2ps -> "you"
2po -> "you"

#your
2sp1 -> "your"
2pp1 -> "your"

#yours
2sp2 -> "yours"
2pp2 -> "yours"

#yourself
2sr -> "yourself"

#yourselves
2pr -> "yourselves"







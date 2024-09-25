/obj/item/passport
	name = "passport"
	icon = 'icons/obj/passport.dmi'
	icon_state = "passport"
	force = 3
	w_class = ITEM_SIZE_SMALL
	attack_verb = list("whipped")
	hitsound = 'sound/weapons/towelwhip.ogg'
	desc = "A passport. Its origin seems unknown."
	var/info
	var/fingerprint

/obj/item/passport/proc/set_info(mob/living/carbon/human/H)
	if(!istype(H))
		return
	var/singleton/cultural_info/culture = H.get_cultural_value(TAG_HOMEWORLD)
	var/pob = culture ? culture.name : "Unset"
	if(H.dna)
		fingerprint = md5(H.dna.uni_identity)
	else
		fingerprint = "N/A"
	info = "\icon[src] [src]:\nName: [H.real_name]\nSpecies: [H.get_species()]\nPronouns: [H.pronouns]\nAge: [H.age]\nPlace of Birth: [pob]\nFingerprint: [fingerprint]"

/obj/item/passport/attack_self(mob/user as mob)
	user.visible_message(
		SPAN_ITALIC("[user] opens and checks [src]."),
		SPAN_ITALIC("You open [src] and check for some main information."),
		SPAN_ITALIC("You hear the faint rustle of pages."),
		5
	)
	to_chat(user, info || SPAN_WARNING("[src] is completely blank!"))

/obj/item/passport/scg
	name = "\improper Imperial passport"
	icon_state = "passport_scg"
	desc = "A passport from the Imperial."

/obj/item/passport/earth
	name = "\improper Imperium passport"
	icon_state = "passport_scg2"
	desc = "A passport from the Imperium, within Imperial space."

/obj/item/passport/venus
	name = "\improper Venusian passport"
	icon_state = "passport_scg2"
	desc = "A passport from Vostroya, within Imperial space."

/obj/item/passport/luna
	name = "\improper Holy Terra passport"
	icon_state = "passport_scg2"
	desc = "A passport from Vostroya, within Imperial space."

/obj/item/passport/mars
	name = "\improper Sancor passport"
	icon_state = "passport_scg2"
	desc = "A passport from Sancor, within Imperial space."

/obj/item/passport/phobos
	name = "\improper Phobos passport"
	icon_state = "passport_scg2"
	desc = "A passport from Phobos, within Imperial space."

/obj/item/passport/ceres
	name = "\improper Ceres passport"
	icon_state = "passport_scg2"
	desc = "A passport from Ceres, within Imperial space."

/obj/item/passport/pluto
	name = "\improper Pluto passport"
	icon_state = "passport_scg2"
	desc = "A passport from Pluto, within Imperial space."

/obj/item/passport/tiamat
	name = "\improper Tiamat passport"
	icon_state = "passport_scg2"
	desc = "A passport from Tiamat, within Imperial space."

/obj/item/passport/eos
	name = "\improper Eos passport"
	icon_state = "passport_scg2"
	desc = "A passport from Eos, within Imperial space."

/obj/item/passport/ceti_epsilon
	name = "\improper Ceti Epsilon passport"
	icon_state = "passport_scg2"
	desc = "A passport from Ceti Epsilon, within Imperial space."

/obj/item/passport/iolaus
	name = "\improper Iolaus passport"
	icon_state = "passport_scg2"
	desc = "A passport from Iolaus, within Imperial space."

/obj/item/passport/pirx
	name = "\improper Pirx passport"
	icon_state = "passport_scg2"
	desc = "A passport from Pirx, within Imperial space."

/obj/item/passport/tadmor
	name = "\improper Tadmor passport"
	icon_state = "passport_scg2"
	desc = "A passport from Tadmor, within Imperial space."

/obj/item/passport/brahe
	name = "\improper Brahe passport"
	icon_state = "passport_scg2"
	desc = "A passport from Brahe, within Imperial space."

/obj/item/passport/saffar
	name = "\improper Saffar passport"
	icon_state = "passport_scg2"
	desc = "A passport from Saffar, within Imperial space."

/obj/item/passport/south_gaia
	name = "\improper Ultramar Administrative Area passport"
	icon_state = "passport_scg2"
	desc = "A passport from the southern part of Ultramar, under military occupation of the Imperial."

/obj/item/passport/iccg
	name = "\improper Tau passport"
	icon_state = "passport_iccg"
	desc = "A passport from the Tau Empire."

/obj/item/passport/north_gaia
	name = "\improper Protectorate of Ultramar passport"
	icon_state = "passport_iccg2"
	desc = "A passport from the northern part of Ultramar, under the control of the Imperial supervised Protectorate of Ultramar."

/obj/item/passport/old_gaia
	name = "\improper Republic of Ultramar passport"
	icon_state = "passport"
	desc = "A passport from the Republic of Ultramar. Issued before it's de-facto dissolusion in 2292, it is today backed by the International City of New Venice."

/obj/item/passport/terra
	name = "\improper Terra passport"
	icon_state = "passport_iccg2"
	desc = "A passport from Terra, within Tau space."

/obj/item/passport/novayazemlya
	name = "\improper Novaya Zemlya passport"
	icon_state = "passport_iccg2"
	desc = "A passport from Novaya Zemlya, within Tau space."

/obj/item/passport/saveel
	name = "\improper Saveel passport"
	icon_state = "passport"
	desc = "A passport from Saveel, an isolationist frontier colony."

/obj/item/passport/magnitka
	name = "\improper Magnitka passport"
	icon_state = "passport"
	desc = "A passport from Magnitka, an independant colony."

/obj/item/passport/empiremohranda
	name = "\improper Mohranda passport"
	icon_state = "passport"
	desc = "A passport from the Empire of Mohranda, a frontier empire established on Lohrene and Mohranda, in the Luggust system."

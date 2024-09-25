// 40k melee

/*
// A breakdown for how force works. The default material steel -- 1000 is the multiplier.
Your force divisor(unwielded) or force multiplier(wielded) is * against 100. Which gives you total force damage. E.G. Hardness 100 and unwielded divisor of .5 would mean force 50.
To find relevant hardness use VSC Search[hardness = ] to find material values.
Steel = 1000 / Ceramite = 120 / Ceramite Plasteel = 140

All weapons should use twohanded/warhammer -- otherwise it will break.
	*/


/obj/item/material/hatchet
	name = "Hatchet"
	desc = "A very sharp axe blade upon a short fibremetal handle. It has a long history of chopping things, but now it is used for chopping wood."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	icon_state = "hatchet"
	max_force = 40
	force_multiplier = 0.30 // 12 with hardness 60 (steel)
	thrown_force_multiplier = 0.20 // 15 with weight 20 (steel)
	sharp = TRUE
	edge = TRUE
	default_material = MATERIAL_STEEL
	origin_tech = list(TECH_MATERIAL = 2, TECH_COMBAT = 1)
	attack_verb = list("chopped", "torn", "cut")
	applies_material_colour = 0
	hitsound = "chop"
	attack_cooldown_modifier = -0.4
	base_parry_chance = 35
	armor_penetration = 4

/obj/item/material/hatchet/unbreakable
	unbreakable = TRUE

/obj/item/material/hatchet/machete
	name = "Machete"
	desc = "A long, sturdy blade with a rugged handle. Leading the way to cursed treasures since before space travel."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	item_state = "machete"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	default_material = MATERIAL_STEEL
	base_parry_chance = 30
	max_force = 43
	force_multiplier = 0.32
	armor_penetration = 3 // Hits for more damage but worse AP. Like a shitty cutro.
	attack_cooldown_modifier = -0.3

/obj/item/material/hatchet/machete/unbreakable
	unbreakable = TRUE

/obj/item/material/hatchet/machete/steel
	name = "Fabricated Machete"
	desc = "A long, machine-stamped blade with a somewhat ungainly handle."
	armor_penetration = 4

/obj/item/material/hatchet/machete/Initialize()
	icon_state = "machete[pick("","_red","_blue", "_black", "_olive")]"
	. = ..()

/obj/item/material/hatchet/machete/deluxe
	name = "Adamantine Machete"
	desc = "A fine example of a machete, with a polished blade, wooden handle and a leather cord loop."

/obj/item/material/hatchet/machete/deluxe/Initialize()
	. = ..()
	icon_state = "machetedx"

/obj/item/material/twohanded/warhammer
	name = "You shouldn't see this"
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "mekmace"
	item_state = "mekmace"
	max_force = 60
	applies_material_name = FALSE
	var/wielded_item_state // For two handed icon. Only add if it has it.
	applies_material_colour = 0
	sharp = FALSE // For decap chance.
	edge = FALSE // If blunt set to FALSE. Otherwise TRUE.

/obj/item/material/twohanded/warhammer/on_update_icon()
	..()
	if(wielded_item_state)
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = wielded_item_state
		item_state_slots[slot_r_hand_str] = wielded_item_state
		item_state_slots[slot_back_str] = icon_state
	else
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = initial(item_state)
		item_state_slots[slot_r_hand_str] = initial(item_state)
		item_state_slots[slot_back_str] = icon_state

/obj/item/material/twohanded/warhammer/sword
	name = "Iron Sabre"
	desc = "A decorative imperial sabre issued commonly to PDF and old school guard regiments."
	icon_state = "sabre"
	item_state = "sabre"
	attack_verb = list("stabbed", "chopped", "cut", "sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	max_force = 60
	force_multiplier = 0.34 // 0.34 = 34 Force damage wielded.
	unwielded_force_divisor = 0.31
	thrown_force_multiplier = 0.27
	armor_penetration = 4
	throw_speed = 4
	edge = TRUE
	sharp = TRUE
	default_material = MATERIAL_STEEL
	does_spin = FALSE // Does it spin when thrown?
	base_parry_chance = 30
	wielded_parry_bonus = 5
	attack_cooldown_modifier = -0.2 // Negative value is faster speed.
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/sword/cutro
	name = "Cutro Blade"
	desc = "A lightweight iron blade with near perfect balance, designed for short quick thrusts -- favoured by the merchant class and the occassional assassin."
	icon_state = "spatha"
	item_state = "spatha"
	w_class = ITEM_SIZE_NORMAL
	attack_cooldown_modifier = -0.5
	max_force = 55
	force_multiplier = 0.33
	unwielded_force_divisor = 0.33
	thrown_force_multiplier = 0.28
	armor_penetration = 5 // 40k equiv of an arming sword or long dagger.
	base_parry_chance = 35
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/sword/cutro
	name = "Adamantine Cutro"
	desc = "A lightweight adamantium blade with near perfect balance."
	color = "#848484"
	armor_penetration = 6
	max_force = 60
	force_multiplier = 0.35
	unwielded_force_divisor = 0.35
	thrown_force_multiplier = 0.3
	base_parry_chance = 37

/obj/item/material/twohanded/warhammer/sword/broadsword
	name = "Heavy Broadsword"
	desc = "A heavy, iron-forged broadsword, its sheer weight allows it to cleave through flesh and bone with brutal precision."
	icon_state = "claymore"
	item_state = "claymore"
	attack_cooldown_modifier = 0.3
	max_force = 70
	force_multiplier = 0.41 // Dedicated two hander gets good stats. Balanced by being bad at one-handed fighting.
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.30
	armor_penetration = 5
	base_parry_chance = 30
	wielded_parry_bonus = 10
	melee_accuracy_bonus = 10

/obj/item/material/twohanded/warhammer/sword/broadsword/adamantine
	name = "Adamantine Broadsword"
	desc = "A heavy, adamantine-forged broadsword, its sheer weight allows it to cleave through flesh and bone with brutal precision."
	color = "#848484"
	attack_cooldown_modifier = 0.4
	max_force = 80
	force_multiplier = 0.44 // Dedicated two hander gets good stats. Balanced by being bad at one-handed fighting.
	unwielded_force_divisor = 0.38
	thrown_force_multiplier = 0.32
	armor_penetration = 6
	base_parry_chance = 33

/obj/item/material/twohanded/warhammer/sword/chopper
	name = "Iron Chopper"
	desc = "A light primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	icon_state = "machete_imp"
	item_state = "salvagedmachete"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_BACK
	attack_cooldown_modifier = 0
	max_force = 65
	force_multiplier = 0.39
	unwielded_force_divisor = 0.37
	thrown_force_multiplier = 0.3
	armor_penetration = 3
	base_parry_chance = 25
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/sword/chopper/heavy
	name = "Heavy Iron Chopper"
	desc = "A heavy primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	icon_state = "scrapsabre"
	item_state = "salvagedmachete"
	w_class = ITEM_SIZE_LARGE
	attack_cooldown_modifier = 0.7
	max_force = 75
	force_multiplier = 0.44
	unwielded_force_divisor = 0.39
	thrown_force_multiplier = 0.33
	armor_penetration = 4
	base_parry_chance = 30
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/sword/chopper/heavy/adamantine
	name = "Heavy Adamantine Chopper"
	desc = "A heavy primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	color = "#848484"
	armor_penetration = 5
	max_force = 80
	force_multiplier = 0.46
	unwielded_force_divisor = 0.41
	thrown_force_multiplier = 0.34

/obj/item/material/twohanded/warhammer/sword/commisword
	name = "Masterwork Imperial Blade"
	desc = "A mastercrafted fighting sword of exceptional quality, it's design a perfect balance between speed and strength."
	icon_state = "commissword"
	item_state = "commissword"
	w_class = ITEM_SIZE_LARGE
	max_force = 75
	force_multiplier = 0.39
	unwielded_force_divisor = 0.35
	thrown_force_multiplier = 0.29
	armor_penetration = 6 // Adamantine Masterwork Commisword.
	throw_speed = 4.3
	base_parry_chance = 35 // Good parry.
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.1 // Fast considering damage.
	melee_accuracy_bonus = 7 // Accurate.

/obj/item/material/twohanded/warhammer/sword/commisword/sabre
	name = "Sabre"
	desc = "A masteredcrafted sabre of exceptional quality, it has a duelists grip."
	icon_state = "sabre"
	item_state = "sabre"
	melee_accuracy_bonus = 10
	base_parry_chance = 32

// CHAOS WEAPONS
/obj/item/material/twohanded/warhammer/sword/demon
	name = "Chaos Sword"
	desc = "The very sight of this blade makes you sick to your stomach."
	icon_state = "Scorpion_CS"
	item_state = "Scorpion_CS"
	w_class = ITEM_SIZE_LARGE
	max_force = 100
	force_multiplier = 0.42
	unwielded_force_divisor = 0.38
	thrown_force_multiplier = 0.30
	armor_penetration = 7
	throw_speed = 4
	base_parry_chance = 40
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0
	melee_accuracy_bonus = 10


/obj/item/material/twohanded/warhammer/axe
	name = "Trench Axe"
	desc = "An agile trench axe issued to guardsmen, used both as a weapon and field tool. Popularized during the Heresy of Krieg, it became standard issue after the Munitorum sanctioned it based on data-scrolls from the conflict."
	icon_state = "trenchaxe"
	item_state = "trenchaxe"
	wielded_item_state = "trenchaxe-w" // If you make any axe subweapons make sure to set wielded_item_state
	hitsound = list('sound/weapons/slash1.ogg','sound/weapons/slash2.ogg','sound/weapons/slash3.ogg')
	attack_verb = list("bashed", "chopped", "slashed")
	obj_flags = null // no shock
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	max_force = 80
	force_multiplier = 0.46 // Bad one handed. Stronger then sword two handed.
	unwielded_force_divisor = 0.32
	thrown_force_multiplier = 0.30
	armor_penetration = 5 // Hits heavy. Crushes/Cuts Armor.
	throw_speed = 4.5
	edge = TRUE
	sharp = TRUE
	default_material = MATERIAL_STEEL
	does_spin = TRUE
	base_parry_chance = 20 // Really bad one handed. Equal to a sword when two handed.
	wielded_parry_bonus = 15
	attack_cooldown_modifier = 1
	melee_accuracy_bonus = 5


/obj/item/material/twohanded/warhammer/axe/spear
	name = "Hunting Spear"
	desc = "An incredibly lightweight and nimble spear used by hunters against large game animals."
	hitsound = list('sound/weapons/stab1.ogg', 'sound/weapons/stab2.ogg', 'sound/weapons/stab3.ogg')
	icon_state = "bone_spear"
	item_state = "bone_spear"
	wielded_item_state = "bone_spear-w"
	attack_verb = list("pierced", "stabbed", "slashed")
	obj_flags = null // no shock
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	max_force = 60
	force_multiplier = 0.42
	unwielded_force_divisor = 0.30
	thrown_force_multiplier = 0.30
	armor_penetration = 6 // Pens armor.
	throw_speed = 3.5
	edge = TRUE
	sharp = FALSE // no decap
	does_spin = FALSE
	base_parry_chance = 15
	wielded_parry_bonus = 20 // Defending eezi
	attack_cooldown_modifier = 0.7
	melee_accuracy_bonus = 7 // Primitive easy to use weapon.

/obj/item/material/twohanded/warhammer/axe/spear/adamantine
	name = "Adamantine Spear"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.44
	max_force = 70
	edge = TRUE
	thrown_force_multiplier = 0.32
	unwielded_force_divisor = 0.32

/obj/item/material/twohanded/warhammer/axe/spear/fuscina
	name = "Fuscina War Spear"
	desc = "A relic of ancient Terra, its long reach and brutal weight make it ideal for felling towering foes. Rarely practical, save for Astartes or savage xenos, who wield it to keep death at bay with each crushing strike."
	icon_state = "lance"
	item_state = "lance"
	wielded_item_state = "lance-w"
	w_class = ITEM_SIZE_HUGE
	max_force = 70
	force_multiplier = 0.46 // Heavier, slower version of a spear.
	unwielded_force_divisor = 0.32
	thrown_force_multiplier = 0.32
	armor_penetration = 7
	throw_speed = 4.5
	edge = TRUE // Decaps. Big boy.
	sharp = TRUE
	base_parry_chance = 10
	wielded_parry_bonus = 30 // Long reach good defense.
	attack_cooldown_modifier = 1.2
	melee_accuracy_bonus = 7

/obj/item/material/twohanded/warhammer/axe/spear/fuscina/adamantine
	name = "Adamantine Fuscina"
	color = "#848484"
	armor_penetration = 8
	force_multiplier = 0.48
	max_force = 80
	edge = TRUE
	thrown_force_multiplier = 0.34
	unwielded_force_divisor = 0.34

/obj/item/material/twohanded/warhammer/axe/saintie
	name = "Steel Saintie"
	desc = "An exotic and incredibly heavy spear/hammer hybrid, ancient stories tell of the weapons use in mythic duels between Lion El'Jonson and Eldar Banshees during the Thramas Crusade. It delivers devastating, singular precision strikes meant to crush armor and overwhelm your opponent (pronounced san-tee)."
	icon_state = "glaive"
	item_state = "spear"
	wielded_item_state = "spear-w"
	w_class = ITEM_SIZE_HUGE
	obj_flags = OBJ_FLAG_CONDUCTIBLE // Steel Staff
	max_force = 90
	force_multiplier = 0.50
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.34
	armor_penetration = 6
	throw_speed = 5
	base_parry_chance = 15
	wielded_parry_bonus = 25
	attack_cooldown_modifier = 1.6
	melee_accuracy_bonus = 10
	does_spin = FALSE // Spear.

/obj/item/material/twohanded/warhammer/axe/saintie/adamantine
	name = "Adamantine Saintie"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.53
	max_force = 110
	thrown_force_multiplier = 0.36
	unwielded_force_divisor = 0.39

/obj/item/material/twohanded/warhammer/axe/bardiche
	name = "Bardiche"
	desc = "A massive two-handed polearm, built for heavy, armor-crushing strikes. Its sharp blade delivers singular, powerful blows against armored targets. The weigh is considerable on the axe-blade making you vulnerable for a time between each swing."
	icon_state = "bardiche"
	item_state = "savaxe"
	wielded_item_state = "savaxe"
	w_class = ITEM_SIZE_HUGE
	max_force = 95
	force_multiplier = 0.53 // Heavy chopping weapon.
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.36
	armor_penetration = 6
	throw_speed = 5
	base_parry_chance = 15 // Not as fancy as a saintie. But simple can be effective.
	wielded_parry_bonus = 15
	attack_cooldown_modifier = 1.4
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/warhammer/axe/bardiche/adamantine
	name = "Adamantine Bardiche"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.56
	max_force = 105
	thrown_force_multiplier = 0.38
	unwielded_force_divisor = 0.41

// CHAINSWORDS
/obj/item/material/twohanded/warhammer/chainsword
	name = "Locke Pattern Chainsword"
	desc = "A basic chainsword constructed in the small scale forges of the Mercy Forgeworld. Cheaped out on quality, at least its still a chainsword!"
	icon_state = "mercychainsword"
	item_state = "mercychainsword"
	attack_verb = list("gored", "chopped", "smashed", "battered")
	hitsound = 'sound/weapons/chainsword.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	max_force = 100
	force_multiplier = 0.65
	unwielded_force_divisor = 0.62
	thrown_force_multiplier = 0.45
	armor_penetration = 7 // Ceramite Teeth.
	throw_speed = 5.5
	edge = TRUE
	sharp = TRUE
	default_material = MATERIAL_STEEL
	does_spin = TRUE
	base_parry_chance = 30
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1.2 // Chainblade.
	melee_accuracy_bonus = 10 // Chainblades don't miss.

/obj/item/material/twohanded/warhammer/chainsword/guard
	name = "Imperial Guard chainsword"
	desc = "A light imperial guard issue chainsword, a lighter weight model favored by the Guard, the reduced weight adds to it's speed but makes this pattern far weaker then other chain weapons."
	icon_state = "gchain"
	item_state = "inqchainsword"
	force_multiplier = 0.60
	armor_penetration = 6
	unwielded_force_divisor = 0.57
	thrown_force_multiplier = 0.43
	throw_speed = 5
	max_force = 90
	base_parry_chance = 35
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.9 // Lighter one handed variant of the Mercy, faster attack, higher accuracy and defense in exchange for damage.
	melee_accuracy_bonus = 15

/obj/item/material/twohanded/warhammer/chainsword/relic
	name = "Relic Pattern Chainsword"
	desc = "A golden chainsword of extreme quality, it's craft that of the opulent hiveworlds of Sancor -- this relic likely existed for many terran centuries before reaching your hands."
	icon_state = "ggchain"
	item_state = "inqchainsword"
	max_force = 110
	armor_penetration = 8
	force_multiplier = 0.66
	unwielded_force_divisor =  0.64
	melee_accuracy_bonus = 15

/obj/item/material/twohanded/warhammer/chainsword/eviscerator
	name = "Eviscerator Pattern Chainsword"
	desc = "Favoured by Ecclesiarchy Zealots and Ordo Hereticus Members, It's a absurdly large, two-handed chainsword. Almost useless one handed."
	icon_state = "eviscerator"
	item_state = "eviscerator"
	wielded_item_state ="eviscerator"
	max_force = 120
	armor_penetration = 8
	force_multiplier = 0.71 // Super OP fast astartes chainsword.
	unwielded_force_divisor =  0.6
	melee_accuracy_bonus = 15
	attack_cooldown_modifier = 2
	base_parry_chance = 40

/obj/item/material/twohanded/warhammer/chainsword/drusian
	name = "Drusian Pattern Chainsword"
	desc = "Nicknamed the 'Crusader', It's a common Chainsword pattern issued to Inquisitorial agents of the Inquisition in the Koronus Expanse, Designed solely to smite the filthy xenos."
	icon_state = "inqchainsword"
	item_state = "inqchainsword"
	wielded_item_state = "inqchainsword"
	force_multiplier = 0.62
	unwielded_force_divisor = 0.59
	thrown_force_multiplier = 0.5
	throw_speed = 4.5
	base_parry_chance = 37
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.85 // Same design as guard just higher quality.
	melee_accuracy_bonus = 17

/obj/item/material/twohanded/warhammer/chainsword/astartes
	name = "Mark I Pattern Chainsword"
	desc = "The standard issued chainsword of the Adeptus Astartes since Millenias ago, Forged by the finest Warsmith, these Chainsword have seen the test of time."
	icon_state = "pcsword"
	item_state = "pcsword"
	wielded_item_state = "pcsword"
	armor_penetration = 9
	force_multiplier = 0.74 // Super OP fast astartes chainsword.
	unwielded_force_divisor =  0.72
	thrown_force_multiplier = 0.62
	throw_speed = 4
	melee_accuracy_bonus = 20
	attack_cooldown_modifier = 0.65
	base_parry_chance = 40

// XENOS / HERETIC WEAPONS

/obj/item/material/twohanded/warhammer/orkmace
	name = "Ork Mace"
	desc = "A mace normally used by the ork meks, made of scrap. It's MASSIVE."
	icon_state = "mekmace"
	item_state = "mekmace"
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("grunked", "krumped", "kronked", "bonked", "gonked")
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BELT
	max_force = 100
	force_multiplier = 0.51 // 41 Force with hardness 100 (steel)
	unwielded_force_divisor = 0.47
	thrown_force_multiplier = 0.43
	armor_penetration = 8 // Ork Magic.
	throw_speed = 4
	edge = TRUE
	sharp = TRUE // Ork mace so big it make head go bye bye.
	default_material = MATERIAL_STEEL
	does_spin = TRUE // Does it spin when thrown?
	base_parry_chance = 30
	wielded_parry_bonus = 0 // Orks don't two hand melee.
	attack_cooldown_modifier = 0.6
	melee_accuracy_bonus = 12 // Too big to miss.

/obj/item/material/twohanded/warhammer/orkmace/New() // Waagh speed
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/warhammer/lashoftorment
	name = "Lash Of Torment"
	desc = "Made up of lascivious coils and barbed hooks, a Lash of Torment moves with a mind of its own."
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "lash"
	item_state = "lash"
	hitsound = 'sound/weapons/whip.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	origin_tech = list(TECH_COMBAT = 5)
	attack_verb = list("flicked", "whipped", "lashed")
	max_force = 38
	force_multiplier = 0.1
	unwielded_force_divisor = 0.1
	thrown_force_multiplier = 0.25
	armor_penetration = 7 // Chaos Magic.
	throw_speed = 4
	edge = TRUE
	sharp = TRUE
	default_material = MATERIAL_STEEL
	does_spin = TRUE
	base_parry_chance = 35
	wielded_parry_bonus = 10
	attack_cooldown_modifier = 0.7
	melee_accuracy_bonus = 15 // Tis a whip.

/obj/item/material/twohanded/warhammer/lashoftorment/New() // Magic
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/warhammer/lashoftorment/apply_hit_effect(mob/living/target, mob/living/user, hit_zone)
	if(usr.gender == MALE)
		playsound(usr.loc, 'sound/voice/Screams_Male_3.ogg', 100, 1, 1)
	else if(usr.gender == FEMALE)
		playsound(usr.loc, 'sound/voice/Screams_Woman_1.ogg', 100, 1, 1)
	if (prob(50))
		user.visible_message(SPAN_DANGER("[user] painfully whips [target], leaving an alien mark on their back!"))
		user.do_attack_animation(target)

		var/blocked = target.get_blocked_ratio(hit_zone, DAMAGE_BURN, damage = 43)
		target.Weaken(rand(0-6) * (1 - blocked))
		target.apply_damage(43, DAMAGE_BURN, hit_zone, src)
		return 1


	return ..()
/*
#define EFFECT_STUN     "stun"
#define EFFECT_WEAKEN   "weaken"
#define EFFECT_PARALYZE "paralize"
#define EFFECT_STUTTER  "stutter"
#define EFFECT_EYE_BLUR "eye_blur"
#define EFFECT_DROWSY   "drowsy"
#define EFFECT_PAIN     "pain" // These are ur melee effects
	*/

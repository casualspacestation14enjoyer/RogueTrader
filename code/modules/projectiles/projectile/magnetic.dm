// Rod for railguns. Slightly less nasty than the sniper round.
/obj/item/projectile/bullet/magnetic
	name = "rod"
	icon_state = "rod"
	damage = 90
	penetrating = 5
	armor_penetration = 41
	penetration_modifier = 1.1
	fire_sound = 'sound/weapons/railgun.ogg'
	distance_falloff = 1

/obj/item/projectile/bullet/magnetic/slug
	name = "slug"
	icon_state = "gauss_silenced"
	damage = 93
	armor_penetration = 46

/obj/item/projectile/bullet/magnetic/flechette
	name = "flechette"
	icon_state = "flechette"
	damage = 45
	armor_penetration = 44
	fire_sound = 'sound/weapons/rapidslice.ogg'
	distance_falloff = 0.5

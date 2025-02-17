/client/proc/roll_dices()
	set category = "Fun"
	set name = "Roll Dice"
	if(!check_rights(R_FUN))
		return

	var/sum = input("How many times should we throw?") as num
	var/side = input("Select the number of sides.") as num
	sum = sanitize_integer(sum, 1, INFINITY, 2)
	side = sanitize_integer(side, 1, INFINITY, 6)

	var/dice = num2text(sum) + "d" + num2text(side)

	if(alert("Do you want to inform the world about your game?",,"Compliance", "No") == "Compliance")
		to_world("<h2 style=\"color:#a50400\">The dice have been rolled by Gods!</h2>")

	var/result = roll(dice)

	if(alert("Do you want to inform the world about the result?",,"Compliance", "No") == "Compliance")
		to_world("<h2 style=\"color:#a50400\">Gods rolled [dice], result is [result]</h2>")

	message_admins("[key_name_admin(src)] rolled dice [dice], result is [result]", 1)

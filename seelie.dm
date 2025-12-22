/mob/living/carbon/human/species/faery
	race = /datum/species/faery

/datum/species/faery
	name = "Faery"
	id = SPEC_ID_FAERY
	desc = "Born of old elven blood and fae blessings, <b>faeries</b> are the smaller, wilder and whimsical descendants of elves blessed with insectile wings by Dendor. \
	Though most faeries believe Xylix favors them, whether or not anyone else agrees. \
	Faeries are, at their core, elvish, nomadic tricksters with insectile wings and a strong sense of performance. \
	They tend to speak in riddles, half-truths, and playful insults. \
	They like to offer deals and bargains, with obvious loopholes to anyone actually paying attention. \
	Their morality tends to be situational and filtered through humor. \
	A faery might steal from a noble to feed a peasant, and then steal from the peasant <i>“just a little”</i>. \
	Elves are your smugger cousins: some faeries adore them, some resent them, most mock them. \
	Decide if your faery views elves as <i>“the boring branch of the family”</i> or as lost kin who forgot how to have fun.\
	‣ The <b>Seelie Court</b> comprises faeries that seek help from others, warn those who have accidentally offended them, and return kindness with favors of their own. Still, a faery belonging to this court will avenge insults and could be prone to mischief.\
	‣ The <b>Unseelie Court</b> describes the darkly-inclined fairies. Unlike the Seelie Court, no offense was deemed necessary to bring down their assaults. They are seen as closely allied with Zizo."

	skin_tone_wording = "Court Attunement"

	exotic_bloodtype = /datum/blood_type/fey

	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,OLDGREY)	//Default shit that every race gets
	inherent_traits = list(TRAIT_NOMOBSWAP, TRAIT_NOFALLDAMAGE2, TRAIT_TINY, TRAIT_EMPATH, TRAIT_COIN_ILLITERATE, TRAIT_DODGEEXPERT, TRAIT_HOLLOWBONES)	//Use this to add custom Fae traits
	//default_features = MANDATORY_FEATURE_LIST
	inherent_skills = list(
		/datum/skill/misc/sneaking = 3,
		/datum/skill/labor/taming = 2,
		/datum/skill/misc/stealing = 1,
)

	use_skintones = 1
	disliked_food = NONE
	liked_food = NONE
	possible_ages = NORMAL_AGES_LIST_CHILD

	limbs_icon_m = 'icons/roguetown/mob/bodies/m/male_short.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fd.dmi'
	swap_male_clothes = TRUE
	custom_clothes = TRUE
	custom_id = SPEC_ID_DWARF

	native_language = "Faexin"

	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf

	// Both from female dwarf
	offset_features_m = list(
		OFFSET_RING = list(0,-4),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,-4),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,-5),\
		OFFSET_HEAD = list(0,-5),\
		OFFSET_FACE = list(0,-5),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,-5),\
		OFFSET_NECK = list(0,-5),\
		OFFSET_MOUTH = list(0,-5),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0)\
	)

	offset_features_f = list(
		OFFSET_RING = list(0,-4),\
		OFFSET_GLOVES = list(0,0),\
		OFFSET_WRISTS = list(0,0),\
		OFFSET_HANDS = list(0,-4),\
		OFFSET_CLOAK = list(0,0),\
		OFFSET_FACEMASK = list(0,-5),\
		OFFSET_HEAD = list(0,-5),\
		OFFSET_FACE = list(0,-5),\
		OFFSET_BELT = list(0,0),\
		OFFSET_BACK = list(0,-5),\
		OFFSET_NECK = list(0,-5),\
		OFFSET_MOUTH = list(0,-5),\
		OFFSET_PANTS = list(0,0),\
		OFFSET_SHIRT = list(0,0),\
		OFFSET_ARMOR = list(0,0),\
		OFFSET_UNDIES = list(0,0)\
	)

	specstats_m = list(STATKEY_STR = -2, STATKEY_PER = 4, STATKEY_INT = 2, STATKEY_CON = -5, STATKEY_END = -1, STATKEY_SPD = 6, STATKEY_LCK = 3)
	specstats_f = list(STATKEY_STR = -2, STATKEY_PER = 4, STATKEY_INT = 2, STATKEY_CON = -5, STATKEY_END = -1, STATKEY_SPD = 6, STATKEY_LCK = 3)

	enflamed_icon = "widefire"

	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/elfw,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		ORGAN_SLOT_GUTS = /obj/item/organ/guts,
		//ADD WINGS HERE
		ORGAN_SLOT_WINGS = /obj/item/organ/wings/flight/faery,
		)
	bodypart_features = list(
		/datum/bodypart_feature/hair/head,
		/datum/bodypart_feature/hair/facial, 
	)
	customizers = list(
		/datum/customizer/organ/ears/elf,
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
		/datum/customizer/organ/wings/faery,
	)

	body_markings = list(
		/datum/body_marking/tonage,
	)

	languages = list(
		/datum/language/common,
		/datum/language/faexin,	//faery speak here
	)
	stress_examine = TRUE
	stress_desc = span_red("A tiny faery, mischievous in nature.")
	default_scale_x = 0.5
	default_scale_y = 0.5

/datum/species/faery/on_species_gain(mob/living/carbon/C, datum/species/old_species)
	..()
	RegisterSignal(C, COMSIG_MOB_SAY, PROC_REF(handle_speech))
	RegisterSignal(C, COMSIG_LIVING_MOBILITY_UPDATED, PROC_REF(handle_mobility_update))
	passtable_on(C, SPECIES_TRAIT)
	C.pass_flags |= PASSMOB
	//C.movement_type = FLYING
	C.set_mob_offsets("pixie_hover", _x = 0, _y = 10)
	C.set_light(3, 1, "#d4fcac")

    // Only grant magic if they worship Noc or Zizo
    if (C.patron && (istype(C.patron, /datum/patron/divine/noc, /datum/patron/inhumen/zizo)))
        // give prestidigitation 
        C.add_spell(/datum/action/cooldown/spell/undirected/touch/prestidigitation)
        // set the mana‑pool to recharge from all leylines
        C.mana_pool.set_intrinsic_recharge(MANA_ALL_LEYLINES)
        // give rank 1 arcane magic
        C.adjust_skillrank(/datum/skill/magic/arcane, 1, TRUE)
        // give four extra spell‑points
        C.adjust_spell_points(4)

/datum/species/faery/after_creation(mob/living/carbon/C)
	..()
	to_chat(C, "<span class='info'>I can speak Faexin with ,p before my speech.</span>")
	C.verbs |= (/mob/living/carbon/human/proc/Turnlight)
	C.verbs |= (/mob/living/carbon/proc/switchaura)

/datum/species/faery/on_species_loss(mob/living/carbon/C)
	. = ..()
	UnregisterSignal(C, COMSIG_MOB_SAY)
	UnregisterSignal(C, COMSIG_LIVING_MOBILITY_UPDATED)
	C.update_transform()
	passtable_off(C, SPECIES_TRAIT)
	C.pass_flags &= ~PASSMOB
	C.reset_offsets("pixie_hover")
	//C.movement_type = (C.movement_type | ~FLYING)
	//C.Jitter(0)
	C.set_light(0, 0, null)

/datum/species/faery/qualifies_for_rank(rank, list/features)
	return TRUE

/datum/species/faery/get_skin_list()
	return list(
		//Unseelie Fae
		"Unseelie — Gloam-Touched" = SKIN_COLOR_GLOAM_TOUCHED,     // (Pale)
		"Unseelie — Moon-Faded" = SKIN_COLOR_MOON_FADED,        // (White 1)
		"Unseelie — Dusk-Cast" = SKIN_COLOR_DUSK_CAST,         // (Greyed White)
		"Unseelie — Veilbound" = SKIN_COLOR_VEILBOUND,         // (Light Purple)
		"Unseelie — Night-Suffused" = SKIN_COLOR_NIGHT_SUFFUSED,    // (Mid Purple)
		"Unseelie — Umbral" = SKIN_COLOR_UMBRAL,      // (Deep Purple)
		"Unseelie — Starless" = SKIN_COLOR_STARLESS,          // (Blue-Black)
		//Seelie Fae
		"Seelie — Petal-Born" = SKIN_COLOR_PETAL_BORN,        // (Pale)
		"Seelie — Dawn-Kissed" = SKIN_COLOR_DAWN_KISSED,       // (White 1)
		"Seelie — Sunlit" = SKIN_COLOR_SUNLIT,            // (White 2)
		"Seelie — Golden-Bloomed" = SKIN_COLOR_GOLDEN_BLOOMED,    // (White 3)
		"Seelie — Meadow-Touched" = SKIN_COLOR_MEADOW_TOUCHED,    // (White 4)
		"Seelie — Heartbound" = SKIN_COLOR_ROSY_COURT,        // (Pink)
		"Seelie — Heartblossom" = SKIN_COLOR_HEARTBLOSSOM,      // (Latin) 
		"Seelie — Summerkin" = SKIN_COLOR_SUMMER_FEY,        // (Mediterranean)
		"Seelie — Sun-Touched" = SKIN_COLOR_SUN_TOUCHED,      // (Black) 

	)

/datum/species/faery/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b"
	))

/datum/species/faery/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/other/fairyf.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/other/fairyf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/other/fairyf.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/other/fairyf.txt") )
	return randname

/datum/species/faery/random_surname()
	return " [pick(world.file2list("strings/rt/names/other/fairyf.txt"))]"

/datum/species/faery/on_bitten(mob/living/carbon/human/victim, mob/living/carbon/human/biter)
	// Only Graggarites can bite a Faery's head off.
	if(biter.patron.type != /datum/patron/inhumen/graggar)
		return FALSE
	// And the biter must have an aggressive grab on the Faery.
	if(victim.pulledby != biter && biter.grab_state != GRAB_AGGRESSIVE)
		return FALSE
	victim.visible_message(span_danger("[biter] is putting [victim]'s head in [biter.p_their()] mouth!"), \
					span_userdanger("[biter] is putting my head in [biter.p_their()] mouth!"))
	if(do_mob(biter, victim, 8 SECONDS))
		var/obj/item/bodypart/head/head = victim.get_bodypart(BODY_ZONE_HEAD)
		head.dismember()
	return TRUE // Either way, cancel normal on-bite logic at this point, since we tried to bite their head off.

/datum/species/faery/on_middle_click(mob/living/carbon/human/Target, mob/Ripper)
	if(isfaery(Ripper) || Target.pulledby != Ripper)
		return FALSE // Faeries can't rip other faery's wings, and you have to be pulling someone to rip their wings.
	if(!has_wings(Target))
		to_chat(Ripper, span_notice("[Target] is missing their wings."))
		return FALSE
	Ripper.visible_message(span_danger("[Ripper] begins to rip [Target]'s wings..."), \
						span_danger("I begin to rip [Target]'s wings..."), ignored_mobs = Target)
	to_chat(Target, span_userdanger("[Ripper] begins to rip your wings off..."))
	if(!do_mob(Ripper, Target, 8 SECONDS))
		return TRUE // cancel base middle-click functionality
	//if(length(Target.grabbedby) != 0)
	// Make sure our grab wasn't interrupted.
	if(Target.pulledby != Ripper)
		to_chat(Ripper, span_notice("I have to keep ahold of [Target] to rip their wings off!"))
		return TRUE
	if(!has_wings(Target))
		to_chat(Ripper, span_notice("[Target] is already missing their wings."))
		return FALSE
	var/obj/item/organ/wings/faery/Wing = Target.getorganslot(ORGAN_SLOT_WINGS)
	Wing.Remove(Target)
	Wing.forceMove(Target.drop_location())
	Ripper.put_in_hands(Wing)
	Target.update_body_parts(TRUE)
	//var/fracture_type = /datum/wound/fracture/neck
	var/obj/item/bodypart/BP = Target.get_bodypart(BODY_ZONE_PRECISE_NECK)
	BP.add_wound(/datum/wound/fracture/neck)
	Target.apply_damage(70, BRUTE, Target.get_bodypart(BODY_ZONE_CHEST))
	//var/datum/disease/Disease = new /datum/disease/heart_failure
	//Target.ForceContractDisease(Disease)	//Disease removed in favor of simply stopping the heart via heart attack
	Target.set_heartattack(TRUE)
	Target.visible_message(span_danger("[Target] clutches at [Target.p_their()] chest as if [Target.p_their()] heart stopped!"))
	Ripper.log_message("[key_name(Ripper)] ripped [key_name(Target)]'s wings.")
	Target.log_message("[key_name(Target)]'s wings got ripped by [key_name(Ripper)].")

	//CURSE OF THE FAERY
	if(!isdead(Target))
		playsound(Target, 'sound/vo/female/gen/scream (2).ogg', 140)
		var/const/FAERY_SCREAM_RANGE = 4
		Target.audible_message(span_userdanger("[Target] screams in agony, inflicting a curse on you for the vile deed done to [Target.p_them()]!"), null,
			FAERY_SCREAM_RANGE, \
			span_danger("You scream in agony, inflicting a curse on those around you as punishment for their vile deeds!")
		)
		for(var/mob/living/carbon/C in view(FAERY_SCREAM_RANGE, Target))
			if(C == Target)
				continue
			C.adjustEarDamage(0, 35)
			C.confused += 40
			C.Jitter(50)
			C.apply_status_effect(/datum/status_effect/debuff/faery_wing_curse)

/datum/species/faery/proc/has_wings(mob/living/carbon/human/owner)
	return !!owner?.getorganslot(ORGAN_SLOT_WINGS)

/datum/species/faery/proc/regenerate_wings(mob/living/carbon/human/owner)
	owner.set_heartattack(FALSE)
	var/obj/item/organ/wings/wing = owner.getorganslot(ORGAN_SLOT_WINGS)
	if(!wing)
		var/wing_type = owner.dna.species.organs[ORGAN_SLOT_WINGS]
		var/obj/item/organ/wings/new_wings = new wing_type()
		new_wings.Insert(owner)

/// Apply the faery hovering animation
/datum/species/faery/proc/fairy_hover(mob/living/carbon/human/owner)
	if(!owner.resting && !owner.wallpressed)
		animate(owner, pixel_y = owner.pixel_y + 2, time = 0.5 SECONDS, loop = -1)
	sleep(0.5 SECONDS)
	if(!owner.resting && !owner.wallpressed)
		animate(owner, pixel_y = owner.pixel_y - 2, time = 0.5 SECONDS, loop = -1)

/datum/species/faery/spec_life(mob/living/carbon/human/owner)
	. = ..()
	if(is_faery_floating(owner))
		fairy_hover(owner)

	if(!owner.IsSleeping())	
		//faery luck aura
		for(var/mob/living/carbon/human/victim in view(1, src))
			if(isfaery(victim))
				continue
			if(owner.aura)
				victim.apply_status_effect(/datum/status_effect/buff/faery/happy)
				victim.remove_status_effect(/datum/status_effect/buff/faery/sad)
			else
				victim.apply_status_effect(/datum/status_effect/buff/faery/sad)
				victim.remove_status_effect(/datum/status_effect/buff/faery/happy)

/datum/species/faery/proc/is_faery_floating(mob/living/carbon/human/owner)
	return !owner.incapacitated(ignore_restraints = TRUE) && (owner.mobility_flags & MOBILITY_STAND) && has_wings(owner) && !owner.buckled

/datum/species/faery/is_floor_hazard_immune(mob/living/carbon/human/owner)
	return is_faery_floating(owner)

/datum/species/faery/proc/handle_mobility_update(mob/living/carbon/human/faery)
	SIGNAL_HANDLER
	if(is_faery_floating(faery)) //Shift faery back 'up' from lying down on the ground
		faery.set_mob_offsets("pixie_hover", _x = 0, _y = 10)
	else // If buckled or unable to stand, faeries need to 'fall' to the ground by resetting position
		faery.reset_offsets("pixie_hover")

/mob/living/carbon/human/proc/Turnlight()
	set name = "Faery Glow"
	set category = "Faery"
	if(light_power)
		set_light(0, 0, null)
		to_chat(src, span_notice("I stop glowing."))
	else
		to_chat(src, span_notice("I begin to glow once more."))
		set_light(3, 1, "#d4fcac")

/mob/living/carbon/proc/switchaura()
	set name = "Luck Aura"
	set category = "Faery"
	aura = !aura
	if(aura)
		to_chat(src, span_warning("My aura is now one of blessing."))
		log_message("[key_name(src)] has switched their aura to apply good luck.", LOG_GAME)
	else
		to_chat(src, span_warning("My aura is now one of misery."))
		log_message("[key_name(src)] has switched their aura to apply bad luck.", LOG_GAME)

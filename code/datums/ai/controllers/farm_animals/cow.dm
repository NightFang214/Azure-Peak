/datum/ai_controller/farm_animals/cow
	movement_delay = 2 SECONDS

	blackboard = list(
		BB_TARGETTING_DATUM = new /datum/targetting_datum/basic/allow_items(),
		BB_BASIC_MOB_TAMED = TRUE,
		BB_COW_TIP_REACTING = FALSE,
		BB_COW_TIPPER = null,
	)

	ai_traits = STOP_MOVING_WHEN_PULLED
	ai_movement = /datum/ai_movement/basic_avoidance
	idle_behavior = /datum/idle_behavior/idle_random_walk

	planning_subtrees = list(
		/datum/ai_planning_subtree/target_retaliate,
		/datum/ai_planning_subtree/flee_target,
		/datum/ai_planning_subtree/basic_melee_attack_subtree,
		/datum/ai_planning_subtree/eat_food/farm_animals,
		/datum/ai_planning_subtree/find_food,
	)

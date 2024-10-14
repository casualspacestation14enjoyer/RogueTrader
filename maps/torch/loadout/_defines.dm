//The following is a list of defs to be used for The Dauntless loadout.

//For jobs that allow for decorative or ceremonial clothing
#define FORMAL_ROLES list(/datum/job/liaison, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/rogue_guest, /datum/job/mercenary, /datum/job/assistant, /datum/job/merchant, /datum/job/guardsman, /datum/job/chaplain_militant, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/shuttle_pilot, /datum/job/chamber_magister, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

//For civilian jobs that may have a uniform, but not a strict one
#define SEMIFORMAL_ROLES list(/datum/job/assistant, /datum/job/pilgrim, /datum/job/unexpected_guest, /datum/job/scientist_assistant, /datum/job/rogue_guest, /datum/job/merchant, /datum/job/shuttle_pilot, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/guardsman, /datum/job/chaplain_militant, /datum/job/tech_priest, /datum/job/roboticist, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/chamber_magister, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/medicae)

//For civilian jobs that may have a strict uniform.
#define SEMIANDFORMAL_ROLES list(/datum/job/assistant, /datum/job/unexpected_guest, /datum/job/scientist_assistant, /datum/job/rogue_guest, /datum/job/merchant, /datum/job/shuttle_pilot, /datum/job/liaison, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/mercenary, /datum/job/guardsman, /datum/job/chaplain_militant, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/chamber_magister, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/medicae)

//For civilian jobs with no uniform or formal clothing requirements.
#define CASUAL_ROLES list(/datum/job/assistant, /datum/job/chamber_assistant, /datum/job/chamber_magister, /datum/job/pilgrim, /datum/job/roboticist, /datum/job/unexpected_guest, /datum/job/chaplain_militant, /datum/job/merchant, /datum/job/submap/bearcat_captain, /datum/job/submap/bearcat_crewman, /datum/job/submap/colonist, /datum/job/submap/pod, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/medicae, /datum/job/scientist, /datum/job/senior_scientist, /datum/job/scientist_assistant)

//For roles that would have a higher level of education, typically doctors and other scientists
#define DOCTOR_ROLES list(/datum/job/magos_biologis, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/pharmacologis, /datum/job/rogue_guest, /datum/job/roboticist, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/magos_biologis, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/medicae, /datum/job/rogue_guest, /datum/job/pharmacologis, /datum/job/novitiate)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/magos_biologis, /datum/job/juniormedicae, /datum/job/sister_hospitaller, /datum/job/medicae, /datum/job/pharmacologis, /datum/job/rogue_guest, /datum/job/roboticist, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/scientist_assistant, /datum/job/novitiate, /datum/job/guardsman)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/magos_explorator, /datum/job/data_smith, /datum/job/tech_priest, /datum/job/roboticist, /datum/job/bondsman)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/data_smith, /datum/job/tech_priest, /datum/job/roboticist, /datum/job/noble_guest, /datum/job/pilgrim, /datum/job/unexpected_guest, /datum/job/scientist_assistant, /datum/job/merchant, /datum/job/rd, /datum/job/senior_scientist, /datum/job/scientist, /datum/job/magos_explorator, /datum/job/chamber_assistant, /datum/job/bondsman, /datum/job/shuttle_pilot)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/guard_captain, /datum/job/enforcer_sergeant, /datum/job/guardsman, /datum/job/enforcer)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/noble_guest, /datum/job/pilgrim)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/qm, /datum/job/chamber_assistant, /datum/job/chamber_magister, /datum/job/deck_scum, /datum/job/chaplain_militant)

//For members of the exploration department
#define EXPLORATION_ROLES list(/datum/job/pathfinder, /datum/job/shuttle_pilot, /datum/job/explorer)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/rd, /datum/job/scientist, /datum/job/unexpected_guest, /datum/job/scientist_assistant, /datum/job/assistant, /datum/job/shuttle_pilot, /datum/job/senior_scientist, /datum/job/roboticist)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/rogue_trader, /datum/job/seneschal, /datum/job/rd, /datum/job/magos_biologis, /datum/job/magos_explorator, /datum/job/guard_captain, /datum/job/sea, /datum/job/enforcer, /datum/job/enforcer_sergeant, /datum/job/guardsman, /datum/job/merchant, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/rogue_trader, /datum/job/seneschal, /datum/job/rd, /datum/job/magos_biologis, /datum/job/magos_explorator, /datum/job/guard_captain, /datum/job/noble_guest, /datum/job/sea, /datum/job/enforcer, /datum/job/enforcer_sergeant, /datum/job/guardsman, /datum/job/merchant, /datum/job/submap/skrellscoutship_crew, /datum/job/submap/skrellscoutship_crew/leader, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

#define UNIFORMED_BRANCHES list(/datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet)

#define CIVILIAN_BRANCHES list(/datum/mil_branch/civilian, /datum/mil_branch/solgov)

#define SOLGOV_BRANCHES list(/datum/mil_branch/expeditionary_corps, /datum/mil_branch/fleet, /datum/mil_branch/solgov)

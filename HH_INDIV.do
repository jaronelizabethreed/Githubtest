clear
use "R:\Project\EPAR\Nigeria LSMS\Post-Planting_Ag_Data\Post Planting Wave 1\Household\sect1_plantingw1.dta" 

egen hhmembercount = count(indiv), by(hhid)
label hhmembercout HH_memberscount

collapse (max) hhmembercount, by(hhid)

save "R:\Project\EPAR\Nigeria LSMS\Merged data\HH_INDIV_Collapsed_HH.dta", replace

% Company Knowledge Base

job(computer_wizard,60000).
job(computer_programmer,40000).
job(computer_programmer,35000).
job(computer_technician,25000).
job(computer_programmer_trainee,30000).
job(administration_big_wheel,150000).
job(accounting_chief_accountant,75000).
job(accounting_scrivener,18000).
job(administration_secretary,25000).

places(slumerville,ridge_road).
places(cambridge,mass_ave).
places(cambridge,ames_street).
places(boston,bay_state_road).
places(slumerville,pine_tree_road).
places(swellesley,top_heap_road).
places(weston,shady_lane).
places(allston,n_harvard_street).
places(slumerville,onion_sqare).

address(ben_bitdiddle,10,ridge_road).
address(alyssa_hacker,78,mass_ave).
address(cy_d_fect,3,ames_street).
address(lem_e_tweakit,22,bay_state_road).
address(louis_reasoner,80,pine_tree_road).
address(oliver_warbucks,-,top_heap_road).
address(iban_scrooge,10,shady_lane).
address(robert_cratchet,16,n_harvard_street).
address(dewitt_aull,5,onion_sqare).

alternate(computer_wizard,computer_programmer).
alternate(computer_wizard,computer_technician).
alternate(computer_programmer,computer_programmer_trainee).
alternate(administration_secretary,administration_big_wheel).

employee(ben_bitdiddle,computer_wizard).
employee(alyssa_hacker,computer_programmer).
employee(cy_d_fect,computer_programmer).
employee(lem_e_tweakit,computer_technician).
employee(louis_reasoner,computer_programmer_trainee).
employee(iban_scrooge,accounting_chief_accountant).
employee(robert_cratchet,accounting_scrivener).
employee(oliver_warbucks,administration_big_wheel).
employee(dewitt_aull,administration_secretary).

supervise(ben_bitdiddle,alyssa_hacker).
supervise(ben_bitdiddle,cy_d_fect).
supervise(ben_bitdiddle,lem_e_tweakit).
supervise(alyssa_hacker,louis_reasoner).
supervise(iban_scrooge,robert_cratchet).
supervise(oliver_warbucks,dewitt_aull).
supervise(oliver_warbucks,iban_scrooge).
supervise(oliver_warbucks,ben_bitdiddle).

department(ben_bitdiddle,computer).
department(alyssa_hacker,computer).
department(cy_d_fect,computer).
department(lem_e_tweakit,computer).
department(louis_reasoner,computer).
department(iban_scrooge,accounting).
department(robert_cratchet,accounting).
department(oliver_warbucks,administration).
department(dewitt_aull,administration).

manages(computer,ben_bitdiddle).
manages(accounting,iban_scrooge).
manages(administration,oliver_warbucks).

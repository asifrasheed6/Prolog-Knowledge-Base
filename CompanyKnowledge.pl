% Company Knowledge Base
address(ben_bitdiddle,10,ridge_road,slumerville).
address(alyssa_hacker,78,mass_ave,cambridge).
address(cy_d_fect,3,ames_street,cambridge).
address(lem_e_tweakit,22,bay_state_road,boston).
address(louis_reasoner,80,pine_tree_road,slumerville).
address(oliver_warbucks,-,top_heap_road,swellesley).
address(iban_scrooge,10,shady_lane,weston).
address(robert_cratchet,16,n_harvard_street,allston).
address(dewitt_aull,5,onion_sqare,slumerville).

alternate(computer_wizard,computer_programmer).
alternate(computer_wizard,computer_technician).
alternate(computer_programmer,computer_programmer_trainee).
alternate(administration_secretary,administration_big_wheel).

employee(ben_bitdiddle,computer_wizard,60000).
employee(alyssa_hacker,computer_programmer,40000).
employee(cy_d_fect,computer_programmer,35000).
employee(lem_e_tweakit,computer_technician,25000).
employee(louis_reasoner,computer_programmer_trainee,30000).
employee(iban_scrooge,accounting_chief_accountant,150000).
employee(robert_cratchet,accounting_scrivener,75000).
employee(oliver_warbucks,administration_big_wheel,18000).
employee(dewitt_aull,administration_secretary,25000).

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

% Rules
neighbour(Employee1,Employee2):-address(Employee1,_,_,Town),address(Employee2,_,_,Town),not(Employee1=Employee2). % neighbours if the employees are from the same town

wheel(Supervisor):-supervise(Supervisor,Employee),supervise(Employee,_). % wheel if supervises a supervisor

outranked(Employee,Boss):-supervise(Boss,Employee);(supervise(Supervisor,Employee),outranked(Supervisor,Boss)). % outranked by boss is he is a direct supervisor or if he outranks the employee's supervisor

replace(Employee1,Employee2):-(employee(Employee1,Job,_),employee(Employee2,Job,_),not(Employee1=Employee2));(employee(Employee1,Job1,_),employee(Employee2,Job2,_),alternate(Job1,Job2)). % Checks if Employee1 could replace Employee 2

bigshot(Employee):-supervise(Supervisor,Employee),department(Employee,Department),not(department(Supervisor,Department)). % bigshot if supervisor is not from the same department

indispensable(Employee,Employee2):-not(replace(Employee2,Employee)). % indispensable if there is no Employee2 to replace Employee

% Meeting information (time in 24 hours)
meetings(accounting,monday,9).
meetings(administration,monday,10).
meetings(computer,wednesday,14).
meetings(administration,friday,13).
% Company wide meeting on wednesday at 4pm:
meetings(accounting,wednesday,16).
meetings(computer,wednesday,16).
meetings(administration,wednesday,16).

% getmeeting retrieves all meetings for the given employee
getmeeting(Employee):-meetings(Department,Day,Time),department(Employee,Department),write('Day:'),write(Day),write(', Time:'),write(Time).

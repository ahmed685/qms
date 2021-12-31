dtmc
	//probability constants with old presumed values as comment
	const double p1;
	const double p4;
	const double p5;
	const double p9;
	const double p10;
	const double p14;
	const double p15;
	const double p19;
	const double p20;
	const double p22;
	const double p28;
	const double p31;
	
module qms_1

	// states
	s : [0..38] init 0;
	
	[] s=0 -> (s'=1);
	[] s=1 -> p1 : (s'=2) + 1-p1 : (s'=3);
	[] s=2 -> (s'=4);
	[] s=3 -> (s'=4);
	[] s=4 -> p4 : (s'=5) + (1-p4)/2 : (s'=9) + (1-p4)/2 : (s'=14);
	[] s=5 -> p5 : (s'=6) + 1-p5 : (s'=7);
	[] s=6 -> (s'=36);
	[] s=7 -> (s'=8);
	[] s=8 -> (s'=19);
	[] s=9 -> p9 : (s'=10) + (1-p9)/2 : (s'=11) + (1-p9)/2 : (s'=12);
	[] s=10 -> p10 : (s'=11) + 1-p10 : (s'=12);
	[] s=11 -> (s'=13);
	[] s=12 -> (s'=36);
	[] s=13 -> (s'=19);
	[] s=14 -> p14 : (s'=15) + (1-p14)/2 : (s'=16) + (1-p14)/2 : (s'=17);
	[] s=15 -> p15 : (s'=16) + 1-p15 : (s'=17);
	[] s=16 -> (s'=18);
	[] s=17 -> (s'=36);
	[] s=18 -> (s'=19);
	[] s=19 -> p19 : (s'=34) + 1-p19 : (s'=20);
	[] s=20 -> p20 : (s'=21) + 1-p20 : (s'=26);
	[] s=21 -> (s'=22);
	[] s=22 -> p22 : (s'=23) + 1-p22 : (s'=24);
	[] s=23 -> (s'=25);
	[] s=24 -> (s'=25);
	[] s=25 -> (s'=33);
	[] s=26 -> (s'=27);
	[] s=27 -> (s'=28);
	[] s=28 -> p28 : (s'=29) + 1-p28 : (s'=30);
	[] s=29 -> (s'=33);
	[] s=30 -> (s'=31);
	[] s=31 -> p31 : (s'=32) + 1-p31 : (s'=33);
	[] s=32 -> (s'=34);
	[] s=33 -> (s'=36);
	[] s=34 -> (s'=35);
	[] s=35 -> (s'=36);
	[] s=36 -> (s'=37);
	[] s=37 -> (s'=38);


endmodule
rewards "transactions"
	true : 1;
endrewards

// labels
label "Start_Registration" = (s=0); 

label "Suspect_for_covid" = (s=5); 
label "Suspect_for_chickenpox" = (s=9); 
label "Suspect_for_measles" = (s=14); 

label "Covid_confirmed" = (s=7); 
label "Chicken_pox_confirmed" = (s=11); 
label "Measles_confirmed" = (s=16); 

label "Checking_health_stability" = (s=19); 
label "Condition_is_stable" = (s=20); 
label "Condition_is_critical" = (s=34);
label "Bed_allocated" = (s=26); 
label "Sent_home" = (s=21); 
label "Completed_isolation_period" = (s=33); 
label "Discharged" = (s=38); 

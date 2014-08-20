// SatNOGS LNA housing

module outer() {
	cube([29,29,11], center=true);
}

module inner() {
	cube([25.5,25.5,7], center=true);
}

module sma_hole() {
	cube([30,7,7], center=true);
}

module power_hole() {
	translate([-4.5,12.5,6])
		cube([10,7,8], center=true);
}

module scrapping_top() {
	translate([0,0,7])
		cube([30,30,7], center=true);
}

module scrapping_bottom() {
	translate([0,0,-1.5])
		cube([30,30,10], center=true);
}

module nog() {
	cube([2,2,3], center=true);
}

union() {
	difference() {
		outer();
		inner();
		sma_hole();
		power_hole();
		scrapping_top();
		//scrapping_bottom();
	}
	//translate([11.75,11.75,2.5])
		//nog();
	//translate([-11.75,-11.75,2.5])
		//nog();
}

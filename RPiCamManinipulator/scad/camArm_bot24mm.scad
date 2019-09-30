// suitable for M4 bolts

module right_support(){

translate([0,7,15])
	rotate([90,0,0])
		difference() {
			cylinder(4,5,5, $fn=60);
			cylinder(4,2.3,2.3, $fn=30);
		}
translate([-4,5.55,0])
	rotate([12,0,0])
		cube([8,3.8,12.15]);

}

//bottom round section
translate([0,0,-1])
	rotate([0,0,0])
		difference() {
			cylinder(3,12,10, $fn=90);
			cylinder(4,2.3,2.3, $fn=30);
		}//difference

//right support
right_support();
//left support
mirror([0,1,0])
	right_support();

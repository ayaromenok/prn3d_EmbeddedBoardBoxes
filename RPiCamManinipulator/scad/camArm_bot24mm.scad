// suitable for M4 bolts
//bottom round section
translate([0,0,-1])
	rotate([0,0,0])
		difference() {
			cylinder(3,12,10, $fn=60);
			cylinder(4,2.3,2.3, $fn=20);
		}//difference

//right support
translate([0,7,15])
	rotate([90,0,0])
		difference() {
			cylinder(4,5,5, $fn=30);
			cylinder(4,2.3,2.3, $fn=30);
		}
translate([-4,6,0])
	rotate([10,0,0])
		cube([8,3,13]);


//left support
translate([0,-3,15])
	rotate([90,0,0])
		difference() {
			cylinder(4,5,5, $fn=30);
			cylinder(4,2.3,2.3, $fn=30);
		}
translate([-4,-9,0])
	rotate([-10,0,0])
		cube([8,3,13]);


difference() {
	translate([-5,-5,0])
		cube([174.9,15,9]);

	translate([-1,-1,3])
		cube([166.9,15,3]);

	//holes
	translate([4,4,0])
		cylinder(10,2,2, $fn=16);
	translate([160.9,4,0])
		cylinder(10,2,2, $fn=16);
}//difference

difference() {
	translate([-5,-5,0])
		cube([174.9,15,6]);

	translate([-1,-1,3])
		cube([166.9,15,3]);

	//holes
	translate([4,4,0])
		cylinder(10,2,2, $fn=16);
	translate([160.9,4,0])
		cylinder(10,2,2, $fn=16);
}//difference

translate([84.3,-20,0])
difference(){
	cylinder(9,15,18,$fn=60);
	cylinder(15,2.3,2.3,$fn=16);
	cylinder(8,12,8,$fn=40);
}//difference
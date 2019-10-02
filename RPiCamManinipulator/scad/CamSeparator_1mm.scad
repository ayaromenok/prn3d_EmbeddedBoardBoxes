height = 1.2;//mm

difference(){
	union(){
		translate([0,0,0])
			cylinder(height,2.5,2.5, $fn=30);
		translate([21,0,0])
			cylinder(height,2.5,2.5, $fn=30);
		translate([0,12.5,0])
			cylinder(height,2.5,2.5, $fn=30);
		translate([21,12.5,0])
			cylinder(height,2.5,2.5, $fn=30);
	}//union

	translate([0,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([0,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);
}

translate([-3,-1,0])
	minkowski(){
		cube([1,16.5,height/2]);
		cylinder(height/2,0.5,0.5, $fn=12);
	}
translate([23,-1,0])
	minkowski(){
		cube([1,16.5,height/2]);
		cylinder(height/2,0.5,0.5, $fn=12);
	}
translate([-3,14.5,0])
	minkowski(){
		cube([27,1,height/2]);
		cylinder(height/2,0.5,0.5, $fn=12);
	}
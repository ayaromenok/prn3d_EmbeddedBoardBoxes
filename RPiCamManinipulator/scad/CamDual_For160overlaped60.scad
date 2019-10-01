//CamDual 160 degree overlaped 60 degree
stereoBase = 64; //mm  range: 30..170
angle 		= 60; //
mink_r = 2.7;

module cam_holes(){
	translate([0,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([0,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);
} // module

module cam_side() {
	rotate([0,angle,0]){
		difference(){
			translate([mink_r,0,0])
				scale([1,1,0.2])
					minkowski(){
						cube([(stereoBase/2)*sin(angle)+10.5-mink_r,12.5,5]);
						sphere(mink_r,$fn=32);
						//cylinder(r=3.5,h=0.35, $fn=20);
					}//minkowski
			translate([(stereoBase/2)*sin(angle)-10.5-mink_r,0,-1])
				cam_holes();
		}//difference
	}//rotate
} //module

cam_side();
mirror([0,0,1])
	cam_side();
	

//support
rotate([0,90,0])
translate([-2.7,mink_r,15]){
	rotate([0,90,0])
		difference() {
			cylinder(5.4,5,5, $fn=30);
			cylinder(7,2.3,2.3, $fn=30);
		}//difference

	translate([mink_r,-mink_r,-12])
		minkowski(){
			cube([0.01,4,7]);
			sphere(mink_r, $fn=32);
		}//minkowski

/*	translate([2.7,0,-9])
		scale([(stereoBase/3.7),1,1])
			rotate([0,0,45])	
				cylinder(4,3,1,$fn=4);
*/
}
//*/
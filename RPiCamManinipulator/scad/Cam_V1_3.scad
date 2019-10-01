//Cam V1_3
//plate
difference(){
	translate([0,0,0])
		minkowski()	{
  			cube([21,12.5,0.65]);
  			cylinder(r=2.5,h=0.35, $fn=20);
		}//minkowski

	//holes
	translate([0,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,0,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([0,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);
	translate([21,12.5,0])
		cylinder(5,1.5,1.5, $fn=12);

}


//support
translate([8,6.25,10]){
	rotate([0,90,0])
		difference() {
			cylinder(5.4,5,5, $fn=30);
			cylinder(7,2.3,2.3, $fn=30);
		}//difference

	translate([0,-4,-10])
		cube([5.4,8,7]);

	translate([2.7,0,-9])
		scale([(5),1,1])
			rotate([0,0,45])	
				cylinder(4,3,1,$fn=4);
}

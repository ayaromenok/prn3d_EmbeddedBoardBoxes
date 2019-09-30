length = 50; //mm, distance between rotat axes: min - 20 mm, max - printable size ;)

//right top
module right_top(){
	translate([0,7,length])
		rotate([90,0,0])
			difference() {
				cylinder(4,5,5, $fn=30);
				cylinder(4,2.3,2.3, $fn=30);
			}//difference

	difference(){
		translate([-5,-0.5,(length-16.5)])
			rotate([-15,0,0])
				cube([10,2.5,17]);
		translate([0,8,length])
			rotate([90,0,0])
				cylinder(5,2.3,2.3, $fn=20);
		} //difference

}

rotate([0,90,0]){
//botttom section
	translate([0,2.8,0])
		rotate([90,0,0])		
			difference() {
				cylinder(5.4,5,5, $fn=30);
				cylinder(7,2.3,2.3, $fn=30);
			}//difference


//arm itself
	translate([-5,-2,0])
		difference(){
			cube([10,4,length-17]);
			translate([5,5,0])
				rotate([90,0,0])
					cylinder(7,2.3,2.3, $fn=30);
		}//difference
	translate([0,2,length-13.5])
		rotate([0,270,90])
			scale([7,5.71,1])
			linear_extrude(4)
	 		circle(r=1, $fn=3);

//right top	
	right_top()	;
//left top
	mirror([0,1,0])
		right_top();

} //rotate hole section for printing
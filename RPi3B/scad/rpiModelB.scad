bottom_tk = 2;			//bottom ThicKness
side_tk = 2;			//side ThicKness
support_tk = 2; 		//support ThicKness
box_height_int = 30;
screw_size = 2.5; 		//M2.5

mnk_r_main = 4; 		// must be > 3
mnk_r_front = 1;
mnk_r_right = 1;
mnk_r_left = 2;

difference(){
linear_extrude(box_height_int+bottom_tk+support_tk)
	minkowski(){
		square([79,50]);
		circle(mnk_r_main+side_tk, $fn=40);
	}//minkowski external 

translate([0,0,bottom_tk])
linear_extrude(box_height_int+bottom_tk+support_tk)
	minkowski(){
		square([79,50]);
		circle(mnk_r_main, $fn=24);
	}//minkowski internal


//SD card + DSI(Display)
translate([-8,20-mnk_r_left,0])
	minkowski(){
		cube([10,15,14+support_tk]);
		sphere(mnk_r_left, $fn=mnk_r_left*8);
	}
//power
translate([1.5,-(mnk_r_main+side_tk ),bottom_tk+support_tk])
	minkowski(){
		cube([12,10,8]);
		sphere(mnk_r_front,$fn=mnk_r_front*8);
	}
//hdmi
translate([18.5,-(mnk_r_main+side_tk),bottom_tk+support_tk])
	minkowski(){
		cube([21,10,12]);
		sphere(mnk_r_front,$fn=mnk_r_front*8);
	}
//audio
translate([50.5,-(side_tk),bottom_tk*2+support_tk+2])
	rotate([90,0,0])
		cylinder(10,4,4, $fn=32);


//Ethernet
translate([80,-1,bottom_tk+support_tk])
	minkowski(){
		cube([10,17-mnk_r_right*2,18-mnk_r_right*2]);//Z=13.5
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}
//USBx2
translate([80,18,bottom_tk+support_tk])
	minkowski(){
		cube([10,16.5-mnk_r_right*2,20-mnk_r_right*2]);//Z=16.0
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}
//USBx2
translate([80,36,bottom_tk+support_tk])
	minkowski(){
		cube([10,16.5-mnk_r_right*2,20-mnk_r_right*2]);//Z=16.0
		sphere(mnk_r_right,$fn=mnk_r_right*8);
	}

// holes position: 58, 49
translate([0, 0, -1])
	cylinder(bottom_tk*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([0, 49, -1])
	cylinder(bottom_tk*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 0, -1])
	cylinder(bottom_tk*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
translate([58, 49, -1])
	cylinder(bottom_tk*3, screw_size/2+0.2, screw_size/2+0.2, $fn=16);

// Nut holes from bottom, position: 58, 49
translate([0, 0, -1])
	cylinder(3, screw_size+0.4, screw_size+0.4, $fn=6);
translate([0, 49, -1])
	cylinder(3, screw_size+0.4, screw_size+0.4, $fn=6);
translate([58, 0, -1])
	cylinder(3, screw_size+0.4, screw_size+0.4, $fn=6);
translate([58, 49, -1])
	cylinder(3, screw_size+0.4, screw_size+0.4, $fn=6);

//top holes
for (i =[5:10:75]){
	translate([(i),-mnk_r_main,bottom_tk+box_height_int+support_tk-2.5])
		scale([1,0.6,0.5])
		sphere(3, $fn=30);
	translate([(i),50+mnk_r_main,bottom_tk+box_height_int+support_tk-2.5])
		scale([1,0.6,0.5])
		sphere(3, $fn=30);
	}

} //difference box



// board support on top of holes at 0, 0, 58, 49
difference(){
	translate([-0.5, -0.5, bottom_tk])
		cylinder(support_tk, 3.5, 3.5, $fn=30);
	translate([0, 0, bottom_tk-1])
		cylinder(support_tk*2, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
}
difference(){
	translate([-0.5, 49.5, bottom_tk])
		cylinder(support_tk, 3.5, 3.5, $fn=30);
	translate([0, 49, bottom_tk-1])
		cylinder(support_tk*2, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
}

difference(){
	translate([58, -0.5, bottom_tk])
		cylinder(support_tk, 3.5, 3.5, $fn=30);
	translate([58, 0, bottom_tk-1])
		cylinder(support_tk*2, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
}

difference(){
	translate([58, 49.5, bottom_tk])
		cylinder(support_tk, 3.5, 3.5, $fn=30);
	translate([58, 49, bottom_tk-1])
		cylinder(support_tk*2, screw_size/2+0.2, screw_size/2+0.2, $fn=16);
}


//holes position
/*
translate([0, 0, 0])
translate([0, 49, 0])
translate([58, 0, 0])
translate([58, 0, 0])
*/


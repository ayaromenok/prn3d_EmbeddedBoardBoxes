//Box connector for JetsonNano
// M4 holes
difference(){
	translate([2,0,0])
		cube([26,81,3]);
	translate([32,-1,-1])
		cube([55,80,5]);
	translate([22,5,-1])
		cube([55,80,5]);

translate([12,12,-1])
	cylinder(5,2.3,2.3, $fn=20);
}

//connectors
for (i =[5:10:30]){
	translate([(i),0,1.5])
		scale([1,0.6,0.5])
			sphere(2.4, $fn=30);	
}
for (i =[5:10:20]){
	translate([(i),81,1.5])
		scale([1,0.6,0.5])
			sphere(2.4, $fn=30);	
}



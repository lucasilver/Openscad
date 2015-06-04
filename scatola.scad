faccette=10;

difference()
{

minkowski()
{	
	
	cube([20,30,20],center=true);
	cylinder(h=0.1, r=0.1,center=true, $fn=faccette);
	rotate([90,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	rotate([0,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	
}
translate([0,0,2])
minkowski()
{	
	
	cube([19,29,19.9], center=true);
	cylinder(h=0.1, r=0.1,center=true, $fn=faccette);
	rotate([90,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	rotate([0,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	
}
}

difference()
{

minkowski()
{	
	translate([0,0,2])
	cube([20,30,20], center=true);
	cylinder(h=0.1, r=0.1,center=true, $fn=faccette);
	rotate([90,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	rotate([0,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	
}

minkowski()
{	
	
	cube([21,31,20],center=true);
	cylinder(h=0.1, r=0.1,center=true, $fn=faccette);
	rotate([90,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	rotate([0,90,0])cylinder(h=0.1, r=4,center=true, $fn=faccette);
	
}
}

width = 60.5;
length = 93.5;
thickness = 2;

total_height = 65;

// Raspberry PI
*translate([43.4+thickness,28.5+thickness,6.5]) {
	import("../RaspberryPi_B.stl");
}

// ----- Modules -----//

// Base box
module basebox() {
	difference() {
		cube([length+(thickness*2),(width+(thickness*2))-2.5,14]);
		
		translate ([thickness, thickness, thickness]) {
			cube([length,width-2.5,28]);
		}
	}
}

// Top box
module topbox() {
	translate([0,0,14]) {
		difference() {
			cube([length+(thickness*2),(width+(thickness*2))-2.5,45]);
			
			translate ([thickness, thickness, -thickness]) {
				cube([length,width-2.5,45]);
			}
		}
	}
}

// Hole - Jack
module jack() {
	translate ([76,4,11.5]) {//67.9
		rotate([90,90,0]) cylinder(h=45, r1=2.5, r2=23,$fn=25);
	}
}

//Hole - Sata
module sata(){
	translate ([46.4,-1,35])cube([17,4,6]);
}

//Hole - Wifi
module wifi(){
	translate([-1,50,40])rotate([0,90,0])cylinder(h=4,r2=3,r1=3.5, $fn=25);
}

//Hole - Bluetooth
module bluetooth(){
	translate([-1,27,35])cube([4,15,2]);
}

//Hole - SPIDIF
module spidif(){
	translate([-1,5,35])cube([4,15,15]);
}
// Hole - Digital
module digital() {
	translate ([48.6,62.5,16.2]) {
		rotate([90,90,0]) cylinder(3,6,5,$fn=25);
	}
}

// Hole - HDMI
module hdmi() {
	translate ([40.4,-1,10.5]) {
		hull(){
		cube([15,4,4]);
		translate([2.5,0,-2.5]) cube([10,4,1]);
		}
	}
}

// Hole - Ethernet
module ethernet() {
	union() {
	translate ([94,5,11.5]) cube([5,14,8.5]);
	translate ([94,8.5,9.7]) cube([5,7,2]);
	translate ([94,9.5,8.5]) cube([5,5,2]);
	}
}

// Hole - USB
module usb() {
	translate ([94,26.6,17.5]) cube([5,13.1,5.5]);
	translate ([94,26.6,8.8]) cube([5,13.1,5.5]);
}

// Hole - Power
module power() {
	hull() {
		translate ([20,-1,9]) cube([7.9,8,2]);
		translate ([21,-1,8]) cube([5.9,8,2]);
	}
}

// Hole - SD Card
module sdcard() {
	translate ([-1,19,3]) cube([8,28,3.5]);
}

// Ethernet edge
module ethernet_edge() {
	cube([8.5,23,12]);
}

// Ventilation
module vents() {
  cube([2,10,10]);
  translate([4,0,0]) cube([2,10,10]);
  translate([8,0,0]) cube([2,10,10]);
}


// Elements //

difference() {
	union() {
		union() {
			basebox();
			/*difference() {
				translate ([94,0,2]) ethernet_edge();
				
			}*/
		}
	/*translate ([2,58,2]) cube([20,2,4]);
	translate ([2,2,2]) cube([20,2,4]);
	translate ([75,58,2]) cube([20,2,4]);
	translate ([68,2,2]) cube([20,2,4]);*/
	}
	jack();
	//digital();
	hdmi();
	//translate ([91,-1,-1]) cube([8,22,18]); // Inset in Ethernet edge
	usb();
	translate ([94,44.5,8.5]) cube([5,13.1,5.5]);
	power();
	sdcard();
	ethernet();
}

difference() {
	union() {
		union() {
			topbox();
			/*difference() {
				translate ([94,0,14]) ethernet_edge();
				
			}*/
		}
	/*translate ([68,2,9]) cube([20,2,17]);
	translate ([18,2,9]) cube([20,2,17]);
	translate ([75,58,9]) cube([20,2,17]);
	translate ([18,58,9]) cube([20,2,17]);
	translate ([2,20,9]) cube([2,20,17]);*/
	}

	jack();
	//digital();
	hdmi();
	//translate ([91,-1,13]) cube([8,22,18]); // Inset in Ethernet edge
	usb();
	ethernet();
	translate([5,-1,19]) vents();
	translate([5,53,19]) vents();
	translate ([94,44.5,17.5]) cube([5,13.1,5.5]);
	translate([0,0,19.9])usb();
	translate([0,-20.5,19.9])usb();
	sata();
	translate([-45,0,27])jack();
	translate([-55,0,27])jack();
	wifi();
	bluetooth();
	spidif();
}



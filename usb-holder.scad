// well i really need to learn about scad modules :)
difference() {
    difference() {
        union() {
            difference() {
                union() {
                    cylinder(11, 17, 17, true, $fn=200);    
                    translate([0, -13, 0]) {
                        cube([54, 8, 11], true);
                    }
                }

                union() { // Screw holes
                    translate([22, -9, 0]) {
                        rotate([90, 0, 0]) {    
                            union() {
                                cylinder(3, 4, 1.75, $fn=25);
                                cylinder(10, 1.95, 1.95, $fn=25);
                            }
                        }
                    }

                    translate([-22, -9, 0]) {
                        rotate([90, 0, 0]) {    
                            union() {
                                cylinder(3, 4, 1.75, $fn=25);
                                cylinder(10, 1.95, 1.95, $fn=25);
                            }
                        }
                    }
                }
            }
            union() {
                translate([10.5, -7, 0]) {
                    cube([13, 12, 11], true);
                }
                translate([-10.5, -7, 0]) {
                    cube([13, 12, 11], true);
                }
            }
        }
        cylinder(11, 13, 13, true, $fn=200);
    }
    translate([0, 14, 0]) {
        cube([6.5,11,11], true);
    } 
    
}
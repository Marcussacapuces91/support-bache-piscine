/**
 * Pièces support couverture piscine
 */
 
 module A() {
     translate([75,0,-40]) difference() {
        cube([100,80,75], center=true);
        hull() for (z=[20, 50]) translate([0,0,-12.5+z]) rotate([0,90,0]) cylinder(d=50,h=101,$fn=50,center=true);
    }
};

module B() {
    translate([0,0,10]) cube([230,60,20],center=true);
    
    hull() {
        translate([30+45,0,0.5]) cube([100,80,1],center=true);
        translate([25+45,0,10]) cube([90,60,1],center=true);
    }
    
    difference() {
        hull() {
            translate([-60-45,0,10]) cube([20,60,20],center=true);
            translate([-60-45,0,160]) rotate([90,0,90]) cylinder(d=60,h=20,$fn=50,center=true);
        }
        translate([-60-45,0,160]) rotate([90,0,90]) cylinder(d=20,h=21,center=true);
    }
    
    translate([-60-45+sqrt(167),0,10+sqrt(167)]) rotate([0,45,0]) cube([sqrt(800),60,20],center=true);

}

A();
B();
 
 
 
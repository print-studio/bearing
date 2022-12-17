$fn = 100;

rotate_extrude(){
  difference(){
    union(){
        translate([10,0,0]) square ([2,4], center = true);
        translate([14,0,0]) square ([2,4], center = true);
      }
    translate([12,.5,0]) circle(3);
    }
}

for (ball = [0:30:360]) {
    rotate([0,0,ball])
    translate([12, 0, 0])
    resize(newsize=[5.25,5,7])
    sphere(r=3);
    }

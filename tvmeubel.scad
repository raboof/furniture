w = 80;
h = 40;
d = 380;

color("darkred") {
// bottom
cube([430+2*h, d, h]);

// left side
translate([0, 0, h+1]) {
  cube([h, d, 60+2*10-2]);
}

// middle
translate([0, 0, h+60+2*10]) {
  cube([430+2*h, d, h]);
}

// right side
translate([h+430, 0, h+10+60+10+h+1]) {
  cube([h, d, 80+2*10-2]);
}

// top
translate([0, 0, h+60+2*10+h+80+2*10]) {
  cube([430+2*h, d, h]);
}
}

color([.4,.4,.4]) {
  // dvd
  translate([h+h/2, 10, h+10]) {
    cube([430, 280, 60]);
  }
  // amp
  translate([h/2, 10, h+10+60+10+h+10]) {
    cube([430, 300, 80]);
  }
}
color([1,1,1]) {
   translate([45,20,60+80+3*h+4*10+20]) {
    cube([410, 320, 20]);
  } 
}
color([.8,.8,.8]) {
   translate([45,20,60+80+3*h+4*10+20+20]) {
    cube([410, 320, 70]);
  } 
}
w = 70;
h = 33;

// a
translate([5*w-h-w, 4.5*w-h, 0]) {
  cube([w, h, 6*w]);
}

// b
translate([0, w-h, 0]) {
  cube([w, h, 6*w-h]);
}

// c
translate([0, 4.5*w-h, 6*w]) {
  cube([5*w-h, h, w]);
}

// d
translate([5*w-h, w, 3*w]) {
  cube([h, 3.5*w, w]);
}

// e
translate([0, w-h, 6*w-h]) {
  cube([w, 4.5*w-(w-h), h]);
}

// f
translate([5*w-h, 0, 0]) {
    cube([h, w, 4*w]);
}

// g
translate([w, 4.5*w-h, 0]) {
    cube([3*w-h, h, w]);
}

// h
translate([w, 0, 4*w-h]) {
    cube([4*w-h, 4.5*w-h, h]);
}

// speaker 
//color([0,0,0]) {
//    translate([w+7, 4.5*w-h-280, 4*w]) {
//        cube([199, 280, 342]);
//    }
//}

// waxinelichtjes
/*
color([1,1,1]) {
    translate([w/2, 1.5*w, 6*w]) {
        cylinder(15, 20, 20);
    }
    translate([4.5*w, w, 4*w]) {
        cylinder(15, 20, 20);
    }
}
*/
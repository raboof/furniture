// boekenkast
// DVD's: 19cm hoog, 15cm diep, 34+34+6+4+10+14=~1m
// boeken: max 30cm hoog, max 23 diep, 34+34+11=80cm

// Maybe: make everything 2:3?
// .... or 1:618 (or will that make ordering difficult?)

w = 4;
bookdepth = 24;
bookheight = 30;
dvdheight = 19; // vak 20
translate([0, bookdepth-16, bookheight+w]) {
  //cube([50, 16, 19]);
}
translate([50, bookdepth-16, bookheight+w]) {
  //cube([50, 16, 19]);
}
splitat = (100-w)*2/5;
translate([0,0,0]) {
  //cube([splitat, bookdepth, bookheight]);
}
lessdepth = w;
translate([splitat+w, lessdepth, 0]) {
  // 16cm extra to make widths match
  //cube([16+80-splitat, bookdepth-lessdepth, bookheight]);
}

color([.8,.8,.8]) {
  translate([0, 0, -w]) {
    cube([splitat+w, bookdepth, w]);
  }
  translate([0, 0, bookheight]) {
    cube([splitat+w, bookdepth, w]);
  }
  translate([splitat+w, lessdepth, -w]) {
    cube([100-w-splitat, bookdepth-lessdepth, w]);
  }
  translate([splitat+w, lessdepth, bookheight]) {
    cube([100-w-splitat, bookdepth-lessdepth, w]);
  }
  translate([0, bookdepth-16, bookheight+w+20]) {
    cube([100, 16, w]);
  }
}
color([.5,.5,.5]) {
  translate([-w, 0, -w]) {
    cube([w, bookdepth, w+bookheight+w]);
  }
  translate([splitat, 0, 0]) {
    cube([w, bookdepth, bookheight]);
  }
  translate([100, lessdepth, -w]) {
    cube([w, bookdepth-lessdepth, w+bookheight+w]);
  }
  translate([-w, bookdepth-16, bookheight+w]) {
    cube([w, 16, 20+w]);
  }
  translate([100, bookdepth-16, bookheight+w]) {
    cube([w, 16, 20+w]);
  }
}
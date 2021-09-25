d1 = 18;
d2 = 28;

al = 422;
ab = 45;
ad = d2;

// legs
module a()
  cube([ab, ad, al]);
  
a();

translate([400-ab, 0, 0])
  a();

translate([0, 400-ad, 0])
  a();

translate([0, 400-ad, 0])
translate([400-ab, 0, 0])
  a();

bl = 412;
bb = 45;
bd = d1;

// High lat
module b()
  cube([bl, bd, bb]);

translate([-(al-bl)/2, ad-(bd/2), al-cd-bb])
  b();

translate([-(al-bl)/2, 400-ad-(bd/2), al-cd-bb])
  b();

cl = 388;
cd = d1;
cb = d1;

module c()
  cube([cd, cl, cb]);

translate([ab, (400-cl)/2, al-cd])
  c();

translate([400-ab-cd, (400-cl)/2, al-cd])
  c();

translate([ab, (400-cl)/2, al-cd-bb-cd])
  c();

translate([400-ab-cd, (400-cl)/2, al-cd-bb-cd])
  c();


dw = 388;
dh = 388;
dd = 18;

alpha = atan(1/1.6);
lz = cos(alpha)*dw;
oz = lz * sin(alpha);
az = oz / tan(alpha);

translate([(400-dw)/2, (400-dw)/2, al])
  cube([dw, dh, dd]);

module flap()
  hull()
  polyhedron(
  [
    [0, 0, 0],
    [dw, 0, 0],
    [az, oz, 0],
    [0, 0, dd],
    [dw, 0, dd],
    [az, oz, dd],
  ],
  [
    [0, 1, 2],
    [0, 1, 4, 3],
    [1, 2, 5, 4],
    [2, 0, 3, 5],
    [3, 4, 5]
  ],
  10
  );
  
//flap();
  
 translate([(400-dw)/2, (400-dw)/2, al+dd]) {
  flap();
  //rotate([180, 0, 0]) flap();
  
  //translate([dw,0,0]) rotate([0,0,90]) flap();
  //translate([dw,0,0]) rotate([180, 0, 90]) flap();
  translate([dw,0,0]) rotate([150, 0, 90]) flap();
 
  //translate([dw,dw,0]) rotate([0,0,180]) flap();
  translate([dw,dw,0]) rotate([170, 0, 180]) flap();
 
  translate([0,dw,0]) rotate([0,0,270]) flap();
  //translate([0,dw,0]) rotate([180, 0, 270]) flap();
 }
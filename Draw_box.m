function Draw_box(shape,com)
 vert = [
   0      0      0;
   0      shape(2) 0;
   shape(1) shape(2) 0;
   shape(1) 0      0;
   0      0      shape(3);
   0      shape(2) shape(3);
   shape(1) shape(2) shape(3);
   shape(1) 0      shape(3);
]';


vert(1,:) = vert(1,:) -shape(1)/2 + com(1);
vert(2,:) = vert(2,:) -shape(2)/2 + com(2);
vert(3,:) = vert(3,:) -shape(3)/2 + com(3);
face = [
   1 2 3 4;
   2 6 7 3;
   4 3 7 8;
   1 5 8 4;
   1 2 6 5;
   5 6 7 8;
]';
DrawPolygon(vert, face,0);
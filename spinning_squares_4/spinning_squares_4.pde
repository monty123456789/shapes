void setup() {
  background(0);
  size(720,440, P3D);
}
float x = 0.0;
int i = 1;


void draw() {
  stroke(255);
  noFill();
  camera(width/2, height/2, height/2 / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  //translate(width/2,height/2);
     background(0);
 


  for(i = 1; i < width; i= i+3) {
        //background(0);
  lights();
  pushMatrix();
    translate(width/2,height/2);
    //strokeWeight(5);
  scale(.25);



        float d = dist(0,0, i, i);
        print(mouseX + "    ");
        float c = map(d, 0, width, 255, 0);
        stroke(c, 0, 255-c);
        noFill();
        x += 1;
        //REMOVE RADIANS FOR DIFFERENT RESULTS
        //rotate((radians(x/i/10)));
              //  square(i,i,i);

   // background(0);
        //CHANGE 0 TO i FOR DIFFERENT RESULTS
      strokeWeight(10);
        //circle(i,i,i);
         rotate(radians(x/i/10));

       // circle(0,i,d);


        square(i,0,i);

     popMatrix();  
       
  }
}

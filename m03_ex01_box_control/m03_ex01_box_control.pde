void setup() {
	size(300,300,P3D);
}
float rx = 0;
float rz = 0;
void draw() {
	background(125);
	rx = map(mouseX,0,width,-1,1);
	rz = map(mouseY,0,height,-1,1);
	push();
	translate(width/2,height/2);
	rotateX(rz);
	rotateZ(rx);
	box(50);
	pop();
}

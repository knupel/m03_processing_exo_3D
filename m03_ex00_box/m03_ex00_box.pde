void setup() {
	size(300,300,P3D);
}

float rx = 0;
float ry = 0;
float rz = 0;
void draw() {
	background(280,100,100);
	push();
	translate(width/2,height/2);
	rotateX(rx += 0.01);
	rotateY(ry += 0.02);
	rotateZ(rz += 0.03);
	box(50);
	pop();
}

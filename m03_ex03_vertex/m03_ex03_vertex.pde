PVector [] pts = new PVector[3];

void setup() {
	size(400,400,P3D);
	create_triangle();
}

void draw() {
	background(0);
	beginShape();
	for(int i = 0 ; i < pts.length ; i++) {
		vertex(pts[i].x, pts[i].y, pts[i].z);
	}
	endShape(CLOSE);
}

void keyPressed() {
	create_triangle();
}

void create_triangle() {
	for(int i = 0 ; i < pts.length ; i++) {
		float x = random(width);
		float y = random(height);
		float z = random(-width/2,width/2);
		pts[i] = new PVector(x, y, z);
	}
}


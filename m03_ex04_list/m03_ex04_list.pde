ArrayList<PVector> list = new ArrayList<PVector>();

void setup() {
	size(400,400,P3D);
	create_triangle(list);
}

void draw() {
	background(0);
	int num_sommets = 3;
	boolean close = true;
	for(int i = 0 ; i < list.size() ; i++) {
		PVector pts = list.get(i);
		if(close) {
			close = false;
			beginShape();
		}
		vertex(pts.x, pts.y, pts.z);
		if(i%num_sommets == 0) {
			close = true;
			endShape(CLOSE);
		}	
	}
}

void keyPressed() {
	create_triangle(list);
}

void create_triangle(ArrayList<PVector> list) {
	for(int i = 0 ; i < 3 ; i++) {
		float x = random(width);
		float y = random(height);
		float z = random(-width/2,width/2);
		PVector pts = new PVector(x, y, z);
		list.add(pts);
	}
}


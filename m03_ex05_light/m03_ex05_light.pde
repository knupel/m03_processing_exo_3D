ArrayList<PVector> list = new ArrayList<PVector>();
PVector couleur = new PVector(255,0,0);
PVector dir = new PVector(0,-1,0);

void setup() {
	size(400,400,P3D);
	create_triangle(list);
}

void draw() {
	background(0);
	directionalLight(couleur.x, couleur.y, couleur.z, dir.x, dir.y, dir.z);
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
	if(key == 'n') create_triangle(list);
	if(key == 'l') create_light();
}


void create_light() {
	couleur = new PVector(random(255),random(255),random(255));
	dir = new PVector(random(-1,1),random(-1,1),random(-1,1));
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


void setup() {
	size(300,300,P3D);
}

float rx = 0;
float rz = 0;
int next = 0;
int max = 4;
void draw() {
	background(125);
	rx = map(mouseX,0,width,-1,1);
	rz = map(mouseY,0,height,-1,1);
	int size = 50;
	push();
	translate(width/2,height/2);
	rotateX(rz);
	rotateY(rx);
	switch(next) {
		case 0: 
		box(size);
		break;
		case 1:
		sphere(size);
		break;
		case 2:
		ellipse(0,0,size,size);
		break;
		default:
		square(-size/2,-size/2,size);
		break;
	}  
	pop();
}


void keyPressed() {
	if(key == 'n') {
		next++;
		if(next > max) { 
			next = 0;
		}
	}
}

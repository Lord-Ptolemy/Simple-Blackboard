var scrW = screen.width - 15;
var scrH = screen.height - 215;



void setup() {
    size(scrW, scrH);
    background(0,0,0);
    PFont fontA = loadFont("Arial");
    textFont(fontA, 8);
}

void draw() {
    markBoard();
    clearBoard();
    toolMenu();
}

void markBoard() {
    if (mousePressed == true) {
        noStroke();
        fill(255,255,255);
        ellipse(mouseX,mouseY,10,10);
    }
}

void clearBoard() {
    if (mousePressed == true && mouseX > 3 && mouseX < 30) {
    background(0,0,0);
    }
}

void toolMenu() {
    fill(200,133,16);
    rect(0,0,45,scrH); //tool box
    fill(255,255,255);
    rect(3,4,25,25); //reset button
    fill(255,0,0);
    text("Reset", 6, 20); //reset text
}

Requires Explaining and many do not understand

Junior high composite shapes not fluent

---

int numSquares = 10; // Number of squares
int squareSize = 50; // Size of each square

void setup() {
  size(800, 600); // Set the size of the canvas
  background(255); // Set the background color
  noLoop(); // Stop draw() from looping
}

void draw() {
  float spacing = (width - (numSquares * squareSize)) / (numSquares + 1); // Calculate the spacing

  for (int i = 0; i < numSquares; i++) {
    float x = spacing + i * (squareSize + spacing); // Calculate x position
    float y = height - squareSize; // y position (bottom of the page)
    rect(x, y, squareSize, squareSize); // Draw the square
  }
}
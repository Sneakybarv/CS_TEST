class Graph {
  float[] balances;
  int years;

  Graph(float[] balances, int years) {
    this.balances = balances;
    this.years = years;
  }

  void drawGraph() {
    textSize(12);
    fill(0);

    float graphX = 100;            // Graph position
    float graphY = 100;
    float graphWidth = width - 300;
    float graphHeight = height - 300;
    float maxBalance = balances[years - 1];

    // Draw axis lines
    stroke(0);
    line(graphX, graphY + graphHeight, graphX + graphWidth, graphY + graphHeight);  // X-axis
    line(graphX, graphY, graphX, graphY + graphHeight);                             // Y-axis

    // X-axis: Labels and ticks
    for (int i = 0; i < years; i++) {
      float x = graphX + (i * graphWidth / (years - 1));
      line(x, graphY + graphHeight, x, graphY + graphHeight + 5);   // Tick mark
      textAlign(CENTER);
      text("Year " + (i + 1), x, graphY + graphHeight + 20);       // Label year number
    }

    // Y-axis: Labels and ticks
    int numTicks = 5;
    for (int i = 0; i <= numTicks; i++) {
      float y = graphY + graphHeight - (i * graphHeight / numTicks);
      line(graphX - 5, y, graphX, y);                              // Tick mark
      textAlign(RIGHT);
      float balanceTick = maxBalance * i / numTicks;
      text("$" + nf((int)balanceTick, 0, 0), graphX - 10, y);      // Balance label
    }

    // Plot the line graph
    noFill();
    stroke(0, 0, 255);
    beginShape();
    for (int i = 0; i < years; i++) {
      float x = graphX + (i * graphWidth / (years - 1));
      float y = graphY + graphHeight - (balances[i] * graphHeight / maxBalance);
      vertex(x, y);
    }
    endShape();
  }
}

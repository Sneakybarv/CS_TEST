class Graph {  //The main graph
//Feilds
  float[] balances;
  
//Constructor
  Graph(float[] balances) {
    this.balances = balances;
  }
  
//Methods
  void drawGraph() {
    textSize(12);
    fill(0);

    // Graph position and dimensions
    float graphX = 100;
    float graphY = 100;
    float graphWidth = width - 300;
    float graphHeight = height - 300;

    // Find the maximum and minimum balances
    float maxBalance = Float.NEGATIVE_INFINITY;
    float minBalance = Float.POSITIVE_INFINITY;
    for (float balance : balances) {
      if (balance > maxBalance) maxBalance = balance;
      if (balance < minBalance) minBalance = balance;
    }

    float balanceRange = maxBalance - minBalance;

    // Draw axis lines
    stroke(0);
    float zeroY = graphY + graphHeight - ((0 - minBalance) * graphHeight / balanceRange);
    line(graphX, zeroY, graphX + graphWidth, zeroY); // X-axis (zero line)
    line(graphX, graphY, graphX, graphY + graphHeight); // Y-axis

    // X-axis: Labels and ticks
    for (int i = 0; i < numYears; i++) {
      float x = graphX + (i * graphWidth / (numYears - 1));
      line(x, zeroY - 5, x, zeroY + 5); // Tick mark
      textAlign(CENTER);
      text("Year " + (i + 1), x, zeroY + 20); // Label year number
    }

    // Y-axis: Labels and ticks
    int numTicks = 5;
    for (int i = 0; i <= numTicks; i++) {
      float y = graphY + graphHeight - (i * graphHeight / numTicks);
      float balanceTick = minBalance + (i * balanceRange / numTicks);
      line(graphX - 5, y, graphX, y); // Tick mark
      textAlign(RIGHT);
      text("$" + nf((int)balanceTick, 0, 0), graphX - 10, y); // Balance label
    }

    // Plot the line graph
    noFill();
    stroke(0, 0, 255);
    beginShape();
    for (int i = 0; i < numMonths; i++) {
      float x = graphX + (i * graphWidth / (numMonths - 1));
      float y = graphY + graphHeight - ((balances[i] - minBalance) * graphHeight / balanceRange);
      vertex(x, y);
    }
    endShape();
  }
}

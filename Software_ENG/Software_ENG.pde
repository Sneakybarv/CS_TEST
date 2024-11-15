import g4p_controls.*; 

// Main sketch file
Salary salary;
Graph graph;
int numYears = 10; // Number of years for projection
int numMonths = numYears*12;

// Lists of finance elements:
ArrayList<RecPayment> recPayments = new ArrayList<RecPayment>();
ArrayList<Salary> salaries = new ArrayList<Salary>();

void updateGraph() {
  float[] yearlyBalances = salary.calculateBalances(numYears);  // Get balances over 10 years
  graph = new Graph(yearlyBalances, numYears); // Update the graph with new balances
}

void setup() {
  size(1000, 600);
     // Fixed salary of 100,000 USD per year
      createGUI();
      recPayments.add(new RecPayment(100, 1));     // adds a reccuring payment of $100 every 1 month
    salary = new Salary(200000); 
  float[] yearlyBalances = salary.calculateBalances(numYears);  // Get balances over 10 years
  graph = new Graph(yearlyBalances, numYears); // Pass balances to Graph for drawing


 updateGraph();
}



void draw() {
  background(255);
  fill(0);
  textSize(12);
  graph.drawGraph(); // Display the graph using the Graph class
}

// 

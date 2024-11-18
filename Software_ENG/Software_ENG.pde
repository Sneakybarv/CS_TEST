import g4p_controls.*;

// Main sketch file
Salary salary;
Graph graph;
int numYears = 10; // Number of years for projection
int numMonths = numYears * 12;

// Lists of finance elements:
ArrayList<RecPayment> recPayments = new ArrayList<RecPayment>();
ArrayList<Salary> salaries = new ArrayList<Salary>();
ArrayList<Debt> debts = new ArrayList<Debt>();

float initalMoney;

void updateGraph() {
  float[] monthlyBalances = calculateAllPoints(); // Get balances over 10 years
  graph = new Graph(monthlyBalances);             // Update the graph with new balances
}

void setup() {
  size(1000, 600);
  createGUI();

  // Sample data
  recPayments.add(new RecPayment(100, 1));   // Recurring payment of $100 every month
  salaries.add(new Salary(50000));          // Annual salary of $200,000
  debts.add(new Debt(100000, 1000));           // Debt: $100,000 with $1000 monthly payment
  initalMoney = 0;                      // Starting with $100,000

  updateGraph();
}

void draw() {
  background(255);
  fill(0);
  textSize(12);
  graph.drawGraph(); // Display the graph using the Graph class
}

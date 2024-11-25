import g4p_controls.*;

// Main sketch file
Salary salary;
Graph graph;
int numYears = 10; // Number of years for projection
int numMonths = numYears * 12;

String screen;
String prevScreen;
String nextPrevScreen;

int selectedSalary, selectedDebt, selectedInvestment, selectedRecPayment;

// Lists of finance elements:
ArrayList<RecPayment> recPayments = new ArrayList<RecPayment>();
ArrayList<Salary> salaries = new ArrayList<Salary>();
ArrayList<Debt> debts = new ArrayList<Debt>();
ArrayList<Investment> invest = new ArrayList<Investment>();

float initalMoney;

void updateGraph() {
  float[] monthlyBalances = calculateAllPoints(); // Get balances over 10 years
  graph = new Graph(monthlyBalances);             // Update the graph with new balances
}

void setup() {
  size(800, 600);
  createGUI();

  // Go to overview screen at setup
  screen = "overview";

  // Select item #1 to edit at setup
  selectedSalary = 1;
  selectedDebt = 1;
  selectedInvestment = 1;
  selectedRecPayment = 1;

  // Sample data
  //recPayments.add(new RecPayment(100, 1));   // Recurring payment of $100 every month
  //salaries.add(new Salary(0));          // Annual salary of $200,000
  //debts.add(new Debt(0, 0));    // Debt: $100,000 with $1000 monthly payment
  //invest.add(new Investment(5000, 400, 0.0007, 12, numYears))s;
  //initalMoney = 0;                      // Starting with $100,000


  // Create 5 empty salaries, debts, investments and recurring paymemts
  for (int i=0; i<5; i++) {
    salaries.add(new Salary(0));
    debts.add(new Debt(0, 0));
    invest.add(new Investment(0, 0, 0, 0, numYears));
    recPayments.add(new RecPayment(0));
  }

  updateGraph();
}

void draw() {
  background(255);
  fill(0);
  textSize(12);
  //graph.drawGraph(); // Display the graph using the Graph class
  displayScreen();
}

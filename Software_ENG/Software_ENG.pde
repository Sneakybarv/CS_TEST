import g4p_controls.*;

// Main sketch file
Graph graph;
int numYears = 10; // Number of years for projection
int numMonths = numYears * 12;

String screen;
String prevScreen;
String nextPrevScreen;

int selectedSalary, selectedDebt, selectedInvestment, selectedRecPayment;

// Variables to keep track of all amounts prior to editing to compare while editing
float prevSalary;
float prevDebtAmount, prevDebtMonthly;
float prevInvestAmount, prevInvestMonthly, prevInvestRate;
float prevRecMonthly;

// Lists of finance elements:
ArrayList<RecPayment> recPayments = new ArrayList<RecPayment>();
ArrayList<Salary> salaries = new ArrayList<Salary>();
ArrayList<Debt> debts = new ArrayList<Debt>();
ArrayList<Investment> invest = new ArrayList<Investment>();

float initialMoney;

PImage background;

void updateGraph() {
  float[] monthlyBalances = calculateAllPoints(); // Get balances over 10 years
  graph = new Graph(monthlyBalances);             // Update the graph with new balances
}

void setup() {
  size(800, 600);
  createGUI();

  background = loadImage("IntroBackground.jpg");
  background.resize(800, 600);

  // Go to intro screen at setup
  screen = "intro";

  // Select item #1 to edit at setup
  selectedSalary = 1;
  selectedDebt = 1;
  selectedInvestment = 1;
  selectedRecPayment = 1;


  // Create 5 empty salaries, debts, investments and recurring paymemts
  for (int i=0; i<5; i++) {
    salaries.add(new Salary(0));
    debts.add(new Debt(0, 0));
    invest.add(new Investment(0, 0, 0, numYears));
    recPayments.add(new RecPayment(0));
  }

  updateGraph();
}

void draw() {
  background(255);
  fill(0);
  textSize(12);
  displayScreen();
}

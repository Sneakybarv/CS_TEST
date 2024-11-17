import g4p_controls.*;

// Main sketch file
Salary salary;
Graph graph;
int numYears = 2; // Number of years for projection
int numMonths = numYears*12;

// Lists of finance elements:
//ArrayList<RecPayment> recPayments = new ArrayList<RecPayment>();
ArrayList<Salary> salaries = new ArrayList<Salary>();

float initalMoney;

void updateGraph() {
   //println( salaries.get(0).annualSalary);
  float[] monthlyBalances = calculateAllPoints();  // Get balances over 10 years
  
  graph = new Graph(monthlyBalances); // Update the graph with new balances
  //println(salaries);
  //printArray(monthlyBalances);
}

void setup() {
  size(1000, 600);
  // Fixed salary of 100,000 USD per year
 createGUI();
  //recPayments.add(new RecPayment(100, 1));     // adds a reccuring payment of $100 every 1 
  salaries.add(new Salary(200000));  
  //salary = new Salary(200000);
  
  initalMoney = 100000;

  updateGraph();  
  
}



void draw() {
  background(255);
  fill(0);
  textSize(12);
  graph.drawGraph(); // Display the graph using the Graph class
  
}

//

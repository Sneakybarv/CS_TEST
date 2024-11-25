void displayScreen() {  //Display screen


  if(screen.equals("overview")) {
    
    background(235, 250, 241);
    
    textAlign(RIGHT);
    textSize(20);
    
    text("Salary:", 220, 130);
    text("Debt:", 220, 230);
    text("Investment:", 220, 330);
    text("Recurring", 220, 420);
    text("Payment:", 220, 445);
    
    // Show dropdowns
    SalarySelect.setVisible(true);
    DebtSelect.setVisible(true);
    InvestmentSelect.setVisible(true);
    RecSelect.setVisible(true);
    
    //Show Edit Buttons
    EditSalary.setVisible(true);
    EditDebt.setVisible(true);
    EditInvestment.setVisible(true);
    EditRec.setVisible(true);
    
    //Show display button
    Graph.setVisible(true);
    Back.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(false);
    
    DebtAmount.setVisible(false);
    DebtMonthlyPayment.setVisible(false);
    
    RecAmount.setVisible(false);
    
    InvestAmount.setVisible(false);
    InvestMonthly.setVisible(false);
    InvestRate.setVisible(false);
    
    
  }
  
  else if(screen.equals("graph")) {
    
    background(235, 237, 250);
    
    graph.drawGraph();
    updateGraph();
    
    // Show Back button
    Back.setVisible(true);
    
    // Hide dropdowns
    SalarySelect.setVisible(false);
    DebtSelect.setVisible(false);
    InvestmentSelect.setVisible(false);
    RecSelect.setVisible(false);
    
    //Hide Edit Buttons
    EditSalary.setVisible(false);
    EditDebt.setVisible(false);
    EditInvestment.setVisible(false);
    EditRec.setVisible(false);
    
    //Hide display button
    Graph.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(false);
    DebtAmount.setVisible(false);
    DebtMonthlyPayment.setVisible(false);
    RecAmount.setVisible(false);
    
    InvestAmount.setVisible(false);
    InvestMonthly.setVisible(false);
    InvestRate.setVisible(false);
    
    
  }
  
  else if(screen.equals("editSalary")) {
    
    background(249, 250, 235);
    
    graph.drawGraph();
    updateGraph();
    
    //Page Title
    textAlign(CENTER);
    textSize(30);
    text("Editing: Salary #" + str(selectedSalary), width/2, 50);
    
    // Show Back button
    Back.setVisible(true);
    
    // Hide dropdowns
    SalarySelect.setVisible(false);
    DebtSelect.setVisible(false);
    InvestmentSelect.setVisible(false);
    RecSelect.setVisible(false);
    
    //Hide Edit Buttons
    EditSalary.setVisible(false);
    EditDebt.setVisible(false);
    EditInvestment.setVisible(false);
    EditRec.setVisible(false);
    
    //Hide display button
    Graph.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(true);
    DebtAmount.setVisible(false);
    DebtMonthlyPayment.setVisible(false);
    RecAmount.setVisible(false);
    
    InvestAmount.setVisible(false);
    InvestMonthly.setVisible(false);
    InvestRate.setVisible(false);
   
   
    //Text Labels:
    textAlign(CENTER);
    textSize(20);
    text("Yearly Salary ($):", 275, 475);
    
  }
  
  else if(screen.equals("editDebt")) {
    
    background(249, 250, 235);
    
    //Page Title
    textAlign(CENTER);
    textSize(30);
    text("Editing: Debt #" + str(selectedDebt), width/2, 50);
    
    graph.drawGraph();
    updateGraph();
    
    // Show Back button
    Back.setVisible(true);
    
    // Hide dropdowns
    SalarySelect.setVisible(false);
    DebtSelect.setVisible(false);
    InvestmentSelect.setVisible(false);
    RecSelect.setVisible(false);
    
    //Hide Edit Buttons
    EditSalary.setVisible(false);
    EditDebt.setVisible(false);
    EditInvestment.setVisible(false);
    EditRec.setVisible(false);
    
    //Hide display button
    Graph.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(false);
    DebtAmount.setVisible(true);
    DebtMonthlyPayment.setVisible(true);
    RecAmount.setVisible(false);
    
    InvestAmount.setVisible(false);
    InvestMonthly.setVisible(false);
    InvestRate.setVisible(false);
 
    //Text Labels:
    textAlign(CENTER);
    textSize(18);
    text("Total Amount:", 175, 475);
    text("Monthly Payment:", 375, 475);
    
  }
  
  else if(screen.equals("editInvestment")) {
    
    background(249, 250, 235);
    
    //Page Title
    textAlign(CENTER);
    textSize(30);
    text("Editing: Investment #" + str(selectedInvestment), width/2, 50);
    
    graph.drawGraph();
    updateGraph();
    
    // Show Back button
    Back.setVisible(true);
    
    // Hide dropdowns
    SalarySelect.setVisible(false);
    DebtSelect.setVisible(false);
    InvestmentSelect.setVisible(false);
    RecSelect.setVisible(false);
    
    //Hide Edit Buttons
    EditSalary.setVisible(false);
    EditDebt.setVisible(false);
    EditInvestment.setVisible(false);
    EditRec.setVisible(false);
    
    //Hide display button
    Graph.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(false);
    DebtAmount.setVisible(false);
    DebtMonthlyPayment.setVisible(false);
    RecAmount.setVisible(false);
    
    
    InvestAmount.setVisible(true);
    InvestMonthly.setVisible(true);
    InvestRate.setVisible(true);
   
   //Text Labels:
    textAlign(CENTER);
    textSize(16);
    text("Initial Amount:", 150, 485);
    text("Monthly:", 265, 485);
    text("Return Rate (%):", 430, 485);
    
  }
  
  else if(screen.equals("editRecurring")) {
    
    background(249, 250, 235);
    
    //Page Title
    textAlign(CENTER);
    textSize(30);
    text("Editing: Recurring Payment #" + str(selectedRecPayment), width/2, 50);
    
    graph.drawGraph();
    updateGraph();
    
    // Show Back button
    Back.setVisible(true);
    
    // Hide dropdowns
    SalarySelect.setVisible(false);
    DebtSelect.setVisible(false);
    InvestmentSelect.setVisible(false);
    RecSelect.setVisible(false);
    
    //Hide Edit Buttons
    EditSalary.setVisible(false);
    EditDebt.setVisible(false);
    EditInvestment.setVisible(false);
    EditRec.setVisible(false);
    
    //Hide display button
    Graph.setVisible(false);
    
    // Show/hide relevant sliders
    SalarySlider.setVisible(false);
    DebtAmount.setVisible(false);
    DebtMonthlyPayment.setVisible(false);
    
    RecAmount.setVisible(true);
    
    InvestAmount.setVisible(false);
    InvestMonthly.setVisible(false);
    InvestRate.setVisible(false);
    
    
    //Text Labels:
    textAlign(CENTER);
    textSize(20);
    text("Monthly Payment:", 275, 475);
 
    
  }
}

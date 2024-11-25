void displayScreen() {  //Display screen


  if(screen.equals("overview")) {
    
    background(235, 250, 241);
    
    //Page Title
    textAlign(CENTER);
    textSize(40);
    text("Overview", width/2, 50);
    
    
    //Text Labels
    textAlign(RIGHT);
    textSize(20);
    
    text("Salary:", 220, 131);
    text("Debt:", 220, 231);
    text("Investment:", 220, 331);
    text("Recurring", 220, 420);
    text("Payment:", 220, 445);
    
    
    //Amount Previews
    textAlign(LEFT);
    text("Yearly: $" + str(salaries.get(selectedSalary-1).annualSalary), 340, 131);
    text("Amount: $" + str(debts.get(selectedDebt-1).initialAmount), 340, 231);
    text("Monthly: $" + str(invest.get(selectedInvestment-1).monthlyContribution), 340, 331);
    text("Monthly: $" + str(recPayments.get(selectedRecPayment-1).amount), 340, 431);
    
    
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
    
    //Previous values
    textSize(16);
    textAlign(LEFT);
    text("Before this edit:", 10, 580);
    textAlign(CENTER);
    text("$" + str(prevSalary), 275, 580);
    
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
    
    //Previous values
    textSize(16);
    textAlign(LEFT);
    text("Before this edit:", 10, 580);
    textAlign(CENTER);
    text("$" + str(prevDebtAmount), 175, 580);
    text("$" + str(prevDebtMonthly), 375, 580);
    
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
    
    //Previous values
    textSize(16);
    textAlign(LEFT);
    text("Before this edit:", 10, 580);
    textAlign(CENTER);
    text("$" + str(prevInvestAmount), 150, 580);
    text("$" + str(prevInvestMonthly), 265, 580);
    text(str(prevInvestRate) + "%", 430, 580);
    
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
    
    //Previous values
    textSize(16);
    textAlign(LEFT);
    text("Before this edit:", 10, 580);
    textAlign(CENTER);
    text("$" + str(prevRecMonthly), 275, 580);
    
  }
}

void displayScreen() {  //Display screen

  if(screen.equals("overview")) {
  
    // Show Labels
    SalaryLabel.setVisible(true);
    DebtLabel.setVisible(true);
    InvestmentLabel.setVisible(true);
    RecLabel.setVisible(true);
    
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
    
  }
  
  else if(screen.equals("graph")) {
    graph.drawGraph();
    updateGraph();
    
    // Show Back button
    Back.setVisible(true);
    
        // Hide Labels
    SalaryLabel.setVisible(false);
    DebtLabel.setVisible(false);
    InvestmentLabel.setVisible(false);
    RecLabel.setVisible(false);
    
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
    
  }
}

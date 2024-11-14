float[] calculateAllPoints() {
  
  float[] balances = new float[numMonths];
  
  float netMonthly;
  
  for (int month = 0; month < numMonths; month++) {
    netMonthly = 0;
    
    //netMonthly += salary.monthlyPay;
    
    //Loop though all salaries
    for(int x=0; x<salaries.size(); x++) {
      netMonthly += salaries.get(x).calcNet();
    }
    
    //Loop through all recPayments
    for(int x=0; x<recPayments.size(); x++) {
      netMonthly += recPayments.get(x).calcNet(month);
    }
    
    balances[month] += netMonthly;  // Cumulative balance each year
  }
  
  return balances;
  
}

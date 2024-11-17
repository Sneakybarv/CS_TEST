float[] calculateAllPoints() {
  
  float[] balances = new float[numMonths];
  
  float currentMoney = initalMoney;
  float netMonthly;
  println(salaries.get(0).calcNet());
  println(salaries.get(0). annualSalary);
  for (int month = 0; month < numMonths; month++) {
    netMonthly = 0;
    
    //netMonthly += salary.monthlyPay;
    
    //Loop though all salaries

    for(int x=0; x<salaries.size(); x++) {
     
      netMonthly += salaries.get(x).calcNet();
    }
    
    //Loop through all recPayments
    //for(int x=0; x<recPayments.size(); x++) {
    //  netMonthly += recPayments.get(x).calcNet(month);
    //}
    
    balances[month] = currentMoney + netMonthly;  // Cumulative balance each year
    currentMoney = balances[month];
  }
  
  return balances;
  
}

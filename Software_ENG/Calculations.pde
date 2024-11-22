float[] calculateAllPoints() {
  float[] balances = new float[numMonths];
  float currentMoney = initalMoney;
  float netMonthly;


  for (Debt debt : debts) {
    debt.reset();
  }

  for (int month = 0; month < numMonths; month++) {
    netMonthly = 0;

    // Add salary income
    for (int x = 0; x < salaries.size(); x++) {
      netMonthly += salaries.get(x).calcNet();
    }

    // Subtract recurring payments
    for (int x = 0; x < recPayments.size(); x++) {
      netMonthly += recPayments.get(x).calcNet(month);
    }

 
    for (int x = 0; x < debts.size(); x++) {
      netMonthly += debts.get(x).calcNet(month);
    }

    for (int x = 0; x < invest.size(); x++) {
    
      netMonthly += invest.get(x).calcNet(month);
    }

    balances[month] = currentMoney + netMonthly;
    currentMoney = balances[month];



  }
  

  return balances;
}

class Salary {  //salary
//Fields
  float annualSalary;
  float monthlyPay;

//Constructor
  Salary(float annualSalary) {
    this.annualSalary = annualSalary;
    this.monthlyPay = annualSalary/12;
  }
  
//Methods
  
  //Update Methods
  void updateSalary(float annualSalary)
  {
    this.annualSalary = annualSalary;
    this.monthlyPay = annualSalary/12;
  }
  // Method to calculate balances over a given number of years
  //float[] calculateBalances(int years) {
  //  float[] balances = new float[years];
  //  for (int i = 0; i < years; i++) {
  //    balances[i] = annualSalary * (i + 1);  // Cumulative balance each year
  //  }
  //  return balances;
  //}
  
  float calcNet() {
    return this.monthlyPay;  
  }
    
  
}

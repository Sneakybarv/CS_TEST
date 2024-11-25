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
  
  float calcNet() {
    return this.monthlyPay;  
  }
    
  
}

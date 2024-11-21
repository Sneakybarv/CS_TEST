class Debt {  //Debt
//Fields
  float initialAmount;
  float monthlyPayment;
  float remainingAmount;

//Constructor
  Debt(float initialAmount, float monthlyPayment) {
    this.initialAmount = initialAmount;
    this.monthlyPayment = monthlyPayment;
    this.remainingAmount = initialAmount;
  }

//Methods
   void updateDebtAmount(float newDebtAmount) {  //Updating amount fo debt
     this.initialAmount = newDebtAmount;
   }
   
   void updateDebtPayment(float newDebtPayment) {  //Updating frequency with new amount
     this.monthlyPayment = newDebtPayment;
   }

  float calcNet(int month) { 
    if (remainingAmount > 0) {
      float payment = min(monthlyPayment, remainingAmount);
      remainingAmount -= payment;
      return (0-payment);
    }
    return 0;
  }

  void reset() {
    this.remainingAmount = initialAmount; // Reset to the initial debt amount

  }

  boolean isPaidOff() {
    return remainingAmount <= 0;
  }
}

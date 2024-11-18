class Debt {
  float initialAmount;
  float monthlyPayment;
  float remainingAmount;

  Debt(float initialAmount, float monthlyPayment) {
    this.initialAmount = initialAmount;
    this.monthlyPayment = monthlyPayment;
    this.remainingAmount = initialAmount;
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

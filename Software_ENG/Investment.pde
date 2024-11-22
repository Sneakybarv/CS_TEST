class Investment {
  // Fields
  float initAmount;      // Initial investment amount
  float contribution;    // Contribution amount
  float returnRate;      // Annual return rate 
  //int contribFreq;       // Contribution frequency 
  //int compoundFreq;      // Compounding frequency 
  float currentBalance;  // Tracks the current balance of the investment

  //int maxYears;          // Maximum years for investment
  //int totalMonths;       // Maximum months based on years



  // Constructor
  Investment(float IA, float c, float RR, int cf, int compf, int years) {
    this.initAmount = IA;
    this.contribution = c;
    this.returnRate = RR;
    //this.contribFreq = cf;
    //this.compoundFreq = compf;
    this.currentBalance = IA;
    //this.maxYears = years;
    //this.totalMonths = years * 12; // Convert years to months
  }

  // Method to calculate the effect of the investment for a specific month
  float calcNet(int month) {
    //// If the month exceeds the maximum allowed, return the final balance
    //if (month > totalMonths) {
    //  return currentBalance - initAmount; // Maintain final value after stopping
    //}

    //// Apply compound interest for this month
    //float monthlyRate = returnRate / compoundFreq; // Convert annual rate to monthly rate
    //currentBalance += currentBalance * monthlyRate;

    return currentBalance - initAmount; // Return the change in balance since start
  }
}

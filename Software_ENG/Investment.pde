class Investment {
  // Fields
  float initialAmount;       // Initial investment amount
  float monthlyContribution; // Monthly contribution
  float annualRate;          // Annual interest rate 
  //int compoundingFrequency;  // Times per year interest is compounded (DELETE THIS)
  int durationYears;         // Investment duration in years
  float currentBalance;      // Tracks the balance for calculations
  int monthsElapsed;         // Tracks the number of months since the start of the investment

  // constructor
  Investment(float initialAmount, float monthlyContribution, float annualRate, int durationYears) {
    this.initialAmount = initialAmount;
    this.monthlyContribution = monthlyContribution;
    this.annualRate = annualRate;
    //this.compoundingFrequency = compoundingFrequency;
    this.durationYears = durationYears;
    this.currentBalance = initialAmount; // Start with the initial amount
    this.monthsElapsed = 0; // Investment starts at month 0
  }

//Methods

  // Update methods for different parameters
  void updateInitialAmount(float newAmount) {
    this.initialAmount = newAmount;
    reset(); // Reset balance and recalculate with new initial amount
  }

  void updateMonthlyContribution(float newContribution) {
    this.monthlyContribution = newContribution;
  }

  void updateAnnualRate(float newRate) {
    this.annualRate = newRate;
  }

  //void updateCompoundingFreq(int newCompoundingFreq) {
  //  this.compoundingFrequency = newCompoundingFreq;
  //}

  void updateDurationYears(int newDuration) {
    this.durationYears = newDuration;
  }

  // Calculate the  effect of contributions and interest for a given month
  float calcNet(int month) {
    int totalMonths = durationYears * 12;
    if (month >= totalMonths) {
      return 0; // Investment period over, no contribution 
    }

    // Start fresh if it's the first month 
    if (month == 0) {
      currentBalance = initialAmount; // Reset to initial amount
      monthsElapsed = 0; // Reset the months counter
    }

    // Add monthly contribution
    currentBalance += monthlyContribution;

    // Apply interest for the month
    float monthlyRate = annualRate / 12; // Convert annual rate to monthly rate
    currentBalance *= (1 + monthlyRate);

    monthsElapsed++; 

    // Return the net growth 
    return currentBalance - (initialAmount + monthlyContribution * monthsElapsed);
  }

  

  // Reset the balance to the recalculated amount 
  void reset() {
    currentBalance = initialAmount;
    monthsElapsed = 0;
  }

  // Check if the investment period is over
  boolean isInvestmentPeriodOver() {
    return monthsElapsed >= durationYears * 12;
  }

  // Get the current balance
  float getBalance() {
    return currentBalance;
  }
}

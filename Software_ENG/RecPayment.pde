class RecPayment {   // Reccuring payments
//Fields
  float amount;  
  
//Constructor  
  RecPayment(float a) {
    this.amount = a;
  }
  
//Methods
  float calcNet(int month) {
     return -amount;
  }
  
  //Update methods
  void updateRecAmount(float newAmount) {
    this.amount = newAmount;
  }
  
}

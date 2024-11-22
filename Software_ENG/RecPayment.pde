class RecPayment {   // Reccuring payments
//Fields
  float amount;  
  int frequency;   
  
//Constructor  
  RecPayment(float a, int f) {
    this.amount = a;
    this.frequency = f;
  }
  
//Methods
  float calcNet(int month) {
     if (month % this.frequency == 0) {  
       return -amount;
     }
     else {
       return 0;
     }
    
  }
  
  //Update methods
  void updateRecAmount(float newAmount) {
    this.amount = newAmount;
  }
  void updateRecFreq(int newFreq) {
    this.frequency = newFreq;
  }
}

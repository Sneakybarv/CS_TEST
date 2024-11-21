/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:Debt_Amount:428630:
  //println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
 
  float newDebtAmount = Debt_Amount.getValueF(); // No scaling if the slider is directly set to the desired range
  debts.get(0).updateDebtAmount(newDebtAmount);
 
  updateGraph();
} //_CODE_:Debt_Amount:428630:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:Debt_Monthly_Payment:783821:
  //println("custom_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
 
  float newDebtPayment = Debt_Monthly_Payment.getValueF(); // No scaling if the slider is directly set to the desired range
  debts.get(0).updateDebtPayment(newDebtPayment);
 
  updateGraph();
} //_CODE_:Debt_Monthly_Payment:783821:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:Salary_Slider:663513:
  //println("custom_slider3 - GCustomSlider >> GEvent." + event + " @ " + millis());
  float newSalary = Salary_Slider.getValueF(); // No scaling if the slider is directly set to the desired range
  salaries.get(0).updateSalary( newSalary);
 
  // Recalculate the graph based on the new salary
  updateGraph();
} //_CODE_:Salary_Slider:663513:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:SalarySelect:285648:
  println("SalarySelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:SalarySelect:285648:

public void dropList2_click1(GDropList source, GEvent event) { //_CODE_:DebtSelect:819667:
  println("DebtSelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:DebtSelect:819667:

public void dropList3_click1(GDropList source, GEvent event) { //_CODE_:InvestmentSelect:626138:
  println("InvestmentSelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:InvestmentSelect:626138:

public void dropList4_click1(GDropList source, GEvent event) { //_CODE_:RecSelect:635791:
  println("RecSelect - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:RecSelect:635791:

public void button1_click1(GButton source, GEvent event) { //_CODE_:EditSalary:513285:
  println("EditSalary - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:EditSalary:513285:

public void button2_click1(GButton source, GEvent event) { //_CODE_:EditDebt:615105:
  println("EditDebt - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:EditDebt:615105:

public void button3_click1(GButton source, GEvent event) { //_CODE_:EditInvestment:636975:
  println("EditInvestment - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:EditInvestment:636975:

public void button4_click1(GButton source, GEvent event) { //_CODE_:EditRec:671580:
  println("EditRecurring - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:EditRec:671580:

public void button1_click2(GButton source, GEvent event) { //_CODE_:Graph:279375:
  //println("Display - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "graph";
 
} //_CODE_:Graph:279375:

public void button1_click3(GButton source, GEvent event) { //_CODE_:Back:851294:
  //println("back - GButton >> GEvent." + event + " @ " + millis());
  nextPrevScreen = screen;
  screen = prevScreen;
  prevScreen = nextPrevScreen;
 
 
} //_CODE_:Back:851294:



// Create all the GUI controls.
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  Debt_Amount = new GCustomSlider(this, 23, 529, 100, 40, "grey_blue");
  Debt_Amount.setShowValue(true);
  Debt_Amount.setShowLimits(true);
  Debt_Amount.setLimits(50000.0, 0.0, 100000.0);
  Debt_Amount.setShowTicks(true);
  Debt_Amount.setNumberFormat(G4P.DECIMAL, 2);
  Debt_Amount.setOpaque(true);
  Debt_Amount.addEventHandler(this, "custom_slider1_change1");
  Debt_Monthly_Payment = new GCustomSlider(this, 154, 532, 100, 40, "grey_blue");
  Debt_Monthly_Payment.setShowValue(true);
  Debt_Monthly_Payment.setShowLimits(true);
  Debt_Monthly_Payment.setLimits(1000.0, 100.0, 5000.0);
  Debt_Monthly_Payment.setShowTicks(true);
  Debt_Monthly_Payment.setNumberFormat(G4P.DECIMAL, 2);
  Debt_Monthly_Payment.setOpaque(true);
  Debt_Monthly_Payment.addEventHandler(this, "custom_slider2_change1");
  Salary_Slider = new GCustomSlider(this, 337, 531, 100, 40, "grey_blue");
  Salary_Slider.setShowValue(true);
  Salary_Slider.setShowLimits(true);
  Salary_Slider.setLimits(0.5, 0.0, 200000.0);
  Salary_Slider.setShowTicks(true);
  Salary_Slider.setNumberFormat(G4P.DECIMAL, 2);
  Salary_Slider.setOpaque(true);
  Salary_Slider.addEventHandler(this, "custom_slider3_change1");
  SalaryLabel = new GLabel(this, 100, 100, 100, 50);
  SalaryLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  SalaryLabel.setText("Salary");
  SalaryLabel.setOpaque(false);
  DebtLabel = new GLabel(this, 100, 200, 100, 50);
  DebtLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  DebtLabel.setText("Debt");
  DebtLabel.setOpaque(false);
  InvestmentLabel = new GLabel(this, 100, 300, 100, 50);
  InvestmentLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  InvestmentLabel.setText("Investment");
  InvestmentLabel.setOpaque(false);
  RecLabel = new GLabel(this, 100, 400, 100, 50);
  RecLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  RecLabel.setText("Recurring Payment");
  RecLabel.setOpaque(false);
  SalarySelect = new GDropList(this, 250, 110, 50, 180, 5, 10);
  SalarySelect.setItems(loadStrings("list_285648"), 0);
  SalarySelect.addEventHandler(this, "dropList1_click1");
  DebtSelect = new GDropList(this, 250, 210, 50, 180, 5, 10);
  DebtSelect.setItems(loadStrings("list_819667"), 0);
  DebtSelect.addEventHandler(this, "dropList2_click1");
  InvestmentSelect = new GDropList(this, 250, 310, 50, 180, 5, 10);
  InvestmentSelect.setItems(loadStrings("list_626138"), 0);
  InvestmentSelect.addEventHandler(this, "dropList3_click1");
  RecSelect = new GDropList(this, 250, 410, 50, 180, 5, 10);
  RecSelect.setItems(loadStrings("list_635791"), 0);
  RecSelect.addEventHandler(this, "dropList4_click1");
  EditSalary = new GButton(this, 550, 110, 100, 30);
  EditSalary.setText("Edit Salary");
  EditSalary.addEventHandler(this, "button1_click1");
  EditDebt = new GButton(this, 550, 210, 100, 30);
  EditDebt.setText("Edit Debt");
  EditDebt.addEventHandler(this, "button2_click1");
  EditInvestment = new GButton(this, 550, 310, 100, 30);
  EditInvestment.setText("Edit Investment");
  EditInvestment.addEventHandler(this, "button3_click1");
  EditRec = new GButton(this, 550, 410, 100, 30);
  EditRec.setText("Edit Payment");
  EditRec.addEventHandler(this, "button4_click1");
  Graph = new GButton(this, 625, 500, 100, 40);
  Graph.setText("Graph");
  Graph.addEventHandler(this, "button1_click2");
  Back = new GButton(this, 500, 500, 100, 40);
  Back.setText("Back");
  Back.addEventHandler(this, "button1_click3");
}

// Variable declarations
// autogenerated do not edit
GCustomSlider Debt_Amount;
GCustomSlider Debt_Monthly_Payment;
GCustomSlider Salary_Slider;
GLabel SalaryLabel;
GLabel DebtLabel;
GLabel InvestmentLabel;
GLabel RecLabel;
GDropList SalarySelect;
GDropList DebtSelect;
GDropList InvestmentSelect;
GDropList RecSelect;
GButton EditSalary;
GButton EditDebt;
GButton EditInvestment;
GButton EditRec;
GButton Graph;
GButton Back; 

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

public void custom_slider1_change1(GCustomSlider source, GEvent event) { //_CODE_:DebtAmount:428630:
  //println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
 
  float newDebtAmount = DebtAmount.getValueF(); // No scaling if the slider is directly set to the desired range
  debts.get(selectedDebt-1).updateDebtAmount(newDebtAmount);
 
  updateGraph();
} //_CODE_:DebtAmount:428630:

public void custom_slider2_change1(GCustomSlider source, GEvent event) { //_CODE_:DebtMonthlyPayment:783821:
  //println("custom_slider2 - GCustomSlider >> GEvent." + event + " @ " + millis());
 
  float newDebtPayment = DebtMonthlyPayment.getValueF(); // No scaling if the slider is directly set to the desired range
  debts.get(selectedDebt-1).updateDebtPayment(newDebtPayment);
 
  updateGraph();
} //_CODE_:DebtMonthlyPayment:783821:

public void custom_slider3_change1(GCustomSlider source, GEvent event) { //_CODE_:SalarySlider:663513:
  //println("custom_slider3 - GCustomSlider >> GEvent." + event + " @ " + millis());
  float newSalary = SalarySlider.getValueF(); // No scaling if the slider is directly set to the desired range
  salaries.get(selectedSalary-1).updateSalary(newSalary);
 
  // Recalculate the graph based on the new salary
  updateGraph();
} //_CODE_:SalarySlider:663513:

public void dropList1_click1(GDropList source, GEvent event) { //_CODE_:SalarySelect:285648:
  //println("SalarySelect - GDropList >> GEvent." + event + " @ " + millis());
  selectedSalary = int(SalarySelect.getSelectedText());
} //_CODE_:SalarySelect:285648:

public void dropList2_click1(GDropList source, GEvent event) { //_CODE_:DebtSelect:819667:
  //println("DebtSelect - GDropList >> GEvent." + event + " @ " + millis());
  selectedDebt = int(DebtSelect.getSelectedText());
} //_CODE_:DebtSelect:819667:

public void dropList3_click1(GDropList source, GEvent event) { //_CODE_:InvestmentSelect:626138:
  //println("InvestmentSelect - GDropList >> GEvent." + event + " @ " + millis());
  selectedInvestment = int(InvestmentSelect.getSelectedText());
} //_CODE_:InvestmentSelect:626138:

public void dropList4_click1(GDropList source, GEvent event) { //_CODE_:RecSelect:635791:
  //println("RecSelect - GDropList >> GEvent." + event + " @ " + millis());
  selectedRecPayment = int(RecSelect.getSelectedText());
} //_CODE_:RecSelect:635791:

public void button1_click1(GButton source, GEvent event) { //_CODE_:EditSalary:513285:
  //println("EditSalary - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editSalary";
  
} //_CODE_:EditSalary:513285:

public void button2_click1(GButton source, GEvent event) { //_CODE_:EditDebt:615105:
  //println("EditDebt - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editDebt";
  
} //_CODE_:EditDebt:615105:

public void button3_click1(GButton source, GEvent event) { //_CODE_:EditInvestment:636975:
  //println("EditInvestment - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editInvestment";
  
} //_CODE_:EditInvestment:636975:

public void button4_click1(GButton source, GEvent event) { //_CODE_:EditRec:671580:
  //println("EditRecurring - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editRecurring";
  
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

public void custom_slider1_change2(GCustomSlider source, GEvent event) { //_CODE_:RecAmount:539419:
  //println("RecAmount - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  float newRecAmount = RecAmount.getValueF(); // No scaling if the slider is directly set to the desired range
  recPayments.get(selectedDebt-1).updateRecAmount(newRecAmount);
 
  updateGraph();
  
} //_CODE_:RecAmount:539419:

public void dropList1_click2(GDropList source, GEvent event) { //_CODE_:RecFreq:939366:
  println("RecFreq - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:RecFreq:939366:

public void custom_slider1_change3(GCustomSlider source, GEvent event) { //_CODE_:InvestAmount:233064:
  //println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  float newInvestAmount = InvestAmount.getValueF();
  invest.get(selectedInvestment-1).updateInitialAmount(newInvestAmount);
  updateGraph();
} //_CODE_:InvestAmount:233064:

public void custom_slider1_change4(GCustomSlider source, GEvent event) { //_CODE_:InvestMonthly:311042:
  //println("InvestMonthly - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  float newInvestMonthly = InvestMonthly.getValueF();
  invest.get(selectedInvestment-1).updateMonthlyContribution(newInvestMonthly);
  updateGraph();
} //_CODE_:InvestMonthly:311042:

public void custom_slider1_change5(GCustomSlider source, GEvent event) { //_CODE_:InvestRate:514581:
  //println("InvestRate - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  float newInvestRate = (InvestRate.getValueF()) / 100;   // Percentage to decimal
  invest.get(selectedInvestment-1).updateAnnualRate(newInvestRate);
  updateGraph();
} //_CODE_:InvestRate:514581:

public void dropList1_click3(GDropList source, GEvent event) { //_CODE_:InvestComp:852399:
  //println("InvestComp - GDropList >> GEvent." + event + " @ " + millis());
  
  //int newInvestComp;
  
  //if(InvestComp.getSelectedText().equals ("Weekly")) {
  //  newInvestComp = 52;
  //}
  
  //invest.get(selectedInvestment-1).updateCompoundingFreq(newInvestComp);
  //updateGraph();
} //_CODE_:InvestComp:852399:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  DebtAmount = new GCustomSlider(this, 100, 490, 150, 60, "grey_blue");
  DebtAmount.setShowValue(true);
  DebtAmount.setShowLimits(true);
  DebtAmount.setLimits(0.0, 0.0, 100000.0);
  DebtAmount.setShowTicks(true);
  DebtAmount.setNumberFormat(G4P.DECIMAL, 2);
  DebtAmount.setOpaque(true);
  DebtAmount.addEventHandler(this, "custom_slider1_change1");
  DebtMonthlyPayment = new GCustomSlider(this, 300, 490, 150, 60, "grey_blue");
  DebtMonthlyPayment.setShowValue(true);
  DebtMonthlyPayment.setShowLimits(true);
  DebtMonthlyPayment.setLimits(0.0, 0.0, 5000.0);
  DebtMonthlyPayment.setShowTicks(true);
  DebtMonthlyPayment.setNumberFormat(G4P.DECIMAL, 2);
  DebtMonthlyPayment.setOpaque(true);
  DebtMonthlyPayment.addEventHandler(this, "custom_slider2_change1");
  SalarySlider = new GCustomSlider(this, 100, 490, 350, 60, "grey_blue");
  SalarySlider.setShowValue(true);
  SalarySlider.setShowLimits(true);
  SalarySlider.setLimits(0.0, 0.0, 200000.0);
  SalarySlider.setShowTicks(true);
  SalarySlider.setNumberFormat(G4P.DECIMAL, 2);
  SalarySlider.setOpaque(true);
  SalarySlider.addEventHandler(this, "custom_slider3_change1");
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
  Graph = new GButton(this, 680, 500, 100, 40);
  Graph.setText("Graph");
  Graph.addEventHandler(this, "button1_click2");
  Back = new GButton(this, 550, 500, 100, 40);
  Back.setText("Back");
  Back.addEventHandler(this, "button1_click3");
  RecAmount = new GCustomSlider(this, 100, 490, 200, 60, "grey_blue");
  RecAmount.setShowValue(true);
  RecAmount.setShowLimits(true);
  RecAmount.setLimits(0.0, 0.0, 1000.0);
  RecAmount.setShowTicks(true);
  RecAmount.setNumberFormat(G4P.DECIMAL, 2);
  RecAmount.setOpaque(true);
  RecAmount.addEventHandler(this, "custom_slider1_change2");
  RecFreq = new GDropList(this, 350, 490, 100, 100, 3, 10);
  RecFreq.setItems(loadStrings("list_939366"), 0);
  RecFreq.addEventHandler(this, "dropList1_click2");
  InvestAmount = new GCustomSlider(this, 100, 500, 110, 50, "grey_blue");
  InvestAmount.setShowValue(true);
  InvestAmount.setShowLimits(true);
  InvestAmount.setLimits(0.0, 0.0, 10000.0);
  InvestAmount.setShowTicks(true);
  InvestAmount.setNumberFormat(G4P.DECIMAL, 2);
  InvestAmount.setOpaque(true);
  InvestAmount.addEventHandler(this, "custom_slider1_change3");
  InvestMonthly = new GCustomSlider(this, 225, 500, 80, 50, "grey_blue");
  InvestMonthly.setShowValue(true);
  InvestMonthly.setShowLimits(true);
  InvestMonthly.setLimits(0.0, 0.0, 2000.0);
  InvestMonthly.setShowTicks(true);
  InvestMonthly.setNumberFormat(G4P.DECIMAL, 2);
  InvestMonthly.setOpaque(true);
  InvestMonthly.addEventHandler(this, "custom_slider1_change4");
  InvestRate = new GCustomSlider(this, 320, 500, 80, 50, "grey_blue");
  InvestRate.setShowValue(true);
  InvestRate.setShowLimits(true);
  InvestRate.setLimits(0.0, 0.0, 5.0);
  InvestRate.setShowTicks(true);
  InvestRate.setNumberFormat(G4P.DECIMAL, 2);
  InvestRate.setOpaque(true);
  InvestRate.addEventHandler(this, "custom_slider1_change5");
  InvestComp = new GDropList(this, 420, 500, 100, 90, 2, 10);
  InvestComp.setItems(loadStrings("list_852399"), 0);
  InvestComp.addEventHandler(this, "dropList1_click3");
}

// Variable declarations 
// autogenerated do not edit
GCustomSlider DebtAmount; 
GCustomSlider DebtMonthlyPayment; 
GCustomSlider SalarySlider; 
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
GCustomSlider RecAmount; 
GDropList RecFreq; 
GCustomSlider InvestAmount; 
GCustomSlider InvestMonthly; 
GCustomSlider InvestRate; 
GDropList InvestComp; 

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
  
  prevSalary = salaries.get(selectedSalary-1).annualSalary;
  
} //_CODE_:EditSalary:513285:

public void button2_click1(GButton source, GEvent event) { //_CODE_:EditDebt:615105:
  //println("EditDebt - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editDebt";
  
  prevDebtAmount = debts.get(selectedDebt-1).initialAmount;
  prevDebtMonthly = debts.get(selectedDebt-1).monthlyPayment;
  
} //_CODE_:EditDebt:615105:

public void button3_click1(GButton source, GEvent event) { //_CODE_:EditInvestment:636975:
  //println("EditInvestment - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editInvestment";
  
  prevInvestAmount = invest.get(selectedInvestment-1).initialAmount;
  prevInvestMonthly = invest.get(selectedInvestment-1).monthlyContribution;
  prevInvestRate = invest.get(selectedInvestment-1).annualRate * 100; // multiply by 100 for scaling
  
} //_CODE_:EditInvestment:636975:

public void button4_click1(GButton source, GEvent event) { //_CODE_:EditRec:671580:
  //println("EditRecurring - GButton >> GEvent." + event + " @ " + millis());
  prevScreen = screen;
  screen = "editRecurring";
  
  prevRecMonthly = recPayments.get(selectedRecPayment-1).amount;
  
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
  recPayments.get(selectedRecPayment-1).updateRecAmount(newRecAmount);
 
  updateGraph();
  
} //_CODE_:RecAmount:539419:

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

public void custom_slider1_change6(GCustomSlider source, GEvent event) { //_CODE_:InitialMoney:288239:
  //println("InitialMoney - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  initialMoney = InitialMoney.getValueF();
  
} //_CODE_:InitialMoney:288239:

public void button1_click4(GButton source, GEvent event) { //_CODE_:Start:495619:
  //println("Start - GButton >> GEvent." + event + " @ " + millis());
  screen = "overview";
} //_CODE_:Start:495619:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  DebtAmount = new GCustomSlider(this, 100, 490, 150, 60, "blue18px");
  DebtAmount.setShowValue(true);
  DebtAmount.setShowLimits(true);
  DebtAmount.setLimits(0.0, 0.0, 100000.0);
  DebtAmount.setShowTicks(true);
  DebtAmount.setNumberFormat(G4P.DECIMAL, 2);
  DebtAmount.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  DebtAmount.setOpaque(true);
  DebtAmount.addEventHandler(this, "custom_slider1_change1");
  DebtMonthlyPayment = new GCustomSlider(this, 300, 490, 150, 60, "blue18px");
  DebtMonthlyPayment.setShowValue(true);
  DebtMonthlyPayment.setShowLimits(true);
  DebtMonthlyPayment.setLimits(0.0, 0.0, 5000.0);
  DebtMonthlyPayment.setShowTicks(true);
  DebtMonthlyPayment.setNumberFormat(G4P.DECIMAL, 2);
  DebtMonthlyPayment.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  DebtMonthlyPayment.setOpaque(true);
  DebtMonthlyPayment.addEventHandler(this, "custom_slider2_change1");
  SalarySlider = new GCustomSlider(this, 100, 490, 350, 60, "purple18px");
  SalarySlider.setShowValue(true);
  SalarySlider.setShowLimits(true);
  SalarySlider.setLimits(0.0, 0.0, 200000.0);
  SalarySlider.setShowTicks(true);
  SalarySlider.setNumberFormat(G4P.DECIMAL, 2);
  SalarySlider.setOpaque(true);
  SalarySlider.addEventHandler(this, "custom_slider3_change1");
  SalarySelect = new GDropList(this, 250, 110, 50, 180, 5, 10);
  SalarySelect.setItems(loadStrings("list_285648"), 0);
  SalarySelect.addEventHandler(this, "dropList1_click1");
  DebtSelect = new GDropList(this, 250, 210, 50, 180, 5, 10);
  DebtSelect.setItems(loadStrings("list_819667"), 0);
  DebtSelect.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  DebtSelect.addEventHandler(this, "dropList2_click1");
  InvestmentSelect = new GDropList(this, 250, 310, 50, 180, 5, 10);
  InvestmentSelect.setItems(loadStrings("list_626138"), 0);
  InvestmentSelect.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  InvestmentSelect.addEventHandler(this, "dropList3_click1");
  RecSelect = new GDropList(this, 250, 410, 50, 180, 5, 10);
  RecSelect.setItems(loadStrings("list_635791"), 0);
  RecSelect.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  RecSelect.addEventHandler(this, "dropList4_click1");
  EditSalary = new GButton(this, 550, 110, 100, 30);
  EditSalary.setText("Edit Salary");
  EditSalary.addEventHandler(this, "button1_click1");
  EditDebt = new GButton(this, 550, 210, 100, 30);
  EditDebt.setText("Edit Debt");
  EditDebt.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  EditDebt.addEventHandler(this, "button2_click1");
  EditInvestment = new GButton(this, 550, 310, 100, 30);
  EditInvestment.setText("Edit Investment");
  EditInvestment.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  EditInvestment.addEventHandler(this, "button3_click1");
  EditRec = new GButton(this, 550, 410, 100, 30);
  EditRec.setText("Edit Payment");
  EditRec.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  EditRec.addEventHandler(this, "button4_click1");
  Graph = new GButton(this, 625, 500, 100, 40);
  Graph.setText("Graph");
  Graph.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  Graph.addEventHandler(this, "button1_click2");
  Back = new GButton(this, 625, 500, 100, 40);
  Back.setText("Back");
  Back.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Back.addEventHandler(this, "button1_click3");
  RecAmount = new GCustomSlider(this, 100, 490, 350, 60, "red_yellow18px");
  RecAmount.setShowValue(true);
  RecAmount.setShowLimits(true);
  RecAmount.setLimits(0.0, 0.0, 1000.0);
  RecAmount.setShowTicks(true);
  RecAmount.setNumberFormat(G4P.DECIMAL, 2);
  RecAmount.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  RecAmount.setOpaque(true);
  RecAmount.addEventHandler(this, "custom_slider1_change2");
  InvestAmount = new GCustomSlider(this, 100, 500, 100, 50, "red_yellow18px");
  InvestAmount.setShowValue(true);
  InvestAmount.setShowLimits(true);
  InvestAmount.setLimits(0.0, 0.0, 10000.0);
  InvestAmount.setShowTicks(true);
  InvestAmount.setNumberFormat(G4P.DECIMAL, 2);
  InvestAmount.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  InvestAmount.setOpaque(true);
  InvestAmount.addEventHandler(this, "custom_slider1_change3");
  InvestMonthly = new GCustomSlider(this, 215, 500, 100, 50, "red_yellow18px");
  InvestMonthly.setShowValue(true);
  InvestMonthly.setShowLimits(true);
  InvestMonthly.setLimits(0.0, 0.0, 2000.0);
  InvestMonthly.setShowTicks(true);
  InvestMonthly.setNumberFormat(G4P.DECIMAL, 2);
  InvestMonthly.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  InvestMonthly.setOpaque(true);
  InvestMonthly.addEventHandler(this, "custom_slider1_change4");
  InvestRate = new GCustomSlider(this, 330, 500, 250, 50, "red_yellow18px");
  InvestRate.setShowValue(true);
  InvestRate.setShowLimits(true);
  InvestRate.setLimits(0.0, 0.0, 5.0);
  InvestRate.setShowTicks(true);
  InvestRate.setNumberFormat(G4P.DECIMAL, 2);
  InvestRate.setLocalColorScheme(GCScheme.YELLOW_SCHEME);
  InvestRate.setOpaque(true);
  InvestRate.addEventHandler(this, "custom_slider1_change5");
  InitialMoney = new GCustomSlider(this, 250, 490, 350, 60, "blue18px");
  InitialMoney.setShowValue(true);
  InitialMoney.setShowLimits(true);
  InitialMoney.setLimits(0.0, 0.0, 500000.0);
  InitialMoney.setShowTicks(true);
  InitialMoney.setNumberFormat(G4P.DECIMAL, 2);
  InitialMoney.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  InitialMoney.setOpaque(true);
  InitialMoney.addEventHandler(this, "custom_slider1_change6");
  Start = new GButton(this, 300, 400, 200, 50);
  Start.setText("START TRACKING");
  Start.setLocalColorScheme(GCScheme.GOLD_SCHEME);
  Start.addEventHandler(this, "button1_click4");
}

// Variable declarations 
// autogenerated do not edit
GCustomSlider DebtAmount; 
GCustomSlider DebtMonthlyPayment; 
GCustomSlider SalarySlider; 
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
GCustomSlider InvestAmount; 
GCustomSlider InvestMonthly; 
GCustomSlider InvestRate; 
GCustomSlider InitialMoney; 
GButton Start; 

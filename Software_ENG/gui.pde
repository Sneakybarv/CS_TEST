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

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:271839:
  appc.background(230);
} //_CODE_:window1:271839:

public void salary_change1(GCustomSlider source, GEvent event) { //_CODE_:Salary_slider:852392:
  //println("custom_slider1 - GCustomSlider >> GEvent." + event + " @ " + millis());
  
  // Update the salary based on slider's value
  float newSalary = Salary_slider.getValueF(); // No scaling if the slider is directly set to the desired range
  salaries.get(0).updateSalary( newSalary);
  
  // Recalculate the graph based on the new salary
  updateGraph();
} //_CODE_:Salary_slider:852392:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 240, 120, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  Salary_slider = new GCustomSlider(window1, 70, 40, 100, 40, "grey_blue");
  Salary_slider.setLimits(20000, 0, 100000);
  Salary_slider.setNbrTicks(100);
  Salary_slider.setNumberFormat(G4P.INTEGER, 0);
  Salary_slider.setOpaque(false);
  Salary_slider.addEventHandler(this, "salary_change1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GCustomSlider Salary_slider; 

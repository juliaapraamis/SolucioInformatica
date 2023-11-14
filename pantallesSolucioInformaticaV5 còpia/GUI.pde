Button bUsuari, bContrassenya, bSignUp, bCistella, bPagar, bRegistre, bCorreu;
Button bNom, bLlinatges, bDomicili, bPoblació, bPaís, bCodiPostal;
Button bNumTarg, bCad, bCVV;
Button bServeiDomicili;

int buttonH = 100, buttonW = 300;

void setGUI(){
  initButtons();
}

void initButtons(){
  bUsuari = new Button ("Usuari", 40, 360, buttonW, buttonH);
}

void enableButtons(){
  bUsuari.setEnabled(true);
}

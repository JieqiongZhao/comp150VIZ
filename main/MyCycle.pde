class MyCycle{
  private String m_operation;
  private float m_positionX, m_positionY, m_radiusH, m_radiusW;
  private boolean m_highLight = false;
  private boolean m_zoomed = false;//zoomed in or not?
  private color m_color, m_transparency;// color for each cycle, m_tansparency replaces m_show, if not highlight, show m_transparency
  
  MyCycle(String oper, float posX, float posY, float rw, float rh){
    this.m_operation = oper;
    this.m_positionX = posX;
    this.m_positionY = posY;
    this.m_radiusH = rh;
    this.m_radiusW = rw;
  }
  
  public void setPosition(float posX, float posY){
    this.m_positionX = posX;
    this.m_positionY = posY;    
  }
  
  public float getPositionX(){
    return m_positionX;
  }
  
  public float getPositionY(){
    return m_positionY;
  }
  
  public void setRadius(float rw, float rh){
    this.m_radiusH = rh;
    this.m_radiusW = rw;
  }
  
//  public float getRadius(){
//    return m_radius;
//  }
  
  public void setLabel(int labels){
    if(labels == 0){
      m_color = color (155,0,0);
      m_transparency = color (0,0,0);
    }else if(labels == 1){
      m_color = color (0,155,0);
      m_transparency = color (0,0,0);
    }else if(labels == 2){
      m_color = color (0,0,155);
      m_transparency = color (0,0,0);
    }
  }
  
//  public color getColor(){
//    return m_color;
//  }
  
  public void render(){//fill() may cause color error, m_highLight may cause error, need to add: judge highlight? and zoomen?
    //if(!m_highLight){
    fill(m_color);
    noStroke();
    ellipse(m_positionX, m_positionY, m_radiusW, m_radiusH);
    //fill(0);
    //text(m_operation, m_positionX, m_positionY);
    //}
  }
  
  public void setHighLight(boolean hl){
    this.m_highLight = hl;
  }
  
  public boolean getHighLight(){
    return m_highLight;
  }
  
  // new function!!
  public void setZoomed(boolean zm){
    this.m_zoomed = zm;
  }
  // new function!!
  public boolean getZoomed(){
    return m_zoomed;
  }

}

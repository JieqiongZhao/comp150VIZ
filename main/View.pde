public abstract class View{
  //Controller m_controller;
  protected float m_positionX, m_positionY, m_width, m_height;
  private boolean m_isect;
  protected FileParser fileParser; //??????????????????????????
  
  View(){
  }
  
//  View(Controller ctrl){
//  }
  
  public void update(){
   
  }
  
  public void setParser(FileParser fp){
    this.fileParser = fp;
  }
  
  public void setPosition(float posX, float posY){
    this.m_positionX = posX;
    this.m_positionY = posY;
  }
  
  public float getPositionX(){
    return m_positionX;
  }
  
  public float getPositiony(){
    return m_positionY;
  }
  
  public void setWidth(float wid){
    this.m_width = wid;
  }
  
  public void setHeight(float hei){
    this.m_height = hei;
  }
  
  public float getWidth(){
    return m_width;
  }
  
  public float getHeight(){
    return m_height;
  }
  
//  public abstract void isectTest();
  
  public abstract void render();
  
}

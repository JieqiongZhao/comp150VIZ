class ClusterCanvas extends View{
  
  ClusterCanvas(){
    setPosition(800,5);
    setWidth(395);
    setHeight(690);
  }
  
  public void render(){
    rect(m_positionX, m_positionY, m_width, m_height);
  }
}

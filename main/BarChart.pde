class BarChart{
  private float m_positionX, m_positionY, m_width, m_height;
  private String[] m_actions;//instead of m_strings, for easier name
  private String[] m_ids;
  private String[] m_labels;
  private OneBar[] m_bars;
  
  BarChart(String[] ids, String[] actions, String[] labels, float posX, float posY, float wid, float hei){
    this.m_ids = ids;
    this.m_labels = labels;
    this.m_actions = actions;
    this.m_positionX = posX;
    this.m_positionY = posY;
    this.m_width = wid;
    this.m_height = hei;
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
  
  public float getWidth(){
    return m_width;
  }  
  
  public float getHeight(){
    return m_height;
  }
  
  public void render(){//set position, render each bar
  }

}

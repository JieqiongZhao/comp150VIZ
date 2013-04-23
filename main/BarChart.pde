class BarChart{
  private float m_positionX, m_positionY, m_width, m_height;
  private String[] m_actions;//instead of m_strings, for easier name
  private String[] m_ids;
  private ArrayList<OneBar> m_bars = new ArrayList<OneBar>();
  
  BarChart(String[] ids, String[] actions, float posX, float posY, float wid, float hei){
    this.m_ids = ids;
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

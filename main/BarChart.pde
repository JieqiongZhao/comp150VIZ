class BarChart{
  private float m_positionX, m_positionY, m_width, m_height;
  private String[] m_actions;//instead of m_strings, for easier name
  private String[] m_ids;
<<<<<<< HEAD
  private ArrayList<OneBar> m_bars = new ArrayList<OneBar>();
  
  BarChart(String[] ids, String[] actions, float posX, float posY, float wid, float hei){
=======
  private String[] m_labels;
  private int[] index;
  private OneBar[] m_bars;
  
  BarChart(String[] ids, String[] actions, int[] index, float posX, float posY, float wid, float hei){
>>>>>>> render radius update
    this.m_ids = ids;
    this.m_actions = actions;
    this.m_positionX = posX;
    this.m_positionY = posY;
    this.m_width = wid;
    this.m_height = hei;
    this.index = index;
    //println(m_ids.length+"7777777777777777777777777777777");
  }
  
//  BarChart(String[] ids, String[] actions, String[] labels, int[] index, float posX, float posY, float wid, float hei){
//    this.m_ids = ids;
//    this.m_labels = labels;
//    this.m_actions = actions;
//    this.m_positionX = posX;
//    this.m_positionY = posY;
//    this.m_width = wid;
//    this.m_height = hei;
//  }
  
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
  
  public void setBars(){
    m_bars = new OneBar[m_ids.length];
    for(int i=0; i<m_bars.length; i++){
      m_bars[i] = new OneBar(m_ids[i], m_actions[i], index[i]);
      m_bars[i].setPosition(m_positionX, m_positionY+i*3);
      m_bars[i].setNodes();
    }
  }
  
  public void render(){
    for(int i=0; i<m_bars.length; i++){
      m_bars[i].render();
//        println(m_bars[i].getPositionX());
    }//set position, render each bar
  }

}

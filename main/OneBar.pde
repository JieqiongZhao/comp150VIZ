class OneBar{
  private String m_id;
  private int index;
  private int labels;//0 or 1 or 2? to set color of cycles
  private float m_positionX, m_positionY;// deleted width and height
  private String m_action;
  private boolean isect = false;
  private boolean m_sequenceSelected = false;
  private boolean m_sequenceIsected = false;//mouse hover
  private MyCycle[] m_nodes;
  
  OneBar(String id, int index, String action){
    this.m_id  = id;
    this.index = index;
    this.m_action = action;
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
  
  public void isectTest(){
  }
  
//  public void render(){//color, operation, position, draw
//    if(m_nodes.size() != 0){
//      for(int i=0; i<m_nodes.size(); i++){
//        m_nodes(i).setPosition(m_positionX+i*)
//      }
//    }
//  }
  
}

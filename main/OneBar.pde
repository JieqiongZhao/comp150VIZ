class OneBar{
  private String m_id;
  private int index;
  private int labels;//0 or 1 or 2? to set color of cycles
  private float m_positionX, m_positionY;// deleted width and height
  private String m_action;
  private boolean isect = false;
  private boolean m_sequenceSelected = false;
  private boolean m_sequenceIsected = false;//mouse hover
  private ArrayList<MyCycle> m_nodes = new ArrayList<MyCycle>();
  
  OneBar(String id, String action, int index){
    this.m_id  = id;
    this.index = index;
    this.m_action = action;
  }
  
  public void setIndex(int ind){
    this.index = ind;
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
  
<<<<<<< HEAD
  public void render(){//color, operation, position, draw
=======
  public void setNodes(){
    String[] oprArray1 = m_action.split("\\s+");
    m_nodes = new MyCycle[oprArray1.length];
    for(int i=0; i<oprArray1.length; i++){
      m_nodes[i] = new MyCycle(oprArray1[i], m_positionX+i/2, m_positionY, 0.5, 1.3);
      m_nodes[i].setLabel(0);
      //println(oprArray1[i]+"77777777777777777777777777777");
    }  
  }
  
  public void render(){//color, operation, position, draw
    if(m_nodes.length != 0){
      for(int i=0; i<m_nodes.length; i++){
//        m_nodes(i).setPosition(m_positionX+i*)
          m_nodes[i].render();
      }
    }
>>>>>>> render radius update
  }
  
}

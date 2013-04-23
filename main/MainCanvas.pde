class MainCanvas extends View{
  private BarChart barChart;
  
  MainCanvas(){
    setPosition(5,5);
    setWidth(790);
    setHeight(690);
    //barChart = new BarChart(String[] ids, String[] actions, float posX, float posY, float wid, float hei);
  }
  
  public void render(){
    //barChart.render();
    rect(m_positionX, m_positionY, m_width, m_height);
  }
  
}

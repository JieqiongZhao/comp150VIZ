class MainCanvas extends View{
  private BarChart barChart;
  
  MainCanvas(){
    setPosition(5,5);
    setWidth(790);
    setHeight(690);
    //barChart = new BarChart(String[] ids, String[] actions, float posX, float posY, float wid, float hei);
  }
  
<<<<<<< HEAD
=======
  public void setBarChart(){
    barChart = new BarChart(fileParser.getIds(), fileParser.getActions(), fileParser.getIndex(), 30, 30, 730, 540);
    barChart.setBars();
  }
  
>>>>>>> render radius update
  public void render(){
    //barChart.render();
    rect(m_positionX, m_positionY, m_width, m_height);
    barChart.render();
  }
  
}

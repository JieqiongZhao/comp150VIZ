String fileName = "ProgenDataStreamTotal11-11-12-2.csv";
FileParser filedata;
ClusterCanvas clusterCanvas;
MainCanvas mainCanvas;

void setup(){
    filedata = new FileParser(fileName);
    filedata.seperateMission();
    filedata.Notify();
//<<<<<<< HEAD
    int[][][] t = filedata.getAllUserMissionNum();
//=======
    
    //editted bu sz start
    //window setup
    smooth();
    size(1200,700);
    background(255);
    //clusterCanvas
    clusterCanvas = new ClusterCanvas();
//    clusterCanvas.drawCluster();
    clusterCanvas.render();
    //mainCanvas
    mainCanvas = new MainCanvas();
    mainCanvas.render();
    mainCanvas.setParser(filedata);

//>>>>>>> class view\MainCanvas\BarChart\OneBar\MyCycle
}


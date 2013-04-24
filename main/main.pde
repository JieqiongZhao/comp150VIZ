import java.util.Map;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.Comparator;
import java.util.Iterator;

String fileName = "ProgenDataStreamTotal11-11-12-2.csv";
FileParser filedata;
MySort sortdata;
ClusterCanvas clusterCanvas;
MainCanvas mainCanvas;

void setup(){
    filedata = new FileParser(fileName);
    filedata.seperateMission();
    filedata.Notify();
    int[][][] t = filedata.getAllUserMissionNum();
    
    sortdata = new MySort();
    int labelNum = 1;
    int[] allPossibleLabel = new int[1];
    allPossibleLabel[0] = 0;
    int[] index = filedata.getIndex();
    int[] labels = filedata.getLabels();
    int[] sortArray = filedata.getAllUsersCountsOfActions();
    sortdata.LabelSort(labelNum,allPossibleLabel,labels,index,sortArray);
    int[] newIndex = sortdata.getResultLabel();
    int[] newValue = sortdata.getResult();
    
    

    smooth();
    size(1200,700);
    background(255);
    clusterCanvas = new ClusterCanvas();
    clusterCanvas.render();
    mainCanvas = new MainCanvas();
    mainCanvas.setParser(filedata);
<<<<<<< HEAD

=======
    mainCanvas.setBarChart();
    mainCanvas.render();
//editted by sz end
>>>>>>> render radius update
}


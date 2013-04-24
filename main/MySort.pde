
class  MySort {

  private int[] sortLabel;
  private int[] sortArray;
  private int labelNum;
  private int[] label;
  private int[] allLabels;
  private int[] index;
  private int[] allPossibleLabel;
  private int[] result;
  private int[] resultLabel;
  public   void LabelSort(int _labelNum, int _allPossibleLabel[], int _label[], int _index[], int[] _sortArray) {
    labelNum = _labelNum;
    sortArray = _sortArray;
    label = _label;
    index = _index;
    allPossibleLabel = _allPossibleLabel;

    sortLabel = new int[sortArray.length];
    HashMap<Integer,Integer>  hashMap = new HashMap<Integer,Integer>();
    int currentLabel = 0;
    //find out all the user with label[]
    for (int i=0; i<sortArray.length; i++) {
      for (int k=0; k<labelNum; k++) {
        if (label[i]==allPossibleLabel[k]) {
          sortLabel[currentLabel]=i;
          currentLabel++;
          hashMap.put(i, sortArray[i]);
        }
      }
    }
    ValueComparator bvc = new ValueComparator(hashMap);
    TreeMap<Integer,Integer> sorted_map = new TreeMap<Integer,Integer>(bvc);
    sorted_map.putAll(hashMap);
        
    result = new int[currentLabel];
    resultLabel = new int[currentLabel];
    Iterator i = sorted_map.entrySet().iterator();
    int beginLabel = 0;
    while(i.hasNext()){ 
      Map.Entry me = (Map.Entry)i.next();
      result[beginLabel]=(Integer)me.getValue();
      resultLabel[beginLabel]=(Integer)me.getKey();
      beginLabel++;      
    }
    
//    for(int m=0; m<currentLabel;m++){
//      println(result[m]);
//      println(resultLabel[m]);
//    }
  }

  public int[] getResult() {
    return result;
  }
  
  public int[] getResultLabel(){
    return resultLabel;
  }
}

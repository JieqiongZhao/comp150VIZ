

class ValueComparator implements Comparator<Integer>{
  Map<Integer,Integer> base;
  public ValueComparator(Map<Integer,Integer> _base){
    base = _base;
  }
  
  public int compare(Integer x, Integer y){
    Integer a = base.get(x);
    Integer b = base.get(y);
    if(a>b){
      return 1;
    }else if(a == b){
      return 0;
    }else{
      return -1;
    }
//    return a.compareTo(b);
  }
}

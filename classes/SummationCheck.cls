public class SummationCheck {
    
    public static boolean checkIfSumHoldsUp(List<Integer> intList, Integer intRef){
        Boolean isValidList = false;
        Integer sumNumber;
        for(Integer i=0; i<intList.size(); i++){
            if(i>0){
               sumNumber = intList[i]+ intList[i+1]; 
            }else{
                
            }
        }
        return isValidList;
    }
    
    public Boolean checkNumberAddToK(List<Integer> intVals, Integer k){
        Boolean sumAddsUpFlag = false;
        Set<Integer> diffVals = new Set<Integer>();
        for (Integer intVal : intVals){
            if (diffVals.isEmpty()){
                diffVals.add(k-intVal);
            } else {
                if (diffVals.contains(intVal)){
                    sumAddsUpFlag = true;
                    break;
                } else {
                    diffVals.add(k-intVal);
                }
            }
        }
        
        return sumAddsUpFlag;
    }

}
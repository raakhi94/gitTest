public with sharing class CDCcontroller {
    public CDCcontroller() {

    }


    @AuraEnabled
    public static List<Case> getCases(string colNames, string cId) {

      List<UserRecordAccess> lstAccess =  [SELECT RecordId FROM UserRecordAccess WHERE UserId=:UserInfo.getUserId() AND HasReadAccess = true AND RecordId = :cId];
        SYSTEM.DEBUG(lstAccess);
      List<SObject> lstObj = new List<SObject>();
      if(!lstAccess.isEmpty()){
      String queryString = 'SELECT casenumber,'+colNames+' FROM case WHERE Id = :cId';
        lstObj = Database.query(queryString);
        
      }
      return lstObj;
    }
}
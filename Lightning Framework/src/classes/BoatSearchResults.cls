public with sharing class BoatSearchResults {
    @AuraEnabled
    public static List<Boat__c> getBoats(String boatTypeID) {
        System.debug('BoatSearch Results : ' + boatTypeID);
        List<Boat__c> returnList;
            if (boatTypeID != ''){
                returnList = [Select ID, Name, BoatType__c, contact__r.Name, Geolocation__c, Picture__c from Boat__c
                       where BoatType__c =:boatTypeID];
            } else {
                returnList = [Select ID, Name, BoatType__c, contact__r.Name, Geolocation__c, Picture__c from Boat__c];
            }
        System.debug('BoatSearch Results Return Count: ' + returnList.size());
        return returnList;
    }
    
    @AuraEnabled
    public static Map<String, String> getSearchOptions() {
        List<BoatType__c> boatTypes = [SELECT Id, Name FROM BoatType__c LIMIT 400];
        Map<String, String> returnMap = new Map<String, String>();
        if(!boatTypes.isEmpty()){
            for(BoatType__c bt: boatTypes){
                returnMap.put(bt.Name, bt.Id);
            }
        }
        return returnMap;
    }
}
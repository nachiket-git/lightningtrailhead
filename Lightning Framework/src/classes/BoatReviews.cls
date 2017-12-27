/*public class BoatReviews {
    BoatReviewSelector boatReviewSelector;
    
    public BoatReviews(BoatReviewSelector boatReviewSelector) {
        this.boatReviewSelector = boatReviewSelector;
    }
    
    public BoatReviews() {
        this(new BoatReviewSelector());
    }
    
    @AuraEnabled
    public static List<BoatReview__c> getAll(Id boatId) {
        return (new BoatReviews()).selectAllFor(boatId);
    }

    public List<BoatReview__c> selectAllFor(Id boatId) {
        return this.boatReviewSelector.selectAllFor(boatId);
    }

}*/

public with sharing class BoatReviews {
  
    @AuraEnabled
    public static List<BoatReview__c> getAll(Id boatId){
        return [SELECT Id, Name, Comment__c, Rating__c, LastModifiedDate,
                CreatedDate, CreatedBy.Name, CreatedBy.SmallPhotoUrl,
                CreatedBy.CompanyName
                from BoatReview__c where Boat__c =: boatId];
    }
}
public with sharing class SADetailsController {
    @AuraEnabled(cacheable=true)
    public static List<SA_Details__c> getSalesAssociateDetails() {
        // Query the SA Details records from Salesforce
        List<SA_Details__c> saDetails = [SELECT Name, Customer_Handled__c,  pushDate_of_Joining__c, Experience__c FROM SA_Details__c];
        return saDetails;
    }
}

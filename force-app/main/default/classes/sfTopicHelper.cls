public with sharing class sfTopicHelper {
    @AuraEnabled(cacheable=true)
    public static List<SF_Training_Topic__c> getSFTrainingTopics() {

        return [SELECT ID,SF_Topic_Name__c, Sf_Topic_category__c,Instructor__c FROM SF_Training_Topic__c WITH SECURITY_ENFORCED];
        
    }
    @AuraEnabled(cacheable=true)
    public static List<SF_Training_Topic__c> getSFTrainingTopicsByCategory(string strCat) {

        strCat = strCat + '%';
        return [SELECT ID,SF_Topic_Name__c, Sf_Topic_category__c,Instructor__c FROM SF_Training_Topic__c WHERE
        Sf_Topic_category__c  like :strCat WITH SECURITY_ENFORCED];
        
    }
}

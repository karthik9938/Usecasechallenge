public with sharing class ActiveContacts {
    @InvocableMethod(label='ActiveContactMethod')

     public static void ActiveContactMethod(List<ID> accId) { 
         List<Contact> ContactList=[Select id from Contact where Status__c= true and AccountId= :accId];
         Account accobj=[select Number_of_active_contacts__c from Account where Id= :accId limit 1];
         accobj.Number_of_active_contacts__c=ContactList.size();
         update accobj;

    }
}

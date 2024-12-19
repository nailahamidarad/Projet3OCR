public with sharing class AccountCasesController {

    @AuraEnabled(cacheable=true)  
    public static List<Case> findCasesBySubject(Id accountId, String subjectSearchTerm) {
        return CaseSelector.findCasesBySubject(accountId,subjectSearchTerm);
    }

}
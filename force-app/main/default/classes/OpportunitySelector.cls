public with sharing class OpportunitySelector {
    public static List<Opportunity> getOpportunitiesByAccountId(Id accountId) {
        return [SELECT Id, Name, Amount, CloseDate, StageName FROM Opportunity WHERE AccountId = :accountId];
    }
}
public with sharing class AccountOpportunitiesController {
    @AuraEnabled(Cacheable=true)
    public static List<Opportunity> getOpportunities(Id accountId) {
        return OpportunitySelector.getOpportunitiesByAccountId(accountId);
    }
}
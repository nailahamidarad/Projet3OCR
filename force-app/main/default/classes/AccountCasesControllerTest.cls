@IsTest
private class AccountCasesControllerTest {
    @TestSetup
    static void setup() {
        Account testAccount = TestDataFactory.createTestAccount();
        TestDataFactory.createTestCase(testAccount.Id);
    }

    @IsTest
    static void testfindCasesBySubject() {
        Account testAccount = [SELECT Id FROM Account LIMIT 1];
        String testSubjectSearchTerm = 'Test';
        Test.startTest();
        List<Case> results = CaseSelector.findCasesBySubject(testAccount.Id,testSubjectSearchTerm);
        Test.stopTest();
        Assert.areEqual(1, results.size(), 'Should return one Case');
    }
}
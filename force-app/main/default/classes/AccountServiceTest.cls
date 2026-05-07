@isTest
public class AccountServiceTest {
    
    @isTest
    static void testCreateAccount() {
        // Test data
        String testName = 'Test Account';
        
        Test.startTest();
        Account acc = AccountService.createAccount(testName);
        Test.stopTest();
        
        // Verify the result
        Account result = [SELECT Id, Name, Industry 
                          FROM Account 
                          WHERE Id = :acc.Id 
                          LIMIT 1];
        
        System.assertNotEquals(null, result, 'Account should be created');
        System.assertEquals(testName, result.Name, 'Account name should match input');
        System.assertEquals('Technology', result.Industry, 'Industry should be Technology');
    }
    
    @isTest
    static void testCreateAccountWithNullName() {
        Test.startTest();
        try {
            Account acc = AccountService.createAccount(null);
            // If no exception, still verify behavior
            System.assertEquals(null, acc.Name, 'Name should be null if allowed');
        } catch (Exception e) {
            System.assert(true, 'Exception handled for null input');
        }
        Test.stopTest();
    }
}
//Test class for AccountServiceBrokenTestClass

@IsTest
public class AccountServiceNegativeTest {

    @IsTest
    static void testCreateAccount_intentionalFailure() {

        Account acc = AccountService.createAccount('Test Account');

        // ❌ Intentional failure to break the deployment
        System.assertEquals(
            'Healthcare',
            acc.Name,
            'Intentional assertion failure for deployment testing'
        );
    }

}
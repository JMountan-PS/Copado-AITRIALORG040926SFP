public class AccountService {

    public static Account createAccount() {

        Account acc = new Account(
            Name     = 'Healthcare',
            Industry = 'Technology'
        );

        insert acc;

        return acc;
    }

}
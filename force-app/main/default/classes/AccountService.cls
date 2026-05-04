public class AccountService {
    public static Account createAccount(String name) {
        Account acc = new Account(
            Name = name,
            Industry = 'Technology'
        );
        insert acc;
        return acc;
    }
}
//Apex class created for the purpose of testing a broken test class by Copado release agent

public class AccountServiceBrokenTestClass {

    public static Account createAccount(String name) {

        Account acc = new Account(
            Name = name,
            Industry = 'Technology'
        );

        insert acc;
        return acc;
    }

}
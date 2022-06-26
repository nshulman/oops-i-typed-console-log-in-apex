## Oops, I Typed Console.log in Apex again!

Are you like me and work with JavaScript so much that you type Console.log in Apex code against your will?  If you said yes, then this is the Apex class for you.  Do you also use comma delimited values in JS, e.g. `Console.log('AccountInfo', acct1, acct2)` because it's easy and looks better in your console? 

This Apex class adds Console.log to your org so you never have to think about it again.  Each comma delimited object you pass in (up to 4*) will get its own debug line with indentation to show grouping.

### Installing
Add the [Console Class](https://github.com/nshulman/oops-i-typed-console-log-in-apex/blob/main/Console.cls) to your org your favorite way.

### Usage
Here's some sample code you can test with anonymous execution:

```java
List<Account> alist = new List<Account>();

Account a1 = new Account();
a1.Name = 'test112';
alist.add(a1);

Account a2 = new Account();
a2.Name = 'test113';
alist.add(a2);

Console.log('My Accounts', a1, a2, alist);
```

### Sample Apex Execution Log Output (Dev Console - Debug Only checked)
```
21:58:48:006 USER_DEBUG [22]|DEBUG|My Accounts
21:58:48:007 USER_DEBUG [22]|DEBUG|↳Account:{Name=test112}
21:58:48:007 USER_DEBUG [22]|DEBUG|↳Account:{Name=test113}
21:58:48:007 USER_DEBUG [22]|DEBUG|↳(Account:{Name=test112}, Account:{Name=test113})
```



\* Apex methods support only a specific set of arguments, so I wrote overloads to support 1 to 4 object parameters.  If you think you'll need to put more objects in your debug code, you'll need to make more overloads with more values.  But it should be pretty easy.

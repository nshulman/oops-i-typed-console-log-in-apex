## I Can't Stop Typing Console Log in Apex!

Are you like me and work with JavaScript so much that you start typing Console.log in your Apex code against your will?  If you said yes, then this is the class for you.  Do you also use commas when you log in JavaScript since they look so nice in your browser (for example `Console.log('AccountInfo', acct1, acct2)`)?  Great, keep reading.  This class adds Console.log to Apex, and you never have to think about it again.  Each object you pass in will get its own debug line with indentation to show grouping.

Here's something you can Execute Anonymous to test:

### Sample Code
```java
List<Account> alist = new List<Account>();

Account a1 = new Account();
a1.Name = 'test112';
alist.add(a1);

Account a2 = new Account();
a2.Name = 'test113';
alist.add(a2);

Console.log(a1,a2,new Set<Account>{a1,a2}, aList); // Will result in System.Debug in your 
```

### Sample Apex Debug Log Output (from Dev Console with Debug Only checked)
```
21:21:40:042 USER_DEBUG [22]|DEBUG|Account:{Name=test112}
21:21:40:044 USER_DEBUG [22]|DEBUG|↳Account:{Name=test113}
21:21:40:044 USER_DEBUG [22]|DEBUG|↳{Account:{Name=test112}, Account:{Name=test113}}
21:21:40:045 USER_DEBUG [22]|DEBUG|↳(Account:{Name=test112}, Account:{Name=test113})
```


There is something I need to tell you.  Apex methods support only a specific number of arguments, so I made it to support a max of 4 objects separated by commas.  If you think you'll need to put more objects in your debug code, you'll need to make more overloads with more values.  But it should be pretty easy.

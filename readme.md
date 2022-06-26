##I Can't Stop Typing Console Log in Apex!

Are you like me and have been working with JavaScript so much that you start typing Console.log in your Apex code?  If you said yes, then this is the class for you.  Do you also use commas when you log in JavaScript since they look so nice in your browser (for example `Console.log('AccountInfo', acct1, acct2)`)?  Great.  Just install this class in all your orgs, and never think about it again.

```java
List<Account> alist = new List<Account>();

Account a1 = new Account();
a1.Ext_Id__c = 'aaa';
a1.Name = 'test112';
alist.add(a1);

Account a2 = new Account();
a2.Ext_Id__c = 'aab';
a2.Name = 'test113';
alist.add(a2);

Console.log(a1,a2,new Set<Account>{a1,a2});
```

There is something I need to tell you.  Apex methods support only a specific number of arguments, so I made it to support a max of 4 objects separated by commas.  If you think you'll need to put more objects in your debug code, you'll need to make more overloads with more values.  But it should be pretty easy.

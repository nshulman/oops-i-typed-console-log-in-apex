Are you like me and have been working with JavaScript so much that you start typing Console.log in your Apex code?  If you said yes, then this is the class for you.

```
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

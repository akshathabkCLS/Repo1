public class SOQL_Example {
    public List<Account> accounts {set;get;}   //value of account is null
    public List<Contact> contacts {set;get;}
    
    public SOQL_Example(){
        accounts = [select id, name , phone, industry from Account];
        contacts = [select id, FirstName, LastName, phone from contact];
    }
    
    
}
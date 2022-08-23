public class SOQL_example2 {
    public List<Account> accounts {set;get;}   //value of account is null
    
    public SOQL_Example2(){
        accounts = [select id, name , phone, industry from Account];
    }
    
    public void Limit5(){
        accounts = [select id, name, phone, industry from account limit 5];
    }
    
    public void LimitCount(){
        integer count = 2;
        accounts = [select id, name, phone, industry from account limit:count];
    }
    
    public void offset5(){
        accounts = [select id, name, phone, industry from account offset 5];
    }
    
    public void offsetCount(){
        integer count = 2;
        accounts = [select id, name, phone, industry from account offset:count];
    }
    
}
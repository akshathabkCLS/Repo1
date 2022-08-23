public class Sobject_Examples {
    public Account acc {set;get;}
    public Contact con {set;get;}
    
    public Sobject_Examples(){
        acc = new Account();
        acc.Name = 'Salesforce';
        acc.Phone = '568901234';
        acc.Industry = 'Banking';
        acc.Rating = 'Hot';
        
        con = new Contact();
        
    }
    
}
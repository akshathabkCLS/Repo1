public class DML_example2 {
    public void create(){
        
        try{
            Account acc = new Account();
        acc.Name = 'test Account1';
        acc.phone='123456';
        acc.Industry='Banking';
        insert acc;
        
        Contact con = new Contact();
        con.FirstName='Test';
        con.LastName='Contact1';
        con.AccountId=acc.id;
        insert con;
        }
        
        catch(Exception e){
            system.debug(e.getMessage());
        }
      
    }

}
public class SOQL_Example3 {
    public List<SelectOption> options  {set;get;}
    public string selected    		   {set;get;}
    public List<Account> accounts 	   {set;get;}
    
    public SOQL_Example3(){
        options = new List<SelectOption>();
        List<String> industries = new List<string>{'BAnking', 'Energy', 'Education', 'Housing'};
            for(string s : industries){
                selectOption op = new selectOption(s,s);
                options.add(op);
            }
    }
    public void show(){
        accounts = [select id, name, industry,phone from account where industry=:selected];
    }
}
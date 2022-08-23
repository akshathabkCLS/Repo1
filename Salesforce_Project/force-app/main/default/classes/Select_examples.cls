public class Select_examples {
    public list<SelectOption> options {set;get;}
    public list<SelectOption> places {set;get;}
    
    public Select_examples(){
        SelectOption op1 = new SelectOption('none','--None--');
        SelectOption op2 = new SelectOption('Hyd','TG');
        SelectOption op3 = new SelectOption('Ban','KA');
        SelectOption op4 = new SelectOption('che','TN');
        
        options = new List<SelectOption>();
        options.add(op1);
        options.add(op2);
        options.add(op3);
        options.add(op4);
        
        List<String> Myplaces = new List<String>{'JPnagar','RRnagar','TRnagar'};
            places = new List<SelectOption>();
        for(String s : Myplaces){
            SelectOption op=new SelectOption(s,s);
            places.add(op);
        }
        
    }

}
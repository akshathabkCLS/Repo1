public class Future_Examples {
    @future
    public static void call(){
    system.debug('call one');
    system.debug('call two');
    system.debug('call three');
    }
    @future
    public static void invoke(){
        system.debug('invoke one');
        system.debug('invoke two');   
    }
    
    public void show(){
        system.debug('show one');
        system.debug('show two');
        call();
        system.debug('show three');
        invoke();
        system.debug('show four');
        
    }

}
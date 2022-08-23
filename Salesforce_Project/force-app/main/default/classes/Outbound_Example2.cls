public class Outbound_Example2 {
    public void invoke(){
        List<messaging.Email> emails = new List<messaging.Email>();
        List<lead> leads = [select id, email from lead where createdDate=today];
        
        for(lead l : leads){
            List<string> toAdd = new List<string>{l.email};
            Messaging.SingleEmailMessage msg =new Messaging.SingleEmailMessage();
            msg.setToAddresses(toAdd);
            msg.setSubject('lead acknowledge');
            string body = 'Dear customer,  <br/>';
            body = body +'we have recieved your application';
            body = body +'<b> First Name:'+'<i>'+l.FirstName+'</i>';
            msg.setHtmlBody(body);
            emails.add(msg);
            
        }
        messaging.sendEmail(emails);
    }
}
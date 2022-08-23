public class Outbound_Examples {
    public void invoke(){
        //Messaging is a namespace and singleEmailMessage is a class
        Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
        string[] toAdd = new string[]{'akshathabk981@gmail.com'};
            string[] bcc = new string[]{'krishnamurthybk22@gmail.com'};
                string[] cc = new string[]{'akshathabk98@gmail.com'};
        msg.setToAddresses(toAdd);
        msg.setBccAddresses(bcc);
        msg.setCcAddresses(cc);
        msg.setSubject('Test Email');
        msg.setSenderDisplayName('Test');
        msg.setPlainTextBody('This is plain text body');
        msg.setReplyTo('akshathabk98@gmail.com');
        
        Messaging.Email[] emails = new Messaging.Email[]{msg};
            Messaging.sendEmail(emails);
        
        
    }
    
}
public class SendEmailUsingTemplate {
    public void sendMail() {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
		String[] sendingTo = new String[]{'sridhar@metazoa.com'};
		email.setSubject('Single Email message Example');
		email.setPlainTextBody('Hello!!!!!!!!!!This is a test email to test single email message program');
		Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
    
    public void sendMailWithTemplate() {
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
		String[] sendingTo = new String[]{'sridhar@metazoa.com'};
		email.setSubject('Single Email message Example');
		//email.setPlainTextBody('Hello!!!!!!!!!!This is a test email to test single email message program');
		email.setTemplateId('00Xi0000001CwnjEAC');
		Messaging.sendEmail(new Messaging.SingleEmailMessage[] {email});
    }
}
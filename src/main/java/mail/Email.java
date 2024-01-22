//package mail;
//
//import model.User;
//
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.PasswordAuthentication;
//import javax.mail.Session;
//import java.util.Properties;
//import java.util.Random;
//
//public class Email {
//    public String getRandom(){
//        Random rnd = new Random();
//        int number = rnd.nextInt(99999);
//        return String.format("%06d", number);
//
//    }
//    public boolean sendEmail(User user){
//
//        boolean test = false ;
//
//        String toMail = user.getEmail();
//        String fromEmail = "dannylevnv@gmail.com";
//        String password = "123456";
//        try{
//
//            Properties pros = new Properties();
//
//            Session session = Session.getInstance(pros, new Authenticator() {
//                @Override
//                protected PasswordAuthentication getPasswordAuthentication() {
//                    return new PasswordAuthentication(fromEmail, password);
//                }
//            });
//            Message mess = new MineMessage(session);
//
//        }
//    }
//}

//package service;
//
//import dao.PasswordResetDAO;
//
//public class PasswordResetService {
//        private PasswordResetDAO passwordResetDAO;
//
//        public void PasswordResetDAO(PasswordResetDAO passwordResetDAO) {
//            this.passwordResetDAO = passwordResetDAO;
//        }
//
//        public boolean sendPasswordResetEmail(String email) {
//            // Implement code to send a password reset email
//            // ...
//
//            return true; // Return true if the email is sent successfully
//        }
//
//        public boolean resetPassword(String email, String newPasscode) {
//            try {
//                UserBean user = userDao.getUserByEmail(email);
//
//                if (user != null) {
//                    // Update the passcode
//                    return userDao.updatePasscode(email, newPasscode);
//                }
//            } catch (SQLException e) {
//                e.printStackTrace();
//            }
//
//            return false; // Return false if the reset fails
//        }
//    }
//
//}

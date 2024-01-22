package bean;

public class ResetPasswordRequest {
    private String email;
    private String passcode;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPasscode() {
        return passcode;
    }

    public void setPasscode(String passcode) {
        this.passcode = passcode;


    }

    public ResetPasswordRequest(String email, String passcode) {
        this.email = email;
        this.passcode = passcode;
    }

    @Override
    public String toString() {
        return "ResetPasswordRequest{" +
                "email='" + email + '\'' +
                ", passcode='" + passcode + '\'' +
                '}';
    }
}

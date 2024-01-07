package lib;

public class MyValidated {
    // Kiểm tra tính hợp lệ của tên
    //name chỉ chứa các ký tự chữ (bao gồm cả chữ cái và chữ in hoa),
    //dấu mũi nhọn (ký hiệu cho các ký tự không Latin), và khoảng trắng.
    //Các từ trong name được phép được ngăn cách bằng khoảng trắng.
    public static boolean isLegitName(String name){
        String regex = "^[\\p{L}\\p{M}]+(\\s[\\p{L}\\p{M}]+)*$";
        return name.matches(regex);
    }
   //isLegitUsername(String username): Kiểm tra tính hợp lệ của tên người dùng (username)
    //Điều kiện:
        //username chỉ chứa các ký tự chữ cái và số.
        //Độ dài của username nằm trong khoảng từ 7 đến 11 ký tự.

    public static boolean isLegitUsername(String username){
        String regex = "^[a-zA-Z0-9]+$";
        return username.matches(regex) && (username.length()>6&&username.length()<12);
    }

    //isLegitPhone(String phone): Kiểm tra tính hợp lệ của số điện thoại.
    //Điều kiện:
        //phone chỉ chứa các ký tự số.
        //Độ dài của phone phải lớn hơn 9.
    public static boolean isLegitPhone(String phone){
        String regex = "^[0-9]+$";
        return phone.matches(regex) && phone.length()>9;
    }

    //isLegitEmail(String email): Kiểm tra tính hợp lệ của địa chỉ email.
        // Điều kiện:
            //email phải tuân theo định dạng của một địa chỉ email hợp lệ.
    public static boolean isLegitEmail(String email){
        String regex = "^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$";
        return email.matches(regex);
    }
}


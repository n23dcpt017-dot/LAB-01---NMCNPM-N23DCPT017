public class TestWithdraw {
    public static void main(String[] args) {
        String cardNo = "1234567890";   // số thẻ demo đã insert trong ATMdemo.sql
        String pin = "1234";            // PIN demo
        double amount = 1000.0;         // số tiền muốn rút

        if (WithdrawModule.verifyPin(cardNo, pin)) {
            System.out.println("PIN correct ✅");
            WithdrawModule.withdraw(cardNo, amount);
        } else {
            System.out.println("❌ Invalid PIN");
        }
    }
}

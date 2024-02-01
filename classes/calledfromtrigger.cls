public class calledfromtrigger {

private static string staticexample()
        {
            return 'hi';
        }
        
    public static void calledfromtriggermethod() {
        calledfromclass.calledfromclassmethod();
    }

}
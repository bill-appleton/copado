@isTest
public class testHello {
    public testHello() {

    }
    
    static testMethod void testHelloMethod(){
        
        Test.startTest();
        System.debug('This is a test method.');
        Test.stopTest();
        
    }
}
@isTest
public class MessageMakeTest {
   public static testMethod void testMyClass(){
       String helloMessage = MessageMaker.MessageMaker();

       System.assertEquals(helloMessage, 'You say "Goodbye," I say "Hello"');

   }
}
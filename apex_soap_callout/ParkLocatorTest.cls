@isTest
private class ParkLocatorTest {
    @isTest 
    static void testCallout(){
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        
        String count = 'Germany';

        System.assertEquals(new List<String>{'Yosemite', 'Sequoia', 'Crater Lake'},ParkLocator.country(count));
    }
}
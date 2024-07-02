public class AnimalLocator {
	public static String getAnimalNameById(Integer Id){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/' + Id);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
       
        Map<String, Object> results = (Map<String, Object>) JSON.deserializeUntyped(response.getBody());
        // Cast the values in the 'animals' key as a list
        Map<String, Object> animals = (Map<String, Object>) results.get('animal');
        System.debug(string.valueOf(animals.get('name')));
        return string.valueOf(animals.get('name'));    
        
    }
}
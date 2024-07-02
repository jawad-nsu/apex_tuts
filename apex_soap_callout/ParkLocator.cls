public class ParkLocator {
    public static List<String> country(String count) {
        ParkService.ParksImplPort park = new ParkService.ParksImplPort();
        return park.byCountry(count);
    }
}
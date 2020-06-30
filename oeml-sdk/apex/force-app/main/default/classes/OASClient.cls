public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'http://localhost:8080/v1';
        calloutName = 'OEML__REST_API';
    }
}

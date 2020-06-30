public class OASClient extends OAS.ApiClient {
    public OASClient() {
        basePath = 'http://localhost:8080/v1';
        calloutName = 'OMS__REST_API';
    }
}

const String apiBaseUrl = 'https://some.api.com';

// sample 1
const String storeInfoApi = '$apiBaseUrl/some-end-point';

// Sample with Arguments
String getAllCollectionsApi({required String value}) =>
    '$apiBaseUrl/some-end-point?value=$value';

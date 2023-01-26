const String apiBaseUrl = "https://storefront.fishry.com";
const String mediaBaseUrl = "https://cdn.fishry.com/themes";
const String productMediaBaseUrl = "https://cdn.fishry.com/product";

// get Info About the Store @ HomeView
// https://storefront.fishry.com/get-store-info?domain=sabroso.fishry.com
const String storeInfoApi =
    '$apiBaseUrl/get-store-info?domain=sabroso.fishry.com';

// get All Collections List
//Url: https://storefront.fishry.com/collection/all?storeID=E172A2A1-87A8-4868-98EF-8EA9A5A6CFD9
String allCollections({required String storeId}) =>
    '$apiBaseUrl/collection/all?storeID=$storeId';

// get Single Collects Detail
// https://storefront.fishry.com/collection?storeID=E172A2A1-87A8-4868-98EF-8EA9A5A6CFD9&slug=<collectionUrl from all collections>
String getCollection({
  required String storeId,
  required String collectionSlug,
}) =>
    '$apiBaseUrl/collection?storeID=$storeId&slug=$collectionSlug';

/// get image url
String getImgUrl({required String imageName}) => '$mediaBaseUrl/$imageName';

/// get Product Image
String getProductImgUrl({required String imageName}) =>
    '$productMediaBaseUrl/$imageName';

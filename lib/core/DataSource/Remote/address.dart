import '../../Api/api_link.dart';
import '../../classes/crud.dart';

class AddressData {
  Crud crud;
  AddressData(this.crud);
  postData(
    String name,
    String description,
    String lat,
    String lan,
    String city,
  ) async {
    var response = await crud.postMapData(
        AppLink.addressApi,
        {
          "name": name,
          "description": description,
          "lat": lat,
          "lan": lan,
          "city": city,
        },
        myToken: "Bearer 64|OQwm7rpOVcSFc4HHjWFzWhYZ7dVIUD8XhkzKevt45420630b");
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }

  getData() async {
    var response = await crud.getProductData(AppLink.addressApi,
        myToken: "Bearer 64|OQwm7rpOVcSFc4HHjWFzWhYZ7dVIUD8XhkzKevt45420630b");
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}

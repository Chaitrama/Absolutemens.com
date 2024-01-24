// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    String id;
    String variantId;
    String shopId;
    VariantProduct variantProduct;
    String name;
    CategoryName categoryName;
    String subcategoryName;
    String? brand;
    Shop shop;
    String price;
    String saleprice;
    String image;
    AvailabileStockStatus availabileStockStatus;
    bool whishlistStatus;
    String seoUrl;
    int inCart;
    String stock;
    String? ordersPlaced;
    String rating;
    String banner;
    String? bannerMessage;

    Products({
        required this.id,
        required this.variantId,
        required this.shopId,
        required this.variantProduct,
        required this.name,
        required this.categoryName,
        required this.subcategoryName,
        required this.brand,
        required this.shop,
        required this.price,
        required this.saleprice,
        required this.image,
        required this.availabileStockStatus,
        required this.whishlistStatus,
        required this.seoUrl,
        required this.inCart,
        required this.stock,
        required this.ordersPlaced,
        required this.rating,
        required this.banner,
        this.bannerMessage,
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        variantId: json["variant_id"],
        shopId: json["shop_id"],
        variantProduct: variantProductValues.map[json["variant_product"]]!,
        name: json["name"],
        categoryName: categoryNameValues.map[json["category_name"]]!,
        subcategoryName: json["subcategory_name"],
        brand: json["brand"],
        shop: shopValues.map[json["shop"]]!,
        price: json["price"],
        saleprice: json["saleprice"],
        image: json["image"],
        availabileStockStatus: availabileStockStatusValues.map[json["availabile_stock_status"]]!,
        whishlistStatus: json["whishlist_status"],
        seoUrl: json["seo_url"],
        inCart: json["in_cart"],
        stock: json["stock"],
        ordersPlaced: json["orders_placed"],
        rating: json["rating"],
        banner: json["banner"],
        bannerMessage: json["banner_message"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "variant_id": variantId,
        "shop_id": shopId,
        "variant_product": variantProductValues.reverse[variantProduct],
        "name": name,
        "category_name": categoryNameValues.reverse[categoryName],
        "subcategory_name": subcategoryName,
        "brand": brand,
        "shop": shopValues.reverse[shop],
        "price": price,
        "saleprice": saleprice,
        "image": image,
        "availabile_stock_status": availabileStockStatusValues.reverse[availabileStockStatus],
        "whishlist_status": whishlistStatus,
        "seo_url": seoUrl,
        "in_cart": inCart,
        "stock": stock,
        "orders_placed": ordersPlaced,
        "rating": rating,
        "banner": banner,
        "banner_message": bannerMessage,
    };
}

enum AvailabileStockStatus {
    AVAILABLE
}

final availabileStockStatusValues = EnumValues({
    "available": AvailabileStockStatus.AVAILABLE
});

enum CategoryName {
    BEARD_CARE,
    BODY_CARE,
    FACE_CARE,
    HAIR_CARE
}

final categoryNameValues = EnumValues({
    "Beard care\t": CategoryName.BEARD_CARE,
    "Body Care": CategoryName.BODY_CARE,
    "Face Care": CategoryName.FACE_CARE,
    "Hair Care": CategoryName.HAIR_CARE
});

enum Shop {
    ABSOLUTEMENS_STORE
}

final shopValues = EnumValues({
    "Absolutemens Store": Shop.ABSOLUTEMENS_STORE
});

enum VariantProduct {
    NO,
    YES
}

final variantProductValues = EnumValues({
    "no": VariantProduct.NO,
    "yes": VariantProduct.YES
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}


// // To parse this JSON data, do
// //
// //     final products = productsFromJson(jsonString);

// import 'dart:convert';

// List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

// String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Products {
//     String id;
//     String variantId;
//     String shopId;
//     VariantProduct variantProduct;
//     String name;
//     CategoryName categoryName;
//     String subcategoryName;
//     String? brand;
//     Shop shop;
//     String price;
//     String saleprice;
//     String image;
//     AvailabileStockStatus availabileStockStatus;
//     bool whishlistStatus;
//     String seoUrl;
//     int inCart;
//     String stock;
//     String? ordersPlaced;

//     Products({
//         required this.id,
//         required this.variantId,
//         required this.shopId,
//         required this.variantProduct,
//         required this.name,
//         required this.categoryName,
//         required this.subcategoryName,
//         required this.brand,
//         required this.shop,
//         required this.price,
//         required this.saleprice,
//         required this.image,
//         required this.availabileStockStatus,
//         required this.whishlistStatus,
//         required this.seoUrl,
//         required this.inCart,
//         required this.stock,
//         required this.ordersPlaced,
//     });

//     factory Products.fromJson(Map<String, dynamic> json) => Products(
//         id: json["id"],
//         variantId: json["variant_id"],
//         shopId: json["shop_id"],
//         variantProduct: variantProductValues.map[json["variant_product"]]!,
//         name: json["name"],
//         categoryName: categoryNameValues.map[json["category_name"]]!,
//         subcategoryName: json["subcategory_name"],
//         brand: json["brand"],
//         shop: shopValues.map[json["shop"]]!,
//         price: json["price"],
//         saleprice: json["saleprice"],
//         image: json["image"],
//         availabileStockStatus: availabileStockStatusValues.map[json["availabile_stock_status"]]!,
//         whishlistStatus: json["whishlist_status"],
//         seoUrl: json["seo_url"],
//         inCart: json["in_cart"],
//         stock: json["stock"],
//         ordersPlaced: json["orders_placed"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "variant_id": variantId,
//         "shop_id": shopId,
//         "variant_product": variantProductValues.reverse[variantProduct],
//         "name": name,
//         "category_name": categoryNameValues.reverse[categoryName],
//         "subcategory_name": subcategoryName,
//         "brand": brand,
//         "shop": shopValues.reverse[shop],
//         "price": price,
//         "saleprice": saleprice,
//         "image": image,
//         "availabile_stock_status": availabileStockStatusValues.reverse[availabileStockStatus],
//         "whishlist_status": whishlistStatus,
//         "seo_url": seoUrl,
//         "in_cart": inCart,
//         "stock": stock,
//         "orders_placed": ordersPlaced,
//     };
// }

// enum AvailabileStockStatus {
//     AVAILABLE
// }

// final availabileStockStatusValues = EnumValues({
//     "available": AvailabileStockStatus.AVAILABLE
// });

// enum CategoryName {
//     BEARD_CARE,
//     BODY_CARE,
//     FACE_CARE,
//     HAIR_CARE
// }

// final categoryNameValues = EnumValues({
//     "Beard care\t": CategoryName.BEARD_CARE,
//     "Body Care": CategoryName.BODY_CARE,
//     "Face Care": CategoryName.FACE_CARE,
//     "Hair Care": CategoryName.HAIR_CARE
// });

// enum Shop {
//     ABSOLUTEMENS_STORE
// }

// final shopValues = EnumValues({
//     "Absolutemens Store": Shop.ABSOLUTEMENS_STORE
// });

// enum VariantProduct {
//     NO,
//     YES
// }

// final variantProductValues = EnumValues({
//     "no": VariantProduct.NO,
//     "yes": VariantProduct.YES
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     late Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         reverseMap = map.map((k, v) => MapEntry(v, k));
//         return reverseMap;
//     }
// }

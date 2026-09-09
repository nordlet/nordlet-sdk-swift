import Foundation
import Testing
import Api

@Suite("CatalogClient Wire Tests") struct CatalogClientWireTests {
    @Test func postV1CatalogItemsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "groupId",
                  "attributes": {
                    "key": "value"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "key": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "kindId",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsCreateResponse(
            id: "id",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("groupId"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "key": Nullable<String>.value("value")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>]>.value([
                "key": Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>.value(PostV1CatalogItemsCreateResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsCreateResponseComponentsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("kindId"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "x",
                  "attributes": {
                    "attributes": "attributes"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "translations": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "x",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsCreateResponse(
            id: "x",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("x"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "attributes": Nullable<String>.value("attributes")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>]>.value([
                "translations": Nullable<PostV1CatalogItemsCreateResponseTranslationsValue>.value(PostV1CatalogItemsCreateResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsCreateResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                PostV1CatalogItemsCreateResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("x"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "groupId",
                  "attributes": {
                    "key": "value"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "key": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "kindId",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsGetResponse(
            id: "id",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("groupId"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "key": Nullable<String>.value("value")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsGetResponseTranslationsValue>]>.value([
                "key": Nullable<PostV1CatalogItemsGetResponseTranslationsValue>.value(PostV1CatalogItemsGetResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsGetResponseComponentsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("kindId"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "x",
                  "attributes": {
                    "attributes": "attributes"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "translations": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "x",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsGetResponse(
            id: "x",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("x"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "attributes": Nullable<String>.value("attributes")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsGetResponseTranslationsValue>]>.value([
                "translations": Nullable<PostV1CatalogItemsGetResponseTranslationsValue>.value(PostV1CatalogItemsGetResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsGetResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                PostV1CatalogItemsGetResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("x"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "groupId",
                  "attributes": {
                    "key": "value"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "key": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "kindId",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsUpdateResponse(
            id: "id",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("groupId"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "key": Nullable<String>.value("value")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>]>.value([
                "key": Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>.value(PostV1CatalogItemsUpdateResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsUpdateResponseComponentsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("kindId"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "product",
                  "tracking": "none",
                  "name": "name",
                  "code": "code",
                  "barcode": "barcode",
                  "unit": "unit",
                  "vatClassifierCode": "vatClassifierCode",
                  "vatRatePercent": "vatRatePercent",
                  "salePriceExclVat": "salePriceExclVat",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "cnCode": "cnCode",
                  "originCountry": "originCountry",
                  "netMassKg": "netMassKg",
                  "supplementaryUnit": "supplementaryUnit",
                  "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                  "description": "description",
                  "groupId": "x",
                  "attributes": {
                    "attributes": "attributes"
                  },
                  "documentRef": "documentRef",
                  "translations": {
                    "translations": {
                      "name": "name",
                      "description": "description"
                    }
                  },
                  "components": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "quantity": "quantity"
                    }
                  ],
                  "kindId": "x",
                  "saleAccountCode": "saleAccountCode",
                  "purchaseAccountCode": "purchaseAccountCode",
                  "expenseAccountCode": "expenseAccountCode",
                  "manufacturer": "manufacturer",
                  "grossMassKg": "grossMassKg",
                  "minQuantity": "minQuantity",
                  "costPrice": "costPrice",
                  "isFreePrice": true,
                  "externalId": "externalId",
                  "isReturnable": true,
                  "commentRequired": true,
                  "priceFrom": "priceFrom",
                  "priceTo": "priceTo",
                  "minPrice": "minPrice",
                  "discountPercent": "discountPercent",
                  "maxDiscountPercent": "maxDiscountPercent",
                  "loyaltyPoints": 1000000,
                  "department": "department",
                  "ageRestriction": 1000000,
                  "packageQuantity": "packageQuantity",
                  "taraCode": "taraCode",
                  "certificateNumber": "certificateNumber",
                  "certificateDate": "certificateDate",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsUpdateResponse(
            id: "x",
            type: .product,
            tracking: .none,
            name: "name",
            code: Nullable<String>.value("code"),
            barcode: Nullable<String>.value("barcode"),
            unit: "unit",
            vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
            vatRatePercent: Nullable<String>.value("vatRatePercent"),
            salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            cnCode: Nullable<String>.value("cnCode"),
            originCountry: Nullable<String>.value("originCountry"),
            netMassKg: Nullable<String>.value("netMassKg"),
            supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
            supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
            description: Nullable<String>.value("description"),
            groupId: Nullable<String>.value("x"),
            attributes: Nullable<[String: Nullable<String>]>.value([
                "attributes": Nullable<String>.value("attributes")
            ]),
            documentRef: Nullable<String>.value("documentRef"),
            translations: Nullable<[String: Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>]>.value([
                "translations": Nullable<PostV1CatalogItemsUpdateResponseTranslationsValue>.value(PostV1CatalogItemsUpdateResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                PostV1CatalogItemsUpdateResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                PostV1CatalogItemsUpdateResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                )
            ],
            kindId: Nullable<String>.value("x"),
            saleAccountCode: Nullable<String>.value("saleAccountCode"),
            purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
            expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
            manufacturer: Nullable<String>.value("manufacturer"),
            grossMassKg: Nullable<String>.value("grossMassKg"),
            minQuantity: Nullable<String>.value("minQuantity"),
            costPrice: Nullable<String>.value("costPrice"),
            isFreePrice: true,
            externalId: Nullable<String>.value("externalId"),
            isReturnable: true,
            commentRequired: true,
            priceFrom: Nullable<String>.value("priceFrom"),
            priceTo: Nullable<String>.value("priceTo"),
            minPrice: Nullable<String>.value("minPrice"),
            discountPercent: Nullable<String>.value("discountPercent"),
            maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
            loyaltyPoints: Nullable<Int64>.value(1000000),
            department: Nullable<String>.value("department"),
            ageRestriction: Nullable<Int64>.value(1000000),
            packageQuantity: Nullable<String>.value("packageQuantity"),
            taraCode: Nullable<String>.value("taraCode"),
            certificateNumber: Nullable<String>.value("certificateNumber"),
            certificateDate: Nullable<String>.value("certificateDate"),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsDeleteResponse(
            id: "id"
        )
        let response = try await client.catalog.postV1CatalogItemsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsDeleteResponse(
            id: "x"
        )
        let response = try await client.catalog.postV1CatalogItemsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "type": "product",
                      "tracking": "none",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "vatClassifierCode": "vatClassifierCode",
                      "vatRatePercent": "vatRatePercent",
                      "salePriceExclVat": "salePriceExclVat",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "cnCode": "cnCode",
                      "originCountry": "originCountry",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                      "description": "description",
                      "groupId": "groupId",
                      "attributes": {},
                      "documentRef": "documentRef",
                      "translations": {},
                      "components": [
                        {
                          "itemId": "itemId",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        }
                      ],
                      "kindId": "kindId",
                      "saleAccountCode": "saleAccountCode",
                      "purchaseAccountCode": "purchaseAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "manufacturer": "manufacturer",
                      "grossMassKg": "grossMassKg",
                      "minQuantity": "minQuantity",
                      "costPrice": "costPrice",
                      "isFreePrice": true,
                      "externalId": "externalId",
                      "isReturnable": true,
                      "commentRequired": true,
                      "priceFrom": "priceFrom",
                      "priceTo": "priceTo",
                      "minPrice": "minPrice",
                      "discountPercent": "discountPercent",
                      "maxDiscountPercent": "maxDiscountPercent",
                      "loyaltyPoints": 1000000,
                      "department": "department",
                      "ageRestriction": 1000000,
                      "packageQuantity": "packageQuantity",
                      "taraCode": "taraCode",
                      "certificateNumber": "certificateNumber",
                      "certificateDate": "certificateDate",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {},
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsListResponse(
            rows: [
                PostV1CatalogItemsListResponseRowsItem(
                    id: "id",
                    type: .product,
                    tracking: .none,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    cnCode: Nullable<String>.value("cnCode"),
                    originCountry: Nullable<String>.value("originCountry"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
                    description: Nullable<String>.value("description"),
                    groupId: Nullable<String>.value("groupId"),
                    attributes: Nullable<[String: Nullable<String>]>.value([:]),
                    documentRef: Nullable<String>.value("documentRef"),
                    translations: Nullable<[String: Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>]>.value([:]),
                    components: [
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "itemId",
                            itemName: "itemName",
                            quantity: "quantity"
                        )
                    ],
                    kindId: Nullable<String>.value("kindId"),
                    saleAccountCode: Nullable<String>.value("saleAccountCode"),
                    purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    manufacturer: Nullable<String>.value("manufacturer"),
                    grossMassKg: Nullable<String>.value("grossMassKg"),
                    minQuantity: Nullable<String>.value("minQuantity"),
                    costPrice: Nullable<String>.value("costPrice"),
                    isFreePrice: true,
                    externalId: Nullable<String>.value("externalId"),
                    isReturnable: true,
                    commentRequired: true,
                    priceFrom: Nullable<String>.value("priceFrom"),
                    priceTo: Nullable<String>.value("priceTo"),
                    minPrice: Nullable<String>.value("minPrice"),
                    discountPercent: Nullable<String>.value("discountPercent"),
                    maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
                    loyaltyPoints: Nullable<Int64>.value(1000000),
                    department: Nullable<String>.value("department"),
                    ageRestriction: Nullable<Int64>.value(1000000),
                    packageQuantity: Nullable<String>.value("packageQuantity"),
                    taraCode: Nullable<String>.value("taraCode"),
                    certificateNumber: Nullable<String>.value("certificateNumber"),
                    certificateDate: Nullable<String>.value("certificateDate"),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([:]),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.catalog.postV1CatalogItemsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "type": "product",
                      "tracking": "none",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "vatClassifierCode": "vatClassifierCode",
                      "vatRatePercent": "vatRatePercent",
                      "salePriceExclVat": "salePriceExclVat",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "cnCode": "cnCode",
                      "originCountry": "originCountry",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                      "description": "description",
                      "groupId": "x",
                      "attributes": {
                        "attributes": "attributes"
                      },
                      "documentRef": "documentRef",
                      "translations": {
                        "translations": {
                          "name": "name",
                          "description": "description"
                        }
                      },
                      "components": [
                        {
                          "itemId": "x",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        },
                        {
                          "itemId": "x",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        }
                      ],
                      "kindId": "x",
                      "saleAccountCode": "saleAccountCode",
                      "purchaseAccountCode": "purchaseAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "manufacturer": "manufacturer",
                      "grossMassKg": "grossMassKg",
                      "minQuantity": "minQuantity",
                      "costPrice": "costPrice",
                      "isFreePrice": true,
                      "externalId": "externalId",
                      "isReturnable": true,
                      "commentRequired": true,
                      "priceFrom": "priceFrom",
                      "priceTo": "priceTo",
                      "minPrice": "minPrice",
                      "discountPercent": "discountPercent",
                      "maxDiscountPercent": "maxDiscountPercent",
                      "loyaltyPoints": 1000000,
                      "department": "department",
                      "ageRestriction": 1000000,
                      "packageQuantity": "packageQuantity",
                      "taraCode": "taraCode",
                      "certificateNumber": "certificateNumber",
                      "certificateDate": "certificateDate",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {
                        "posFlags": true
                      },
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "type": "product",
                      "tracking": "none",
                      "name": "name",
                      "code": "code",
                      "barcode": "barcode",
                      "unit": "unit",
                      "vatClassifierCode": "vatClassifierCode",
                      "vatRatePercent": "vatRatePercent",
                      "salePriceExclVat": "salePriceExclVat",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "cnCode": "cnCode",
                      "originCountry": "originCountry",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQtyPerUnit": "supplementaryQtyPerUnit",
                      "description": "description",
                      "groupId": "x",
                      "attributes": {
                        "attributes": "attributes"
                      },
                      "documentRef": "documentRef",
                      "translations": {
                        "translations": {
                          "name": "name",
                          "description": "description"
                        }
                      },
                      "components": [
                        {
                          "itemId": "x",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        },
                        {
                          "itemId": "x",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        }
                      ],
                      "kindId": "x",
                      "saleAccountCode": "saleAccountCode",
                      "purchaseAccountCode": "purchaseAccountCode",
                      "expenseAccountCode": "expenseAccountCode",
                      "manufacturer": "manufacturer",
                      "grossMassKg": "grossMassKg",
                      "minQuantity": "minQuantity",
                      "costPrice": "costPrice",
                      "isFreePrice": true,
                      "externalId": "externalId",
                      "isReturnable": true,
                      "commentRequired": true,
                      "priceFrom": "priceFrom",
                      "priceTo": "priceTo",
                      "minPrice": "minPrice",
                      "discountPercent": "discountPercent",
                      "maxDiscountPercent": "maxDiscountPercent",
                      "loyaltyPoints": 1000000,
                      "department": "department",
                      "ageRestriction": 1000000,
                      "packageQuantity": "packageQuantity",
                      "taraCode": "taraCode",
                      "certificateNumber": "certificateNumber",
                      "certificateDate": "certificateDate",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {
                        "posFlags": true
                      },
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  }
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsListResponse(
            rows: [
                PostV1CatalogItemsListResponseRowsItem(
                    id: "x",
                    type: .product,
                    tracking: .none,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    cnCode: Nullable<String>.value("cnCode"),
                    originCountry: Nullable<String>.value("originCountry"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
                    description: Nullable<String>.value("description"),
                    groupId: Nullable<String>.value("x"),
                    attributes: Nullable<[String: Nullable<String>]>.value([
                        "attributes": Nullable<String>.value("attributes")
                    ]),
                    documentRef: Nullable<String>.value("documentRef"),
                    translations: Nullable<[String: Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>.value(PostV1CatalogItemsListResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    components: [
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        ),
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        )
                    ],
                    kindId: Nullable<String>.value("x"),
                    saleAccountCode: Nullable<String>.value("saleAccountCode"),
                    purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    manufacturer: Nullable<String>.value("manufacturer"),
                    grossMassKg: Nullable<String>.value("grossMassKg"),
                    minQuantity: Nullable<String>.value("minQuantity"),
                    costPrice: Nullable<String>.value("costPrice"),
                    isFreePrice: true,
                    externalId: Nullable<String>.value("externalId"),
                    isReturnable: true,
                    commentRequired: true,
                    priceFrom: Nullable<String>.value("priceFrom"),
                    priceTo: Nullable<String>.value("priceTo"),
                    minPrice: Nullable<String>.value("minPrice"),
                    discountPercent: Nullable<String>.value("discountPercent"),
                    maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
                    loyaltyPoints: Nullable<Int64>.value(1000000),
                    department: Nullable<String>.value("department"),
                    ageRestriction: Nullable<Int64>.value(1000000),
                    packageQuantity: Nullable<String>.value("packageQuantity"),
                    taraCode: Nullable<String>.value("taraCode"),
                    certificateNumber: Nullable<String>.value("certificateNumber"),
                    certificateDate: Nullable<String>.value("certificateDate"),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([
                        "posFlags": Nullable<Bool>.value(true)
                    ]),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1CatalogItemsListResponseRowsItem(
                    id: "x",
                    type: .product,
                    tracking: .none,
                    name: "name",
                    code: Nullable<String>.value("code"),
                    barcode: Nullable<String>.value("barcode"),
                    unit: "unit",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent"),
                    salePriceExclVat: Nullable<String>.value("salePriceExclVat"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    cnCode: Nullable<String>.value("cnCode"),
                    originCountry: Nullable<String>.value("originCountry"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQtyPerUnit: Nullable<String>.value("supplementaryQtyPerUnit"),
                    description: Nullable<String>.value("description"),
                    groupId: Nullable<String>.value("x"),
                    attributes: Nullable<[String: Nullable<String>]>.value([
                        "attributes": Nullable<String>.value("attributes")
                    ]),
                    documentRef: Nullable<String>.value("documentRef"),
                    translations: Nullable<[String: Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>.value(PostV1CatalogItemsListResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    components: [
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        ),
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        )
                    ],
                    kindId: Nullable<String>.value("x"),
                    saleAccountCode: Nullable<String>.value("saleAccountCode"),
                    purchaseAccountCode: Nullable<String>.value("purchaseAccountCode"),
                    expenseAccountCode: Nullable<String>.value("expenseAccountCode"),
                    manufacturer: Nullable<String>.value("manufacturer"),
                    grossMassKg: Nullable<String>.value("grossMassKg"),
                    minQuantity: Nullable<String>.value("minQuantity"),
                    costPrice: Nullable<String>.value("costPrice"),
                    isFreePrice: true,
                    externalId: Nullable<String>.value("externalId"),
                    isReturnable: true,
                    commentRequired: true,
                    priceFrom: Nullable<String>.value("priceFrom"),
                    priceTo: Nullable<String>.value("priceTo"),
                    minPrice: Nullable<String>.value("minPrice"),
                    discountPercent: Nullable<String>.value("discountPercent"),
                    maxDiscountPercent: Nullable<String>.value("maxDiscountPercent"),
                    loyaltyPoints: Nullable<Int64>.value(1000000),
                    department: Nullable<String>.value("department"),
                    ageRestriction: Nullable<Int64>.value(1000000),
                    packageQuantity: Nullable<String>.value("packageQuantity"),
                    taraCode: Nullable<String>.value("taraCode"),
                    certificateNumber: Nullable<String>.value("certificateNumber"),
                    certificateDate: Nullable<String>.value("certificateDate"),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([
                        "posFlags": Nullable<Bool>.value(true)
                    ]),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.catalog.postV1CatalogItemsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsFilesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsFilesListResponse(
            rows: [
                PostV1CatalogItemsFilesListResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsFilesList(
            request: .init(itemId: "itemId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsFilesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "entity": "entity",
                      "entityId": "entityId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "sha256": "sha256",
                      "storageKey": "storageKey",
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsFilesListResponse(
            rows: [
                PostV1CatalogItemsFilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                ),
                PostV1CatalogItemsFilesListResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsFilesList(
            request: .init(itemId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "saftType": "goods",
                  "quantityAccounting": true,
                  "sortOrder": 1000000,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "saftType": "goods",
                  "quantityAccounting": true,
                  "sortOrder": 1000000,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "saftType": "goods",
                  "quantityAccounting": true,
                  "sortOrder": 1000000,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "saftType": "goods",
                  "quantityAccounting": true,
                  "sortOrder": 1000000,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsDeleteResponse(
            id: "id"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsDeleteResponse(
            id: "x"
        )
        let response = try await client.catalog.postV1CatalogItemsKindsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "saftType": "goods",
                      "quantityAccounting": true,
                      "sortOrder": 1000000,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsListResponse(
            rows: [
                PostV1CatalogItemsKindsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsKindsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsKindsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "saftType": "goods",
                      "quantityAccounting": true,
                      "sortOrder": 1000000,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "saftType": "goods",
                      "quantityAccounting": true,
                      "sortOrder": 1000000,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsKindsListResponse(
            rows: [
                PostV1CatalogItemsKindsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                ),
                PostV1CatalogItemsKindsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsKindsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogUnitsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogUnitsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogUnitsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogUnitsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsDeleteResponse(
            id: "id"
        )
        let response = try await client.catalog.postV1CatalogUnitsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsDeleteResponse(
            id: "x"
        )
        let response = try await client.catalog.postV1CatalogUnitsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsListResponse(
            rows: [
                PostV1CatalogUnitsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogUnitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsListResponse(
            rows: [
                PostV1CatalogUnitsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1CatalogUnitsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogUnitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsOptions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "source": "company"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsOptionsResponse(
            rows: [
                PostV1CatalogUnitsOptionsResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogUnitsOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogUnitsOptions2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "code": "code",
                      "name": "name",
                      "source": "company"
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "source": "company"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogUnitsOptionsResponse(
            rows: [
                PostV1CatalogUnitsOptionsResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                ),
                PostV1CatalogUnitsOptionsResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogUnitsOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "parentId": "parentId",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("parentId"),
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "parentId": "x",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("x"),
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "parentId": "parentId",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("parentId"),
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "parentId": "x",
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("x"),
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsDeleteResponse(
            id: "id"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsDeleteResponse(
            id: "x"
        )
        let response = try await client.catalog.postV1CatalogItemGroupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "parentId": "parentId",
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsListResponse(
            rows: [
                PostV1CatalogItemGroupsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("parentId"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemGroupsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "parentId": "x",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "parentId": "x",
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemGroupsListResponse(
            rows: [
                PostV1CatalogItemGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("x"),
                    createdAt: "createdAt"
                ),
                PostV1CatalogItemGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("x"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersUpsert1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "itemId": "itemId",
                  "partnerId": "partnerId",
                  "partnerName": "partnerName",
                  "supplierCode": "supplierCode",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "currency": "currency",
                  "notes": "notes",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersUpsertResponse(
            id: "id",
            itemId: "itemId",
            partnerId: "partnerId",
            partnerName: "partnerName",
            supplierCode: Nullable<String>.value("supplierCode"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersUpsert(
            request: .init(
                itemId: "itemId",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersUpsert2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "itemId": "x",
                  "partnerId": "x",
                  "partnerName": "partnerName",
                  "supplierCode": "supplierCode",
                  "purchasePriceExclVat": "purchasePriceExclVat",
                  "currency": "currency",
                  "notes": "notes",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersUpsertResponse(
            id: "x",
            itemId: "x",
            partnerId: "x",
            partnerName: "partnerName",
            supplierCode: Nullable<String>.value("supplierCode"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            updatedAt: "updatedAt"
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersUpsert(
            request: .init(
                itemId: "x",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "supplierCode": "supplierCode",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "currency": "currency",
                      "notes": "notes",
                      "updatedAt": "updatedAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersListResponse(
            rows: [
                PostV1CatalogItemsSuppliersListResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "supplierCode": "supplierCode",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "currency": "currency",
                      "notes": "notes",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "supplierCode": "supplierCode",
                      "purchasePriceExclVat": "purchasePriceExclVat",
                      "currency": "currency",
                      "notes": "notes",
                      "updatedAt": "updatedAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersListResponse(
            rows: [
                PostV1CatalogItemsSuppliersListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    partnerId: "x",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: "updatedAt"
                ),
                PostV1CatalogItemsSuppliersListResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    partnerId: "x",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersDeleteResponse(
            id: "id"
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogItemsSuppliersDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogItemsSuppliersDeleteResponse(
            id: "x"
        )
        let response = try await client.catalog.postV1CatalogItemsSuppliersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "currency": "currency",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogPriceListsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "currency": "currency",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogPriceListsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "currency": "currency",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogPriceListsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "currency": "currency",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.catalog.postV1CatalogPriceListsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "currency": "currency",
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsListResponse(
            rows: [
                PostV1CatalogPriceListsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogPriceListsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "currency": "currency",
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "currency": "currency",
                      "isActive": true,
                      "createdAt": "createdAt"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsListResponse(
            rows: [
                PostV1CatalogPriceListsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1CatalogPriceListsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogPriceListsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "updated": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsSetResponse(
            updated: 1000000
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsSet(
            request: .init(
                priceListId: "priceListId",
                items: [
                    PostV1CatalogPriceListsItemsSetRequestItemsItem(
                        itemId: "itemId",
                        unitPriceExclVat: "unitPriceExclVat"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "updated": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsSetResponse(
            updated: 1000000
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsSet(
            request: .init(
                priceListId: "x",
                items: [
                    PostV1CatalogPriceListsItemsSetRequestItemsItem(
                        itemId: "x",
                        unitPriceExclVat: "unitPriceExclVat"
                    ),
                    PostV1CatalogPriceListsItemsSetRequestItemsItem(
                        itemId: "x",
                        unitPriceExclVat: "unitPriceExclVat"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "itemCode": "itemCode",
                      "unitPriceExclVat": "unitPriceExclVat"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsListResponse(
            rows: [
                PostV1CatalogPriceListsItemsListResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsList(
            request: .init(priceListId: "priceListId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "itemCode": "itemCode",
                      "unitPriceExclVat": "unitPriceExclVat"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "itemCode": "itemCode",
                      "unitPriceExclVat": "unitPriceExclVat"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsListResponse(
            rows: [
                PostV1CatalogPriceListsItemsListResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                ),
                PostV1CatalogPriceListsItemsListResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsList(
            request: .init(priceListId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsDeleteResponse(
            deleted: true
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsDelete(
            request: .init(
                priceListId: "priceListId",
                itemId: "itemId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CatalogPriceListsItemsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CatalogPriceListsItemsDeleteResponse(
            deleted: true
        )
        let response = try await client.catalog.postV1CatalogPriceListsItemsDelete(
            request: .init(
                priceListId: "x",
                itemId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
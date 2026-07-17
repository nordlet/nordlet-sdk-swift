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
                      "translations": {},
                      "components": [
                        {
                          "itemId": "itemId",
                          "itemName": "itemName",
                          "quantity": "quantity"
                        }
                      ],
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
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
                    translations: Nullable<[String: Nullable<PostV1CatalogItemsListResponseRowsItemTranslationsValue>]>.value([:]),
                    components: [
                        PostV1CatalogItemsListResponseRowsItemComponentsItem(
                            itemId: "itemId",
                            itemName: "itemName",
                            quantity: "quantity"
                        )
                    ],
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "type": "product",
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1CatalogItemsListResponseRowsItem(
                    id: "x",
                    type: .product,
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.catalog.postV1CatalogItemsList(
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
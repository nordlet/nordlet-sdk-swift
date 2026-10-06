import Foundation
import Testing
import Api

@Suite("CatalogClient Wire Tests") struct CatalogClientWireTests {
    @Test func itemsCreate1() async throws -> Void {
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
                  "certificateDate": "2026-07-01",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsCreateCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsCreateCatalogResponseTranslationsValue>]>.value([
                "key": Nullable<ItemsCreateCatalogResponseTranslationsValue>.value(ItemsCreateCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsCreateCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsCreate2() async throws -> Void {
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
                  "certificateDate": "2023-01-15",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsCreateCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsCreateCatalogResponseTranslationsValue>]>.value([
                "translations": Nullable<ItemsCreateCatalogResponseTranslationsValue>.value(ItemsCreateCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsCreateCatalogResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                ItemsCreateCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsGet1() async throws -> Void {
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
                  "certificateDate": "2026-07-01",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsGetCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsGetCatalogResponseTranslationsValue>]>.value([
                "key": Nullable<ItemsGetCatalogResponseTranslationsValue>.value(ItemsGetCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsGetCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsGet2() async throws -> Void {
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
                  "certificateDate": "2023-01-15",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsGetCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsGetCatalogResponseTranslationsValue>]>.value([
                "translations": Nullable<ItemsGetCatalogResponseTranslationsValue>.value(ItemsGetCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsGetCatalogResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                ItemsGetCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsUpdate1() async throws -> Void {
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
                  "certificateDate": "2026-07-01",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "key": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsUpdateCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsUpdateCatalogResponseTranslationsValue>]>.value([
                "key": Nullable<ItemsUpdateCatalogResponseTranslationsValue>.value(ItemsUpdateCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsUpdateCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "key": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsUpdate2() async throws -> Void {
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
                  "certificateDate": "2023-01-15",
                  "validFrom": "validFrom",
                  "validTo": "validTo",
                  "posFlags": {
                    "posFlags": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsUpdateCatalogResponse(
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
            translations: Nullable<[String: Nullable<ItemsUpdateCatalogResponseTranslationsValue>]>.value([
                "translations": Nullable<ItemsUpdateCatalogResponseTranslationsValue>.value(ItemsUpdateCatalogResponseTranslationsValue(
                    name: "name",
                    description: Optional("description")
                ))
            ]),
            components: [
                ItemsUpdateCatalogResponseComponentsItem(
                    itemId: "x",
                    itemName: "itemName",
                    quantity: "quantity"
                ),
                ItemsUpdateCatalogResponseComponentsItem(
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
            certificateDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            validFrom: Nullable<String>.value("validFrom"),
            validTo: Nullable<String>.value("validTo"),
            posFlags: Nullable<[String: Nullable<Bool>]>.value([
                "posFlags": Nullable<Bool>.value(true)
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsDelete1() async throws -> Void {
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
        let expectedResponse = ItemsDeleteCatalogResponse(
            id: "id"
        )
        let response = try await client.catalog.itemsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsDelete2() async throws -> Void {
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
        let expectedResponse = ItemsDeleteCatalogResponse(
            id: "x"
        )
        let response = try await client.catalog.itemsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsList1() async throws -> Void {
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
                      "certificateDate": "2026-07-01",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {},
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
                  },
                  "totalsByCurrency": {
                    "key": {
                      "key": "value"
                    }
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
        let expectedResponse = ItemsListCatalogResponse(
            rows: [
                ItemsListCatalogResponseRowsItem(
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
                    translations: Nullable<[String: Nullable<ItemsListCatalogResponseRowsItemTranslationsValue>]>.value([:]),
                    components: [
                        ItemsListCatalogResponseRowsItemComponentsItem(
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
                    certificateDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([:]),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.catalog.itemsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsList2() async throws -> Void {
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
                      "certificateDate": "2023-01-15",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {
                        "posFlags": true
                      },
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
                      "certificateDate": "2023-01-15",
                      "validFrom": "validFrom",
                      "validTo": "validTo",
                      "posFlags": {
                        "posFlags": true
                      },
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
                  },
                  "totalsByCurrency": {
                    "totalsByCurrency": {
                      "totalsByCurrency": "totalsByCurrency"
                    }
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
        let expectedResponse = ItemsListCatalogResponse(
            rows: [
                ItemsListCatalogResponseRowsItem(
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
                    translations: Nullable<[String: Nullable<ItemsListCatalogResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<ItemsListCatalogResponseRowsItemTranslationsValue>.value(ItemsListCatalogResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    components: [
                        ItemsListCatalogResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        ),
                        ItemsListCatalogResponseRowsItemComponentsItem(
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
                    certificateDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([
                        "posFlags": Nullable<Bool>.value(true)
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ItemsListCatalogResponseRowsItem(
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
                    translations: Nullable<[String: Nullable<ItemsListCatalogResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<ItemsListCatalogResponseRowsItemTranslationsValue>.value(ItemsListCatalogResponseRowsItemTranslationsValue(
                            name: "name",
                            description: Optional("description")
                        ))
                    ]),
                    components: [
                        ItemsListCatalogResponseRowsItemComponentsItem(
                            itemId: "x",
                            itemName: "itemName",
                            quantity: "quantity"
                        ),
                        ItemsListCatalogResponseRowsItemComponentsItem(
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
                    certificateDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    validFrom: Nullable<String>.value("validFrom"),
                    validTo: Nullable<String>.value("validTo"),
                    posFlags: Nullable<[String: Nullable<Bool>]>.value([
                        "posFlags": Nullable<Bool>.value(true)
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.catalog.itemsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsFilesList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ItemsFilesListCatalogResponse(
            rows: [
                ItemsFilesListCatalogResponseRowsItem(
                    id: "id",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsFilesList(
            request: .init(itemId: "itemId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsFilesList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
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
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ItemsFilesListCatalogResponse(
            rows: [
                ItemsFilesListCatalogResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ItemsFilesListCatalogResponseRowsItem(
                    id: "x",
                    entity: "entity",
                    entityId: Nullable<String>.value("entityId"),
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    sha256: "sha256",
                    storageKey: "storageKey",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsFilesList(
            request: .init(itemId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsCreate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsKindsCreateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsKindsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsCreate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsKindsCreateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsKindsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsUpdate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsKindsUpdateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsKindsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsUpdate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsKindsUpdateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            saftType: .goods,
            quantityAccounting: true,
            sortOrder: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsKindsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsDelete1() async throws -> Void {
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
        let expectedResponse = ItemsKindsDeleteCatalogResponse(
            id: "id"
        )
        let response = try await client.catalog.itemsKindsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsDelete2() async throws -> Void {
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
        let expectedResponse = ItemsKindsDeleteCatalogResponse(
            id: "x"
        )
        let response = try await client.catalog.itemsKindsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ItemsKindsListCatalogResponse(
            rows: [
                ItemsKindsListCatalogResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsKindsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsKindsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "saftType": "goods",
                      "quantityAccounting": true,
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ItemsKindsListCatalogResponse(
            rows: [
                ItemsKindsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ItemsKindsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    saftType: .goods,
                    quantityAccounting: true,
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsKindsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UnitsCreateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.unitsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UnitsCreateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.unitsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UnitsUpdateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.unitsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "isActive": true,
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = UnitsUpdateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.unitsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsDelete1() async throws -> Void {
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
        let expectedResponse = UnitsDeleteCatalogResponse(
            id: "id"
        )
        let response = try await client.catalog.unitsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsDelete2() async throws -> Void {
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
        let expectedResponse = UnitsDeleteCatalogResponse(
            id: "x"
        )
        let response = try await client.catalog.unitsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = UnitsListCatalogResponse(
            rows: [
                UnitsListCatalogResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.unitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = UnitsListCatalogResponse(
            rows: [
                UnitsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                UnitsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.unitsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsOptions1() async throws -> Void {
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
        let expectedResponse = UnitsOptionsCatalogResponse(
            rows: [
                UnitsOptionsCatalogResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                )
            ]
        )
        let response = try await client.catalog.unitsOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func unitsOptions2() async throws -> Void {
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
        let expectedResponse = UnitsOptionsCatalogResponse(
            rows: [
                UnitsOptionsCatalogResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                ),
                UnitsOptionsCatalogResponseRowsItem(
                    code: "code",
                    name: "name",
                    source: .company
                )
            ]
        )
        let response = try await client.catalog.unitsOptions(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "parentId": "parentId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemGroupsCreateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("parentId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemGroupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "parentId": "x",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemGroupsCreateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemGroupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "parentId": "parentId",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemGroupsUpdateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("parentId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemGroupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "parentId": "x",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemGroupsUpdateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            parentId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemGroupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsDelete1() async throws -> Void {
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
        let expectedResponse = ItemGroupsDeleteCatalogResponse(
            id: "id"
        )
        let response = try await client.catalog.itemGroupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsDelete2() async throws -> Void {
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
        let expectedResponse = ItemGroupsDeleteCatalogResponse(
            id: "x"
        )
        let response = try await client.catalog.itemGroupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ItemGroupsListCatalogResponse(
            rows: [
                ItemGroupsListCatalogResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("parentId"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemGroupsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "parentId": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ItemGroupsListCatalogResponse(
            rows: [
                ItemGroupsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("x"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ItemGroupsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    parentId: Nullable<String>.value("x"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersUpsert1() async throws -> Void {
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
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsSuppliersUpsertCatalogResponse(
            id: "id",
            itemId: "itemId",
            partnerId: "partnerId",
            partnerName: "partnerName",
            supplierCode: Nullable<String>.value("supplierCode"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsSuppliersUpsert(
            request: .init(
                itemId: "itemId",
                partnerId: "partnerId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersUpsert2() async throws -> Void {
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
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ItemsSuppliersUpsertCatalogResponse(
            id: "x",
            itemId: "x",
            partnerId: "x",
            partnerName: "partnerName",
            supplierCode: Nullable<String>.value("supplierCode"),
            purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.itemsSuppliersUpsert(
            request: .init(
                itemId: "x",
                partnerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersList1() async throws -> Void {
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
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ItemsSuppliersListCatalogResponse(
            rows: [
                ItemsSuppliersListCatalogResponseRowsItem(
                    id: "id",
                    itemId: "itemId",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsSuppliersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersList2() async throws -> Void {
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
                      "updatedAt": "2024-01-15T09:30:00Z"
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
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ItemsSuppliersListCatalogResponse(
            rows: [
                ItemsSuppliersListCatalogResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    partnerId: "x",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ItemsSuppliersListCatalogResponseRowsItem(
                    id: "x",
                    itemId: "x",
                    partnerId: "x",
                    partnerName: "partnerName",
                    supplierCode: Nullable<String>.value("supplierCode"),
                    purchasePriceExclVat: Nullable<String>.value("purchasePriceExclVat"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.itemsSuppliersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersDelete1() async throws -> Void {
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
        let expectedResponse = ItemsSuppliersDeleteCatalogResponse(
            id: "id"
        )
        let response = try await client.catalog.itemsSuppliersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func itemsSuppliersDelete2() async throws -> Void {
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
        let expectedResponse = ItemsSuppliersDeleteCatalogResponse(
            id: "x"
        )
        let response = try await client.catalog.itemsSuppliersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsCreate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PriceListsCreateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.priceListsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsCreate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PriceListsCreateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.priceListsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsUpdate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PriceListsUpdateCatalogResponse(
            id: "id",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.priceListsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsUpdate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PriceListsUpdateCatalogResponse(
            id: "x",
            code: "code",
            name: "name",
            currency: "currency",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.catalog.priceListsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = PriceListsListCatalogResponse(
            rows: [
                PriceListsListCatalogResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.priceListsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "currency": "currency",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = PriceListsListCatalogResponse(
            rows: [
                PriceListsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                PriceListsListCatalogResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    currency: "currency",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.catalog.priceListsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsSet1() async throws -> Void {
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
        let expectedResponse = PriceListsItemsSetCatalogResponse(
            updated: 1000000
        )
        let response = try await client.catalog.priceListsItemsSet(
            request: .init(
                priceListId: "priceListId",
                items: [
                    PriceListsItemsSetCatalogRequestItemsItem(
                        itemId: "itemId",
                        unitPriceExclVat: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsSet2() async throws -> Void {
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
        let expectedResponse = PriceListsItemsSetCatalogResponse(
            updated: 1000000
        )
        let response = try await client.catalog.priceListsItemsSet(
            request: .init(
                priceListId: "x",
                items: [
                    PriceListsItemsSetCatalogRequestItemsItem(
                        itemId: "x",
                        unitPriceExclVat: "unitPriceExclVat"
                    ),
                    PriceListsItemsSetCatalogRequestItemsItem(
                        itemId: "x",
                        unitPriceExclVat: "unitPriceExclVat"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsList1() async throws -> Void {
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
        let expectedResponse = PriceListsItemsListCatalogResponse(
            rows: [
                PriceListsItemsListCatalogResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]
        )
        let response = try await client.catalog.priceListsItemsList(
            request: .init(priceListId: "priceListId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsList2() async throws -> Void {
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
        let expectedResponse = PriceListsItemsListCatalogResponse(
            rows: [
                PriceListsItemsListCatalogResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                ),
                PriceListsItemsListCatalogResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    itemCode: Nullable<String>.value("itemCode"),
                    unitPriceExclVat: "unitPriceExclVat"
                )
            ]
        )
        let response = try await client.catalog.priceListsItemsList(
            request: .init(priceListId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsDelete1() async throws -> Void {
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
        let expectedResponse = PriceListsItemsDeleteCatalogResponse(
            deleted: true
        )
        let response = try await client.catalog.priceListsItemsDelete(
            request: .init(
                priceListId: "priceListId",
                itemId: "itemId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func priceListsItemsDelete2() async throws -> Void {
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
        let expectedResponse = PriceListsItemsDeleteCatalogResponse(
            deleted: true
        )
        let response = try await client.catalog.priceListsItemsDelete(
            request: .init(
                priceListId: "x",
                itemId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
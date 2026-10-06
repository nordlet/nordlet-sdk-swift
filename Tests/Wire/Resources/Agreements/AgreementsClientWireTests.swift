import Foundation
import Testing
import Api

@Suite("AgreementsClient Wire Tests") struct AgreementsClientWireTests {
    @Test func typesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TypesCreateAgreementsResponse(
            id: "id",
            code: "code",
            name: "name"
        )
        let response = try await client.agreements.typesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TypesCreateAgreementsResponse(
            id: "x",
            code: "code",
            name: "name"
        )
        let response = try await client.agreements.typesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name"
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
        let expectedResponse = TypesListAgreementsResponse(
            rows: [
                TypesListAgreementsResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name"
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
        let response = try await client.agreements.typesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func typesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name"
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
        let expectedResponse = TypesListAgreementsResponse(
            rows: [
                TypesListAgreementsResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                ),
                TypesListAgreementsResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
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
        let response = try await client.agreements.typesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "kind": "customer",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "bankAccountId": "bankAccountId",
                  "number": "number",
                  "name": "name",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsCreateAgreementsResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            kind: .customer,
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            bankAccountId: Nullable<String>.value("bankAccountId"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2026-07-01")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsCreateAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsCreateAgreementsResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsCreate(
            request: .init(
                number: "number",
                startDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "kind": "customer",
                  "partnerId": "x",
                  "employeeId": "x",
                  "bankAccountId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsCreateAgreementsResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            kind: .customer,
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            bankAccountId: Nullable<String>.value("x"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2023-01-15")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsCreateAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsCreateAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                ),
                AgreementsCreateAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsCreate(
            request: .init(
                number: "x",
                startDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "kind": "customer",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "bankAccountId": "bankAccountId",
                  "number": "number",
                  "name": "name",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsGetAgreementsResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            kind: .customer,
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            bankAccountId: Nullable<String>.value("bankAccountId"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2026-07-01")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsGetAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsGetAgreementsResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "kind": "customer",
                  "partnerId": "x",
                  "employeeId": "x",
                  "bankAccountId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsGetAgreementsResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            kind: .customer,
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            bankAccountId: Nullable<String>.value("x"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2023-01-15")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsGetAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsGetAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                ),
                AgreementsGetAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "kind": "customer",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "bankAccountId": "bankAccountId",
                  "number": "number",
                  "name": "name",
                  "startDate": "2026-07-01",
                  "endDate": "2026-07-01",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsUpdateAgreementsResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            kind: .customer,
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            bankAccountId: Nullable<String>.value("bankAccountId"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2026-07-01")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsUpdateAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsUpdateAgreementsResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "kind": "customer",
                  "partnerId": "x",
                  "employeeId": "x",
                  "bankAccountId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "2023-01-15",
                  "endDate": "2023-01-15",
                  "autoRenew": true,
                  "value": "value",
                  "billingPeriod": "monthly",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent"
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
        let expectedResponse = AgreementsUpdateAgreementsResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            kind: .customer,
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            bankAccountId: Nullable<String>.value("x"),
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: CalendarDate("2023-01-15")!,
            endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            billingPeriod: Nullable<AgreementsUpdateAgreementsResponseBillingPeriod>.value(.monthly),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            items: [
                AgreementsUpdateAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                ),
                AgreementsUpdateAgreementsResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: Nullable<String>.value("vatRatePercent")
                )
            ]
        )
        let response = try await client.agreements.agreementsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsDelete1() async throws -> Void {
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
        let expectedResponse = AgreementsDeleteAgreementsResponse(
            id: "id"
        )
        let response = try await client.agreements.agreementsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsDelete2() async throws -> Void {
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
        let expectedResponse = AgreementsDeleteAgreementsResponse(
            id: "x"
        )
        let response = try await client.agreements.agreementsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "typeId": "typeId",
                      "kind": "customer",
                      "partnerId": "partnerId",
                      "employeeId": "employeeId",
                      "bankAccountId": "bankAccountId",
                      "number": "number",
                      "name": "name",
                      "startDate": "2026-07-01",
                      "endDate": "2026-07-01",
                      "autoRenew": true,
                      "value": "value",
                      "billingPeriod": "monthly",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "partnerName": "partnerName"
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
        let expectedResponse = AgreementsListAgreementsResponse(
            rows: [
                AgreementsListAgreementsResponseRowsItem(
                    id: "id",
                    typeId: Nullable<String>.value("typeId"),
                    kind: .customer,
                    partnerId: Nullable<String>.value("partnerId"),
                    employeeId: Nullable<String>.value("employeeId"),
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: CalendarDate("2026-07-01")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    billingPeriod: Nullable<AgreementsListAgreementsResponseRowsItemBillingPeriod>.value(.monthly),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
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
        let response = try await client.agreements.agreementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "typeId": "x",
                      "kind": "customer",
                      "partnerId": "x",
                      "employeeId": "x",
                      "bankAccountId": "x",
                      "number": "number",
                      "name": "name",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "autoRenew": true,
                      "value": "value",
                      "billingPeriod": "monthly",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
                    },
                    {
                      "id": "x",
                      "typeId": "x",
                      "kind": "customer",
                      "partnerId": "x",
                      "employeeId": "x",
                      "bankAccountId": "x",
                      "number": "number",
                      "name": "name",
                      "startDate": "2023-01-15",
                      "endDate": "2023-01-15",
                      "autoRenew": true,
                      "value": "value",
                      "billingPeriod": "monthly",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
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
        let expectedResponse = AgreementsListAgreementsResponse(
            rows: [
                AgreementsListAgreementsResponseRowsItem(
                    id: "x",
                    typeId: Nullable<String>.value("x"),
                    kind: .customer,
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    bankAccountId: Nullable<String>.value("x"),
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    billingPeriod: Nullable<AgreementsListAgreementsResponseRowsItemBillingPeriod>.value(.monthly),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                ),
                AgreementsListAgreementsResponseRowsItem(
                    id: "x",
                    typeId: Nullable<String>.value("x"),
                    kind: .customer,
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    bankAccountId: Nullable<String>.value("x"),
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: CalendarDate("2023-01-15")!,
                    endDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    billingPeriod: Nullable<AgreementsListAgreementsResponseRowsItemBillingPeriod>.value(.monthly),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
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
        let response = try await client.agreements.agreementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsGenerateInvoice1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "renewedEndDate": "2026-07-01"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgreementsGenerateInvoiceAgreementsResponse(
            invoiceId: "invoiceId",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            renewedEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)
        )
        let response = try await client.agreements.agreementsGenerateInvoice(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsGenerateInvoice2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "renewedEndDate": "2023-01-15"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgreementsGenerateInvoiceAgreementsResponse(
            invoiceId: "x",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            renewedEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
        )
        let response = try await client.agreements.agreementsGenerateInvoice(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsBillingRun1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generated": [
                    {
                      "agreementId": "agreementId",
                      "invoiceId": "invoiceId",
                      "periodStart": "periodStart",
                      "periodEnd": "periodEnd"
                    }
                  ],
                  "expired": [
                    "expired"
                  ],
                  "errors": [
                    {
                      "agreementId": "agreementId",
                      "message": "message"
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
        let expectedResponse = AgreementsBillingRunAgreementsResponse(
            generated: [
                AgreementsBillingRunAgreementsResponseGeneratedItem(
                    agreementId: "agreementId",
                    invoiceId: "invoiceId",
                    periodStart: "periodStart",
                    periodEnd: "periodEnd"
                )
            ],
            expired: [
                "expired"
            ],
            errors: [
                AgreementsBillingRunAgreementsResponseErrorsItem(
                    agreementId: "agreementId",
                    message: "message"
                )
            ]
        )
        let response = try await client.agreements.agreementsBillingRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func agreementsBillingRun2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "generated": [
                    {
                      "agreementId": "x",
                      "invoiceId": "x",
                      "periodStart": "periodStart",
                      "periodEnd": "periodEnd"
                    },
                    {
                      "agreementId": "x",
                      "invoiceId": "x",
                      "periodStart": "periodStart",
                      "periodEnd": "periodEnd"
                    }
                  ],
                  "expired": [
                    "expired",
                    "expired"
                  ],
                  "errors": [
                    {
                      "agreementId": "x",
                      "message": "message"
                    },
                    {
                      "agreementId": "x",
                      "message": "message"
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
        let expectedResponse = AgreementsBillingRunAgreementsResponse(
            generated: [
                AgreementsBillingRunAgreementsResponseGeneratedItem(
                    agreementId: "x",
                    invoiceId: "x",
                    periodStart: "periodStart",
                    periodEnd: "periodEnd"
                ),
                AgreementsBillingRunAgreementsResponseGeneratedItem(
                    agreementId: "x",
                    invoiceId: "x",
                    periodStart: "periodStart",
                    periodEnd: "periodEnd"
                )
            ],
            expired: [
                "expired",
                "expired"
            ],
            errors: [
                AgreementsBillingRunAgreementsResponseErrorsItem(
                    agreementId: "x",
                    message: "message"
                ),
                AgreementsBillingRunAgreementsResponseErrorsItem(
                    agreementId: "x",
                    message: "message"
                )
            ]
        )
        let response = try await client.agreements.agreementsBillingRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "insurerPartnerId": "insurerPartnerId",
                  "policyNumber": "policyNumber",
                  "insuredObject": "insuredObject",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "premium": "premium",
                  "currency": "currency",
                  "notes": "notes",
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
        let expectedResponse = InsurancePoliciesCreateAgreementsResponse(
            id: "id",
            insurerPartnerId: Nullable<String>.value("insurerPartnerId"),
            policyNumber: "policyNumber",
            insuredObject: "insuredObject",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            premium: Nullable<String>.value("premium"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.agreements.insurancePoliciesCreate(
            request: .init(
                policyNumber: "policyNumber",
                insuredObject: "insuredObject",
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "insurerPartnerId": "x",
                  "policyNumber": "policyNumber",
                  "insuredObject": "insuredObject",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "premium": "premium",
                  "currency": "currency",
                  "notes": "notes",
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
        let expectedResponse = InsurancePoliciesCreateAgreementsResponse(
            id: "x",
            insurerPartnerId: Nullable<String>.value("x"),
            policyNumber: "policyNumber",
            insuredObject: "insuredObject",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            premium: Nullable<String>.value("premium"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.agreements.insurancePoliciesCreate(
            request: .init(
                policyNumber: "x",
                insuredObject: "x",
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "insurerPartnerId": "insurerPartnerId",
                      "policyNumber": "policyNumber",
                      "insuredObject": "insuredObject",
                      "fromDate": "2026-07-01",
                      "toDate": "2026-07-01",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = InsurancePoliciesListAgreementsResponse(
            rows: [
                InsurancePoliciesListAgreementsResponseRowsItem(
                    id: "id",
                    insurerPartnerId: Nullable<String>.value("insurerPartnerId"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: CalendarDate("2026-07-01")!,
                    toDate: CalendarDate("2026-07-01")!,
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.agreements.insurancePoliciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "insurerPartnerId": "x",
                      "policyNumber": "policyNumber",
                      "insuredObject": "insuredObject",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "insurerPartnerId": "x",
                      "policyNumber": "policyNumber",
                      "insuredObject": "insuredObject",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = InsurancePoliciesListAgreementsResponse(
            rows: [
                InsurancePoliciesListAgreementsResponseRowsItem(
                    id: "x",
                    insurerPartnerId: Nullable<String>.value("x"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: CalendarDate("2023-01-15")!,
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                InsurancePoliciesListAgreementsResponseRowsItem(
                    id: "x",
                    insurerPartnerId: Nullable<String>.value("x"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: CalendarDate("2023-01-15")!,
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.agreements.insurancePoliciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesDelete1() async throws -> Void {
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
        let expectedResponse = InsurancePoliciesDeleteAgreementsResponse(
            id: "id"
        )
        let response = try await client.agreements.insurancePoliciesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func insurancePoliciesDelete2() async throws -> Void {
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
        let expectedResponse = InsurancePoliciesDeleteAgreementsResponse(
            id: "x"
        )
        let response = try await client.agreements.insurancePoliciesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
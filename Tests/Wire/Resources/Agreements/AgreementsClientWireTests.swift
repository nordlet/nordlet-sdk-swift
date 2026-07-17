import Foundation
import Testing
import Api

@Suite("AgreementsClient Wire Tests") struct AgreementsClientWireTests {
    @Test func postV1AgreementsTypesCreate1() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsTypesCreateResponse(
            id: "id",
            code: "code",
            name: "name"
        )
        let response = try await client.agreements.postV1AgreementsTypesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsTypesCreate2() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsTypesCreateResponse(
            id: "x",
            code: "code",
            name: "name"
        )
        let response = try await client.agreements.postV1AgreementsTypesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsTypesList1() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsTypesListResponse(
            rows: [
                PostV1AgreementsTypesListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsTypesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsTypesList2() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsTypesListResponse(
            rows: [
                PostV1AgreementsTypesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                ),
                PostV1AgreementsTypesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsTypesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "partnerId": "partnerId",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsCreateResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            partnerId: "partnerId",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsCreateResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsCreate(
            request: .init(
                partnerId: "partnerId",
                number: "number",
                startDate: "startDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "partnerId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsCreateResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            partnerId: "x",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsCreateResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                ),
                PostV1AgreementsAgreementsCreateResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsCreate(
            request: .init(
                partnerId: "x",
                number: "x",
                startDate: "startDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "partnerId": "partnerId",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsGetResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            partnerId: "partnerId",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsGetResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "partnerId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsGetResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            partnerId: "x",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsGetResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                ),
                PostV1AgreementsAgreementsGetResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "typeId": "typeId",
                  "partnerId": "partnerId",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsUpdateResponse(
            id: "id",
            typeId: Nullable<String>.value("typeId"),
            partnerId: "partnerId",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsUpdateResponseItemsItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "typeId": "x",
                  "partnerId": "x",
                  "number": "number",
                  "name": "name",
                  "startDate": "startDate",
                  "endDate": "endDate",
                  "autoRenew": true,
                  "value": "value",
                  "currency": "currency",
                  "status": "draft",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "items": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice"
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
        let expectedResponse = PostV1AgreementsAgreementsUpdateResponse(
            id: "x",
            typeId: Nullable<String>.value("x"),
            partnerId: "x",
            number: "number",
            name: Nullable<String>.value("name"),
            startDate: "startDate",
            endDate: Nullable<String>.value("endDate"),
            autoRenew: true,
            value: Nullable<String>.value("value"),
            currency: "currency",
            status: .draft,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            items: [
                PostV1AgreementsAgreementsUpdateResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                ),
                PostV1AgreementsAgreementsUpdateResponseItemsItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    quantity: Nullable<String>.value("quantity"),
                    unitPrice: Nullable<String>.value("unitPrice")
                )
            ]
        )
        let response = try await client.agreements.postV1AgreementsAgreementsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsAgreementsDeleteResponse(
            id: "id"
        )
        let response = try await client.agreements.postV1AgreementsAgreementsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsAgreementsDeleteResponse(
            id: "x"
        )
        let response = try await client.agreements.postV1AgreementsAgreementsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "typeId": "typeId",
                      "partnerId": "partnerId",
                      "number": "number",
                      "name": "name",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "autoRenew": true,
                      "value": "value",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AgreementsAgreementsListResponse(
            rows: [
                PostV1AgreementsAgreementsListResponseRowsItem(
                    id: "id",
                    typeId: Nullable<String>.value("typeId"),
                    partnerId: "partnerId",
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsAgreementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsAgreementsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "typeId": "x",
                      "partnerId": "x",
                      "number": "number",
                      "name": "name",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "autoRenew": true,
                      "value": "value",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "typeId": "x",
                      "partnerId": "x",
                      "number": "number",
                      "name": "name",
                      "startDate": "startDate",
                      "endDate": "endDate",
                      "autoRenew": true,
                      "value": "value",
                      "currency": "currency",
                      "status": "draft",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AgreementsAgreementsListResponse(
            rows: [
                PostV1AgreementsAgreementsListResponseRowsItem(
                    id: "x",
                    typeId: Nullable<String>.value("x"),
                    partnerId: "x",
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1AgreementsAgreementsListResponseRowsItem(
                    id: "x",
                    typeId: Nullable<String>.value("x"),
                    partnerId: "x",
                    number: "number",
                    name: Nullable<String>.value("name"),
                    startDate: "startDate",
                    endDate: Nullable<String>.value("endDate"),
                    autoRenew: true,
                    value: Nullable<String>.value("value"),
                    currency: "currency",
                    status: .draft,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsAgreementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "insurerPartnerId": "insurerPartnerId",
                  "policyNumber": "policyNumber",
                  "insuredObject": "insuredObject",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "premium": "premium",
                  "currency": "currency",
                  "notes": "notes",
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesCreateResponse(
            id: "id",
            insurerPartnerId: Nullable<String>.value("insurerPartnerId"),
            policyNumber: "policyNumber",
            insuredObject: "insuredObject",
            fromDate: "fromDate",
            toDate: "toDate",
            premium: Nullable<String>.value("premium"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesCreate(
            request: .init(
                policyNumber: "policyNumber",
                insuredObject: "insuredObject",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "insurerPartnerId": "x",
                  "policyNumber": "policyNumber",
                  "insuredObject": "insuredObject",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "premium": "premium",
                  "currency": "currency",
                  "notes": "notes",
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesCreateResponse(
            id: "x",
            insurerPartnerId: Nullable<String>.value("x"),
            policyNumber: "policyNumber",
            insuredObject: "insuredObject",
            fromDate: "fromDate",
            toDate: "toDate",
            premium: Nullable<String>.value("premium"),
            currency: "currency",
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesCreate(
            request: .init(
                policyNumber: "x",
                insuredObject: "x",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesList1() async throws -> Void {
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
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesListResponse(
            rows: [
                PostV1AgreementsInsurancePoliciesListResponseRowsItem(
                    id: "id",
                    insurerPartnerId: Nullable<String>.value("insurerPartnerId"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesList2() async throws -> Void {
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
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "insurerPartnerId": "x",
                      "policyNumber": "policyNumber",
                      "insuredObject": "insuredObject",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "premium": "premium",
                      "currency": "currency",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesListResponse(
            rows: [
                PostV1AgreementsInsurancePoliciesListResponseRowsItem(
                    id: "x",
                    insurerPartnerId: Nullable<String>.value("x"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1AgreementsInsurancePoliciesListResponseRowsItem(
                    id: "x",
                    insurerPartnerId: Nullable<String>.value("x"),
                    policyNumber: "policyNumber",
                    insuredObject: "insuredObject",
                    fromDate: "fromDate",
                    toDate: "toDate",
                    premium: Nullable<String>.value("premium"),
                    currency: "currency",
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesDelete1() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesDeleteResponse(
            id: "id"
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1AgreementsInsurancePoliciesDelete2() async throws -> Void {
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
        let expectedResponse = PostV1AgreementsInsurancePoliciesDeleteResponse(
            id: "x"
        )
        let response = try await client.agreements.postV1AgreementsInsurancePoliciesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
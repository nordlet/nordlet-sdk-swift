import Foundation
import Testing
import Api

@Suite("CashClient Wire Tests") struct CashClientWireTests {
    @Test func postV1CashOrdersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "date",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = PostV1CashOrdersCreateResponse(
            id: "id",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: "date",
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.cash.postV1CashOrdersCreate(
            request: .init(
                type: .receipt,
                date: "date",
                amount: "amount",
                purpose: "purpose",
                counterAccountCode: "counterAccountCode"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashOrdersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "date",
                  "partnerId": "x",
                  "employeeId": "x",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "x",
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
        let expectedResponse = PostV1CashOrdersCreateResponse(
            id: "x",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: "date",
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.cash.postV1CashOrdersCreate(
            request: .init(
                type: .receipt,
                date: "date",
                amount: "amount",
                purpose: "x",
                counterAccountCode: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashOrdersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "date",
                  "partnerId": "partnerId",
                  "employeeId": "employeeId",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = PostV1CashOrdersGetResponse(
            id: "id",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: "date",
            partnerId: Nullable<String>.value("partnerId"),
            employeeId: Nullable<String>.value("employeeId"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.cash.postV1CashOrdersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashOrdersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "type": "receipt",
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "date": "date",
                  "partnerId": "x",
                  "employeeId": "x",
                  "amount": "amount",
                  "currency": "currency",
                  "purpose": "purpose",
                  "cashAccountCode": "cashAccountCode",
                  "counterAccountCode": "counterAccountCode",
                  "journalTransactionId": "x",
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
        let expectedResponse = PostV1CashOrdersGetResponse(
            id: "x",
            type: .receipt,
            series: "series",
            number: 1000000,
            fullNumber: "fullNumber",
            date: "date",
            partnerId: Nullable<String>.value("x"),
            employeeId: Nullable<String>.value("x"),
            amount: "amount",
            currency: "currency",
            purpose: "purpose",
            cashAccountCode: "cashAccountCode",
            counterAccountCode: "counterAccountCode",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.cash.postV1CashOrdersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashOrdersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "date",
                      "partnerId": "partnerId",
                      "employeeId": "employeeId",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = PostV1CashOrdersListResponse(
            rows: [
                PostV1CashOrdersListResponseRowsItem(
                    id: "id",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: "date",
                    partnerId: Nullable<String>.value("partnerId"),
                    employeeId: Nullable<String>.value("employeeId"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.cash.postV1CashOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashOrdersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "date",
                      "partnerId": "x",
                      "employeeId": "x",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "type": "receipt",
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "date": "date",
                      "partnerId": "x",
                      "employeeId": "x",
                      "amount": "amount",
                      "currency": "currency",
                      "purpose": "purpose",
                      "cashAccountCode": "cashAccountCode",
                      "counterAccountCode": "counterAccountCode",
                      "journalTransactionId": "x",
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
        let expectedResponse = PostV1CashOrdersListResponse(
            rows: [
                PostV1CashOrdersListResponseRowsItem(
                    id: "x",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: "date",
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1CashOrdersListResponseRowsItem(
                    id: "x",
                    type: .receipt,
                    series: "series",
                    number: 1000000,
                    fullNumber: "fullNumber",
                    date: "date",
                    partnerId: Nullable<String>.value("x"),
                    employeeId: Nullable<String>.value("x"),
                    amount: "amount",
                    currency: "currency",
                    purpose: "purpose",
                    cashAccountCode: "cashAccountCode",
                    counterAccountCode: "counterAccountCode",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.cash.postV1CashOrdersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashBalance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cashAccountCode": "cashAccountCode",
                  "balance": "balance"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CashBalanceResponse(
            cashAccountCode: "cashAccountCode",
            balance: "balance"
        )
        let response = try await client.cash.postV1CashBalance(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashBalance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cashAccountCode": "cashAccountCode",
                  "balance": "balance"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1CashBalanceResponse(
            cashAccountCode: "cashAccountCode",
            balance: "balance"
        )
        let response = try await client.cash.postV1CashBalance(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashAdvanceHoldersBalances1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "balance": "balance"
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
        let expectedResponse = PostV1CashAdvanceHoldersBalancesResponse(
            rows: [
                PostV1CashAdvanceHoldersBalancesResponseRowsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.cash.postV1CashAdvanceHoldersBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CashAdvanceHoldersBalances2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "balance": "balance"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "issued": "issued",
                      "returned": "returned",
                      "balance": "balance"
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
        let expectedResponse = PostV1CashAdvanceHoldersBalancesResponse(
            rows: [
                PostV1CashAdvanceHoldersBalancesResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    balance: "balance"
                ),
                PostV1CashAdvanceHoldersBalancesResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    issued: "issued",
                    returned: "returned",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.cash.postV1CashAdvanceHoldersBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
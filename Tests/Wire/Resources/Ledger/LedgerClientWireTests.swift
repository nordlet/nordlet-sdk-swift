import Foundation
import Testing
import Api

@Suite("LedgerClient Wire Tests") struct LedgerClientWireTests {
    @Test func postV1LedgerAccountsList1() async throws -> Void {
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
                      "type": "asset",
                      "parentId": "parentId",
                      "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsListResponse(
            rows: [
                PostV1LedgerAccountsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    type: .asset,
                    parentId: Nullable<String>.value("parentId"),
                    isPostable: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsList2() async throws -> Void {
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
                      "type": "asset",
                      "parentId": "x",
                      "isPostable": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "type": "asset",
                      "parentId": "x",
                      "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsListResponse(
            rows: [
                PostV1LedgerAccountsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    type: .asset,
                    parentId: Nullable<String>.value("x"),
                    isPostable: true,
                    createdAt: "createdAt"
                ),
                PostV1LedgerAccountsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    type: .asset,
                    parentId: Nullable<String>.value("x"),
                    isPostable: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "type": "asset",
                  "parentId": "parentId",
                  "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            type: .asset,
            parentId: Nullable<String>.value("parentId"),
            isPostable: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerAccountsCreate(
            request: .init(
                code: "code",
                name: "name",
                type: .asset
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "type": "asset",
                  "parentId": "x",
                  "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            type: .asset,
            parentId: Nullable<String>.value("x"),
            isPostable: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerAccountsCreate(
            request: .init(
                code: "x",
                name: "x",
                type: .asset
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "type": "asset",
                  "parentId": "parentId",
                  "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            type: .asset,
            parentId: Nullable<String>.value("parentId"),
            isPostable: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerAccountsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "type": "asset",
                  "parentId": "x",
                  "isPostable": true,
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
        let expectedResponse = PostV1LedgerAccountsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            type: .asset,
            parentId: Nullable<String>.value("x"),
            isPostable: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerAccountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsApplyTemplate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "accounts": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerAccountsApplyTemplateResponse(
            accounts: 1000000
        )
        let response = try await client.ledger.postV1LedgerAccountsApplyTemplate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerAccountsApplyTemplate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "accounts": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerAccountsApplyTemplateResponse(
            accounts: 1000000
        )
        let response = try await client.ledger.postV1LedgerAccountsApplyTemplate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "open"
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
        let expectedResponse = PostV1LedgerPeriodsListResponse(
            rows: [
                PostV1LedgerPeriodsListResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerPeriodsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "open"
                    },
                    {
                      "id": "x",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "open"
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
        let expectedResponse = PostV1LedgerPeriodsListResponse(
            rows: [
                PostV1LedgerPeriodsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                ),
                PostV1LedgerPeriodsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerPeriodsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsLock1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "open"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerPeriodsLockResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.postV1LedgerPeriodsLock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsLock2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "open"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerPeriodsLockResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.postV1LedgerPeriodsLock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsUnlock1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "open"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerPeriodsUnlockResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.postV1LedgerPeriodsUnlock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPeriodsUnlock2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "open"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerPeriodsUnlockResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.postV1LedgerPeriodsUnlock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "status": "draft",
                      "createdAt": "createdAt",
                      "postedAt": "postedAt"
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
        let expectedResponse = PostV1LedgerJournalTransactionsListResponse(
            rows: [
                PostV1LedgerJournalTransactionsListResponseRowsItem(
                    id: "id",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    status: .draft,
                    createdAt: "createdAt",
                    postedAt: Nullable<String>.value("postedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "status": "draft",
                      "createdAt": "createdAt",
                      "postedAt": "postedAt"
                    },
                    {
                      "id": "x",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "status": "draft",
                      "createdAt": "createdAt",
                      "postedAt": "postedAt"
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
        let expectedResponse = PostV1LedgerJournalTransactionsListResponse(
            rows: [
                PostV1LedgerJournalTransactionsListResponseRowsItem(
                    id: "x",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    status: .draft,
                    createdAt: "createdAt",
                    postedAt: Nullable<String>.value("postedAt")
                ),
                PostV1LedgerJournalTransactionsListResponseRowsItem(
                    id: "x",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    status: .draft,
                    createdAt: "createdAt",
                    postedAt: Nullable<String>.value("postedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "groupId": "groupId",
                  "groupName": "groupName",
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
        let expectedResponse = PostV1LedgerCostCentersCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("groupId"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCentersCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "groupId": "x",
                  "groupName": "groupName",
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
        let expectedResponse = PostV1LedgerCostCentersCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("x"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCentersCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "groupId": "groupId",
                  "groupName": "groupName",
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
        let expectedResponse = PostV1LedgerCostCentersUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("groupId"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCentersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "groupId": "x",
                  "groupName": "groupName",
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
        let expectedResponse = PostV1LedgerCostCentersUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("x"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCentersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersList1() async throws -> Void {
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
                      "groupId": "groupId",
                      "groupName": "groupName",
                      "isActive": true,
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
        let expectedResponse = PostV1LedgerCostCentersListResponse(
            rows: [
                PostV1LedgerCostCentersListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("groupId"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerCostCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCentersList2() async throws -> Void {
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
                      "groupId": "x",
                      "groupName": "groupName",
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "groupId": "x",
                      "groupName": "groupName",
                      "isActive": true,
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
        let expectedResponse = PostV1LedgerCostCentersListResponse(
            rows: [
                PostV1LedgerCostCentersListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1LedgerCostCentersListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerCostCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1LedgerCostCenterGroupsCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1LedgerCostCenterGroupsCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1LedgerCostCenterGroupsUpdateResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = PostV1LedgerCostCenterGroupsUpdateResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1LedgerCostCenterGroupsDeleteResponse(
            deleted: true
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1LedgerCostCenterGroupsDeleteResponse(
            deleted: true
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsList1() async throws -> Void {
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
        let expectedResponse = PostV1LedgerCostCenterGroupsListResponse(
            rows: [
                PostV1LedgerCostCenterGroupsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerCostCenterGroupsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
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
        let expectedResponse = PostV1LedgerCostCenterGroupsListResponse(
            rows: [
                PostV1LedgerCostCenterGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                ),
                PostV1LedgerCostCenterGroupsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerCostCenterGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPostingRulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
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
        let expectedResponse = PostV1LedgerPostingRulesListResponse(
            rows: [
                PostV1LedgerPostingRulesListResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerPostingRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPostingRulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
                    },
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
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
        let expectedResponse = PostV1LedgerPostingRulesListResponse(
            rows: [
                PostV1LedgerPostingRulesListResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                ),
                PostV1LedgerPostingRulesListResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerPostingRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPostingRulesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
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
        let expectedResponse = PostV1LedgerPostingRulesUpdateResponse(
            rows: [
                PostV1LedgerPostingRulesUpdateResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerPostingRulesUpdate(
            request: .init(rules: [
                PostV1LedgerPostingRulesUpdateRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerPostingRulesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
                    },
                    {
                      "key": "key",
                      "description": "description",
                      "defaultCode": "defaultCode",
                      "accountCode": "accountCode",
                      "overridden": true
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
        let expectedResponse = PostV1LedgerPostingRulesUpdateResponse(
            rows: [
                PostV1LedgerPostingRulesUpdateResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                ),
                PostV1LedgerPostingRulesUpdateResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerPostingRulesUpdate(
            request: .init(rules: [
                PostV1LedgerPostingRulesUpdateRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                ),
                PostV1LedgerPostingRulesUpdateRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "equityAccountCode": "equityAccountCode",
                  "sharesQuantity": "sharesQuantity",
                  "sharesAmount": "sharesAmount",
                  "sharesType": "sharesType",
                  "sharesAcquisitionDate": "sharesAcquisitionDate",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
        let expectedResponse = PostV1LedgerOwnersCreateResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
            address: Nullable<PostV1LedgerOwnersCreateResponseAddress>.value(PostV1LedgerOwnersCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerOwnersCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "equityAccountCode": "equityAccountCode",
                  "sharesQuantity": "sharesQuantity",
                  "sharesAmount": "sharesAmount",
                  "sharesType": "sharesType",
                  "sharesAcquisitionDate": "sharesAcquisitionDate",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
        let expectedResponse = PostV1LedgerOwnersCreateResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
            address: Nullable<PostV1LedgerOwnersCreateResponseAddress>.value(PostV1LedgerOwnersCreateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerOwnersCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "code": "code",
                  "equityAccountCode": "equityAccountCode",
                  "sharesQuantity": "sharesQuantity",
                  "sharesAmount": "sharesAmount",
                  "sharesType": "sharesType",
                  "sharesAcquisitionDate": "sharesAcquisitionDate",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
        let expectedResponse = PostV1LedgerOwnersUpdateResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
            address: Nullable<PostV1LedgerOwnersUpdateResponseAddress>.value(PostV1LedgerOwnersUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerOwnersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "code": "code",
                  "equityAccountCode": "equityAccountCode",
                  "sharesQuantity": "sharesQuantity",
                  "sharesAmount": "sharesAmount",
                  "sharesType": "sharesType",
                  "sharesAcquisitionDate": "sharesAcquisitionDate",
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
        let expectedResponse = PostV1LedgerOwnersUpdateResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
            address: Nullable<PostV1LedgerOwnersUpdateResponseAddress>.value(PostV1LedgerOwnersUpdateResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            createdAt: "createdAt"
        )
        let response = try await client.ledger.postV1LedgerOwnersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
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
        let expectedResponse = PostV1LedgerOwnersDeleteResponse(
            id: "id",
            deleted: true
        )
        let response = try await client.ledger.postV1LedgerOwnersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
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
        let expectedResponse = PostV1LedgerOwnersDeleteResponse(
            id: "x",
            deleted: true
        )
        let response = try await client.ledger.postV1LedgerOwnersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "code": "code",
                      "equityAccountCode": "equityAccountCode",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "sharesAcquisitionDate": "sharesAcquisitionDate",
                      "address": {},
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
        let expectedResponse = PostV1LedgerOwnersListResponse(
            rows: [
                PostV1LedgerOwnersListResponseRowsItem(
                    id: "id",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
                    address: Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>.value(PostV1LedgerOwnersListResponseRowsItemAddress(

                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerOwnersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerOwnersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "equityAccountCode": "equityAccountCode",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "sharesAcquisitionDate": "sharesAcquisitionDate",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "equityAccountCode": "equityAccountCode",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "sharesAcquisitionDate": "sharesAcquisitionDate",
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
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
        let expectedResponse = PostV1LedgerOwnersListResponse(
            rows: [
                PostV1LedgerOwnersListResponseRowsItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
                    address: Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>.value(PostV1LedgerOwnersListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    createdAt: "createdAt"
                ),
                PostV1LedgerOwnersListResponseRowsItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<String>.value("sharesAcquisitionDate"),
                    address: Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>.value(PostV1LedgerOwnersListResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.ledger.postV1LedgerOwnersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "date",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "documentId",
                  "status": "draft",
                  "createdAt": "createdAt",
                  "postedAt": "postedAt",
                  "entries": [
                    {
                      "id": "id",
                      "accountId": "accountId",
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "costCenterId": "costCenterId",
                      "debit": "debit",
                      "credit": "credit",
                      "description": "description"
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
        let expectedResponse = PostV1LedgerJournalTransactionsGetResponse(
            id: "id",
            date: "date",
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("documentId"),
            status: .draft,
            createdAt: "createdAt",
            postedAt: Nullable<String>.value("postedAt"),
            entries: [
                PostV1LedgerJournalTransactionsGetResponseEntriesItem(
                    id: "id",
                    accountId: "accountId",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("costCenterId"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "date",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "x",
                  "status": "draft",
                  "createdAt": "createdAt",
                  "postedAt": "postedAt",
                  "entries": [
                    {
                      "id": "x",
                      "accountId": "x",
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "costCenterId": "x",
                      "debit": "debit",
                      "credit": "credit",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "accountId": "x",
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "costCenterId": "x",
                      "debit": "debit",
                      "credit": "credit",
                      "description": "description"
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
        let expectedResponse = PostV1LedgerJournalTransactionsGetResponse(
            id: "x",
            date: "date",
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("x"),
            status: .draft,
            createdAt: "createdAt",
            postedAt: Nullable<String>.value("postedAt"),
            entries: [
                PostV1LedgerJournalTransactionsGetResponseEntriesItem(
                    id: "x",
                    accountId: "x",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("x"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                ),
                PostV1LedgerJournalTransactionsGetResponseEntriesItem(
                    id: "x",
                    accountId: "x",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("x"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                )
            ]
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "date",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "documentId",
                  "status": "draft",
                  "createdAt": "createdAt",
                  "postedAt": "postedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerJournalTransactionsCreateResponse(
            id: "id",
            date: "date",
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("documentId"),
            status: .draft,
            createdAt: "createdAt",
            postedAt: Nullable<String>.value("postedAt")
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsCreate(
            request: .init(
                date: "date",
                entries: [
                    PostV1LedgerJournalTransactionsCreateRequestEntriesItem(
                        accountCode: "accountCode"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1LedgerJournalTransactionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "date",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "x",
                  "status": "draft",
                  "createdAt": "createdAt",
                  "postedAt": "postedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1LedgerJournalTransactionsCreateResponse(
            id: "x",
            date: "date",
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("x"),
            status: .draft,
            createdAt: "createdAt",
            postedAt: Nullable<String>.value("postedAt")
        )
        let response = try await client.ledger.postV1LedgerJournalTransactionsCreate(
            request: .init(
                date: "date",
                entries: [
                    PostV1LedgerJournalTransactionsCreateRequestEntriesItem(
                        accountCode: "x"
                    ),
                    PostV1LedgerJournalTransactionsCreateRequestEntriesItem(
                        accountCode: "x"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
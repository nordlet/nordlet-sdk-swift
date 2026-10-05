import Foundation
import Testing
import Api

@Suite("LedgerClient Wire Tests") struct LedgerClientWireTests {
    @Test func accountsList1() async throws -> Void {
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
                      "translations": {},
                      "type": "asset",
                      "parentId": "parentId",
                      "isPostable": true,
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = AccountsListLedgerResponse(
            rows: [
                AccountsListLedgerResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    translations: Nullable<[String: Nullable<AccountsListLedgerResponseRowsItemTranslationsValue>]>.value([:]),
                    type: .asset,
                    parentId: Nullable<String>.value("parentId"),
                    isPostable: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.accountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsList2() async throws -> Void {
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
                      "translations": {
                        "translations": {
                          "name": "x"
                        }
                      },
                      "type": "asset",
                      "parentId": "x",
                      "isPostable": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "translations": {
                        "translations": {
                          "name": "x"
                        }
                      },
                      "type": "asset",
                      "parentId": "x",
                      "isPostable": true,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = AccountsListLedgerResponse(
            rows: [
                AccountsListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    translations: Nullable<[String: Nullable<AccountsListLedgerResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<AccountsListLedgerResponseRowsItemTranslationsValue>.value(AccountsListLedgerResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ]),
                    type: .asset,
                    parentId: Nullable<String>.value("x"),
                    isPostable: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                AccountsListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    translations: Nullable<[String: Nullable<AccountsListLedgerResponseRowsItemTranslationsValue>]>.value([
                        "translations": Nullable<AccountsListLedgerResponseRowsItemTranslationsValue>.value(AccountsListLedgerResponseRowsItemTranslationsValue(
                            name: "x"
                        ))
                    ]),
                    type: .asset,
                    parentId: Nullable<String>.value("x"),
                    isPostable: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.accountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "key": {
                      "name": "name"
                    }
                  },
                  "type": "asset",
                  "parentId": "parentId",
                  "isPostable": true,
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
        let expectedResponse = AccountsCreateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            translations: Nullable<[String: Nullable<AccountsCreateLedgerResponseTranslationsValue>]>.value([
                "key": Nullable<AccountsCreateLedgerResponseTranslationsValue>.value(AccountsCreateLedgerResponseTranslationsValue(
                    name: "name"
                ))
            ]),
            type: .asset,
            parentId: Nullable<String>.value("parentId"),
            isPostable: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.accountsCreate(
            request: .init(
                code: "code",
                name: "name",
                type: .asset
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "translations": {
                      "name": "x"
                    }
                  },
                  "type": "asset",
                  "parentId": "x",
                  "isPostable": true,
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
        let expectedResponse = AccountsCreateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            translations: Nullable<[String: Nullable<AccountsCreateLedgerResponseTranslationsValue>]>.value([
                "translations": Nullable<AccountsCreateLedgerResponseTranslationsValue>.value(AccountsCreateLedgerResponseTranslationsValue(
                    name: "x"
                ))
            ]),
            type: .asset,
            parentId: Nullable<String>.value("x"),
            isPostable: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.accountsCreate(
            request: .init(
                code: "x",
                name: "x",
                type: .asset
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "key": {
                      "name": "name"
                    }
                  },
                  "type": "asset",
                  "parentId": "parentId",
                  "isPostable": true,
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
        let expectedResponse = AccountsUpdateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            translations: Nullable<[String: Nullable<AccountsUpdateLedgerResponseTranslationsValue>]>.value([
                "key": Nullable<AccountsUpdateLedgerResponseTranslationsValue>.value(AccountsUpdateLedgerResponseTranslationsValue(
                    name: "name"
                ))
            ]),
            type: .asset,
            parentId: Nullable<String>.value("parentId"),
            isPostable: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.accountsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "translations": {
                    "translations": {
                      "name": "x"
                    }
                  },
                  "type": "asset",
                  "parentId": "x",
                  "isPostable": true,
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
        let expectedResponse = AccountsUpdateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            translations: Nullable<[String: Nullable<AccountsUpdateLedgerResponseTranslationsValue>]>.value([
                "translations": Nullable<AccountsUpdateLedgerResponseTranslationsValue>.value(AccountsUpdateLedgerResponseTranslationsValue(
                    name: "x"
                ))
            ]),
            type: .asset,
            parentId: Nullable<String>.value("x"),
            isPostable: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.accountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsApplyTemplate1() async throws -> Void {
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
        let expectedResponse = AccountsApplyTemplateLedgerResponse(
            accounts: 1000000
        )
        let response = try await client.ledger.accountsApplyTemplate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsApplyTemplate2() async throws -> Void {
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
        let expectedResponse = AccountsApplyTemplateLedgerResponse(
            accounts: 1000000
        )
        let response = try await client.ledger.accountsApplyTemplate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsSwitchChart1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "chartTemplate": "chartTemplate",
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
        let expectedResponse = AccountsSwitchChartLedgerResponse(
            chartTemplate: "chartTemplate",
            accounts: 1000000
        )
        let response = try await client.ledger.accountsSwitchChart(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsSwitchChart2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "chartTemplate": "chartTemplate",
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
        let expectedResponse = AccountsSwitchChartLedgerResponse(
            chartTemplate: "chartTemplate",
            accounts: 1000000
        )
        let response = try await client.ledger.accountsSwitchChart(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsList1() async throws -> Void {
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
        let expectedResponse = PeriodsListLedgerResponse(
            rows: [
                PeriodsListLedgerResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.periodsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsList2() async throws -> Void {
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
        let expectedResponse = PeriodsListLedgerResponse(
            rows: [
                PeriodsListLedgerResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                ),
                PeriodsListLedgerResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .open
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.periodsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsLock1() async throws -> Void {
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
        let expectedResponse = PeriodsLockLedgerResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.periodsLock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsLock2() async throws -> Void {
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
        let expectedResponse = PeriodsLockLedgerResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.periodsLock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsUnlock1() async throws -> Void {
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
        let expectedResponse = PeriodsUnlockLedgerResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.periodsUnlock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func periodsUnlock2() async throws -> Void {
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
        let expectedResponse = PeriodsUnlockLedgerResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .open
        )
        let response = try await client.ledger.periodsUnlock(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "date": "2026-07-01",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "partnerId": "partnerId",
                      "status": "draft",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "postedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = JournalTransactionsListLedgerResponse(
            rows: [
                JournalTransactionsListLedgerResponseRowsItem(
                    id: "id",
                    date: CalendarDate("2026-07-01")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    partnerId: Nullable<String>.value("partnerId"),
                    status: .draft,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    postedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.journalTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "date": "2023-01-15",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "postedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "date": "2023-01-15",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "postedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = JournalTransactionsListLedgerResponse(
            rows: [
                JournalTransactionsListLedgerResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    status: .draft,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    postedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                JournalTransactionsListLedgerResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    partnerId: Nullable<String>.value("x"),
                    status: .draft,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    postedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.journalTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersCreate1() async throws -> Void {
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
        let expectedResponse = CostCentersCreateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("groupId"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCentersCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersCreate2() async throws -> Void {
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
        let expectedResponse = CostCentersCreateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("x"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCentersCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersUpdate1() async throws -> Void {
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
        let expectedResponse = CostCentersUpdateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("groupId"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCentersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersUpdate2() async throws -> Void {
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
        let expectedResponse = CostCentersUpdateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            groupId: Nullable<String>.value("x"),
            groupName: Nullable<String>.value("groupName"),
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCentersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = CostCentersListLedgerResponse(
            rows: [
                CostCentersListLedgerResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("groupId"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.costCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCentersList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "groupId": "x",
                      "groupName": "groupName",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CostCentersListLedgerResponse(
            rows: [
                CostCentersListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                CostCentersListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    groupId: Nullable<String>.value("x"),
                    groupName: Nullable<String>.value("groupName"),
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.costCentersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = CostCenterGroupsCreateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCenterGroupsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = CostCenterGroupsCreateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCenterGroupsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = CostCenterGroupsUpdateLedgerResponse(
            id: "id",
            code: "code",
            name: "name",
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCenterGroupsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
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
        let expectedResponse = CostCenterGroupsUpdateLedgerResponse(
            id: "x",
            code: "code",
            name: "name",
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.costCenterGroupsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsDelete1() async throws -> Void {
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
        let expectedResponse = CostCenterGroupsDeleteLedgerResponse(
            deleted: true
        )
        let response = try await client.ledger.costCenterGroupsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsDelete2() async throws -> Void {
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
        let expectedResponse = CostCenterGroupsDeleteLedgerResponse(
            deleted: true
        )
        let response = try await client.ledger.costCenterGroupsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = CostCenterGroupsListLedgerResponse(
            rows: [
                CostCenterGroupsListLedgerResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.costCenterGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterGroupsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = CostCenterGroupsListLedgerResponse(
            rows: [
                CostCenterGroupsListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                CostCenterGroupsListLedgerResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.costCenterGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postingRulesList1() async throws -> Void {
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
        let expectedResponse = PostingRulesListLedgerResponse(
            rows: [
                PostingRulesListLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postingRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postingRulesList2() async throws -> Void {
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
        let expectedResponse = PostingRulesListLedgerResponse(
            rows: [
                PostingRulesListLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                ),
                PostingRulesListLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postingRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postingRulesUpdate1() async throws -> Void {
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
        let expectedResponse = PostingRulesUpdateLedgerResponse(
            rows: [
                PostingRulesUpdateLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postingRulesUpdate(
            request: .init(rules: [
                PostingRulesUpdateLedgerRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postingRulesUpdate2() async throws -> Void {
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
        let expectedResponse = PostingRulesUpdateLedgerResponse(
            rows: [
                PostingRulesUpdateLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                ),
                PostingRulesUpdateLedgerResponseRowsItem(
                    key: "key",
                    description: "description",
                    defaultCode: "defaultCode",
                    accountCode: "accountCode",
                    overridden: true
                )
            ]
        )
        let response = try await client.ledger.postingRulesUpdate(
            request: .init(rules: [
                PostingRulesUpdateLedgerRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                ),
                PostingRulesUpdateLedgerRequestRulesItem(
                    key: .salesReceivable,
                    accountCode: .null
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersCreate1() async throws -> Void {
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
                  "sharesAcquisitionDate": "2026-07-01",
                  "withholdingTaxPercent": "withholdingTaxPercent",
                  "partnerLiability": "general",
                  "specialBalanceRequired": true,
                  "supplementaryBalanceRequired": true,
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
        let expectedResponse = OwnersCreateLedgerResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
            partnerLiability: Nullable<OwnersCreateLedgerResponsePartnerLiability>.value(.general),
            specialBalanceRequired: Nullable<Bool>.value(true),
            supplementaryBalanceRequired: Nullable<Bool>.value(true),
            address: Nullable<OwnersCreateLedgerResponseAddress>.value(OwnersCreateLedgerResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.ownersCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersCreate2() async throws -> Void {
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
                  "sharesAcquisitionDate": "2023-01-15",
                  "withholdingTaxPercent": "withholdingTaxPercent",
                  "partnerLiability": "general",
                  "specialBalanceRequired": true,
                  "supplementaryBalanceRequired": true,
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
        let expectedResponse = OwnersCreateLedgerResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
            partnerLiability: Nullable<OwnersCreateLedgerResponsePartnerLiability>.value(.general),
            specialBalanceRequired: Nullable<Bool>.value(true),
            supplementaryBalanceRequired: Nullable<Bool>.value(true),
            address: Nullable<OwnersCreateLedgerResponseAddress>.value(OwnersCreateLedgerResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.ownersCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersUpdate1() async throws -> Void {
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
                  "sharesAcquisitionDate": "2026-07-01",
                  "withholdingTaxPercent": "withholdingTaxPercent",
                  "partnerLiability": "general",
                  "specialBalanceRequired": true,
                  "supplementaryBalanceRequired": true,
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "countryCode"
                  },
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
        let expectedResponse = OwnersUpdateLedgerResponse(
            id: "id",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
            partnerLiability: Nullable<OwnersUpdateLedgerResponsePartnerLiability>.value(.general),
            specialBalanceRequired: Nullable<Bool>.value(true),
            supplementaryBalanceRequired: Nullable<Bool>.value(true),
            address: Nullable<OwnersUpdateLedgerResponseAddress>.value(OwnersUpdateLedgerResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("countryCode")
            )),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.ownersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersUpdate2() async throws -> Void {
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
                  "sharesAcquisitionDate": "2023-01-15",
                  "withholdingTaxPercent": "withholdingTaxPercent",
                  "partnerLiability": "general",
                  "specialBalanceRequired": true,
                  "supplementaryBalanceRequired": true,
                  "address": {
                    "street": "street",
                    "city": "city",
                    "postalCode": "postalCode",
                    "countryCode": "xy"
                  },
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
        let expectedResponse = OwnersUpdateLedgerResponse(
            id: "x",
            name: "name",
            code: Nullable<String>.value("code"),
            equityAccountCode: "equityAccountCode",
            sharesQuantity: Nullable<String>.value("sharesQuantity"),
            sharesAmount: Nullable<String>.value("sharesAmount"),
            sharesType: Nullable<String>.value("sharesType"),
            sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
            partnerLiability: Nullable<OwnersUpdateLedgerResponsePartnerLiability>.value(.general),
            specialBalanceRequired: Nullable<Bool>.value(true),
            supplementaryBalanceRequired: Nullable<Bool>.value(true),
            address: Nullable<OwnersUpdateLedgerResponseAddress>.value(OwnersUpdateLedgerResponseAddress(
                street: Optional("street"),
                city: Optional("city"),
                postalCode: Optional("postalCode"),
                countryCode: Optional("xy")
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.ledger.ownersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersDelete1() async throws -> Void {
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
        let expectedResponse = OwnersDeleteLedgerResponse(
            id: "id",
            deleted: true
        )
        let response = try await client.ledger.ownersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersDelete2() async throws -> Void {
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
        let expectedResponse = OwnersDeleteLedgerResponse(
            id: "x",
            deleted: true
        )
        let response = try await client.ledger.ownersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersList1() async throws -> Void {
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
                      "sharesAcquisitionDate": "2026-07-01",
                      "withholdingTaxPercent": "withholdingTaxPercent",
                      "partnerLiability": "general",
                      "specialBalanceRequired": true,
                      "supplementaryBalanceRequired": true,
                      "address": {},
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = OwnersListLedgerResponse(
            rows: [
                OwnersListLedgerResponseRowsItem(
                    id: "id",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
                    partnerLiability: Nullable<OwnersListLedgerResponseRowsItemPartnerLiability>.value(.general),
                    specialBalanceRequired: Nullable<Bool>.value(true),
                    supplementaryBalanceRequired: Nullable<Bool>.value(true),
                    address: Nullable<OwnersListLedgerResponseRowsItemAddress>.value(OwnersListLedgerResponseRowsItemAddress(

                    )),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.ledger.ownersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ownersList2() async throws -> Void {
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
                      "sharesAcquisitionDate": "2023-01-15",
                      "withholdingTaxPercent": "withholdingTaxPercent",
                      "partnerLiability": "general",
                      "specialBalanceRequired": true,
                      "supplementaryBalanceRequired": true,
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "code": "code",
                      "equityAccountCode": "equityAccountCode",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "sharesAcquisitionDate": "2023-01-15",
                      "withholdingTaxPercent": "withholdingTaxPercent",
                      "partnerLiability": "general",
                      "specialBalanceRequired": true,
                      "supplementaryBalanceRequired": true,
                      "address": {
                        "street": "street",
                        "city": "city",
                        "postalCode": "postalCode",
                        "countryCode": "xy"
                      },
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = OwnersListLedgerResponse(
            rows: [
                OwnersListLedgerResponseRowsItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
                    partnerLiability: Nullable<OwnersListLedgerResponseRowsItemPartnerLiability>.value(.general),
                    specialBalanceRequired: Nullable<Bool>.value(true),
                    supplementaryBalanceRequired: Nullable<Bool>.value(true),
                    address: Nullable<OwnersListLedgerResponseRowsItemAddress>.value(OwnersListLedgerResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                OwnersListLedgerResponseRowsItem(
                    id: "x",
                    name: "name",
                    code: Nullable<String>.value("code"),
                    equityAccountCode: "equityAccountCode",
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    sharesAcquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    withholdingTaxPercent: Nullable<String>.value("withholdingTaxPercent"),
                    partnerLiability: Nullable<OwnersListLedgerResponseRowsItemPartnerLiability>.value(.general),
                    specialBalanceRequired: Nullable<Bool>.value(true),
                    supplementaryBalanceRequired: Nullable<Bool>.value(true),
                    address: Nullable<OwnersListLedgerResponseRowsItemAddress>.value(OwnersListLedgerResponseRowsItemAddress(
                        street: Optional("street"),
                        city: Optional("city"),
                        postalCode: Optional("postalCode"),
                        countryCode: Optional("xy")
                    )),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.ledger.ownersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "2026-07-01",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "documentId",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "postedAt": "2026-07-01T09:30:00Z",
                  "entries": [
                    {
                      "id": "id",
                      "accountId": "accountId",
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
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
        let expectedResponse = JournalTransactionsGetLedgerResponse(
            id: "id",
            date: CalendarDate("2026-07-01")!,
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("documentId"),
            partnerId: Nullable<String>.value("partnerId"),
            status: .draft,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            postedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            entries: [
                JournalTransactionsGetLedgerResponseEntriesItem(
                    id: "id",
                    accountId: "accountId",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                )
            ]
        )
        let response = try await client.ledger.journalTransactionsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "2023-01-15",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "postedAt": "2024-01-15T09:30:00Z",
                  "entries": [
                    {
                      "id": "x",
                      "accountId": "x",
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "costCenterId": "x",
                      "projectId": "x",
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
                      "projectId": "x",
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
        let expectedResponse = JournalTransactionsGetLedgerResponse(
            id: "x",
            date: CalendarDate("2023-01-15")!,
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            status: .draft,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            postedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            entries: [
                JournalTransactionsGetLedgerResponseEntriesItem(
                    id: "x",
                    accountId: "x",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                ),
                JournalTransactionsGetLedgerResponseEntriesItem(
                    id: "x",
                    accountId: "x",
                    accountCode: "accountCode",
                    accountName: "accountName",
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    debit: "debit",
                    credit: "credit",
                    description: Nullable<String>.value("description")
                )
            ]
        )
        let response = try await client.ledger.journalTransactionsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "date": "2026-07-01",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "documentId",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "postedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JournalTransactionsCreateLedgerResponse(
            id: "id",
            date: CalendarDate("2026-07-01")!,
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("documentId"),
            partnerId: Nullable<String>.value("partnerId"),
            status: .draft,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            postedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.ledger.journalTransactionsCreate(
            request: .init(
                date: CalendarDate("2026-07-01")!,
                entries: [
                    JournalTransactionsCreateLedgerRequestEntriesItem(
                        accountCode: "accountCode"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func journalTransactionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "date": "2023-01-15",
                  "description": "description",
                  "documentType": "documentType",
                  "documentId": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "postedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JournalTransactionsCreateLedgerResponse(
            id: "x",
            date: CalendarDate("2023-01-15")!,
            description: Nullable<String>.value("description"),
            documentType: Nullable<String>.value("documentType"),
            documentId: Nullable<String>.value("x"),
            partnerId: Nullable<String>.value("x"),
            status: .draft,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            postedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.ledger.journalTransactionsCreate(
            request: .init(
                date: CalendarDate("2023-01-15")!,
                entries: [
                    JournalTransactionsCreateLedgerRequestEntriesItem(
                        accountCode: "x"
                    ),
                    JournalTransactionsCreateLedgerRequestEntriesItem(
                        accountCode: "x"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsSchemes1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "country": "country",
                      "title": "title",
                      "source": "source",
                      "rows": [
                        {
                          "code": "code",
                          "label": "label",
                          "statement": "balance_sheet"
                        }
                      ]
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
        let expectedResponse = StatementRowsSchemesLedgerResponse(
            rows: [
                StatementRowsSchemesLedgerResponseRowsItem(
                    key: "key",
                    country: "country",
                    title: "title",
                    source: "source",
                    rows: [
                        StatementRowsSchemesLedgerResponseRowsItemRowsItem(
                            code: "code",
                            label: "label",
                            statement: .balanceSheet
                        )
                    ]
                )
            ]
        )
        let response = try await client.ledger.statementRowsSchemes(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsSchemes2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "key": "key",
                      "country": "country",
                      "title": "title",
                      "source": "source",
                      "rows": [
                        {
                          "code": "code",
                          "label": "label",
                          "statement": "balance_sheet"
                        },
                        {
                          "code": "code",
                          "label": "label",
                          "statement": "balance_sheet"
                        }
                      ]
                    },
                    {
                      "key": "key",
                      "country": "country",
                      "title": "title",
                      "source": "source",
                      "rows": [
                        {
                          "code": "code",
                          "label": "label",
                          "statement": "balance_sheet"
                        },
                        {
                          "code": "code",
                          "label": "label",
                          "statement": "balance_sheet"
                        }
                      ]
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
        let expectedResponse = StatementRowsSchemesLedgerResponse(
            rows: [
                StatementRowsSchemesLedgerResponseRowsItem(
                    key: "key",
                    country: "country",
                    title: "title",
                    source: "source",
                    rows: [
                        StatementRowsSchemesLedgerResponseRowsItemRowsItem(
                            code: "code",
                            label: "label",
                            statement: .balanceSheet
                        ),
                        StatementRowsSchemesLedgerResponseRowsItemRowsItem(
                            code: "code",
                            label: "label",
                            statement: .balanceSheet
                        )
                    ]
                ),
                StatementRowsSchemesLedgerResponseRowsItem(
                    key: "key",
                    country: "country",
                    title: "title",
                    source: "source",
                    rows: [
                        StatementRowsSchemesLedgerResponseRowsItemRowsItem(
                            code: "code",
                            label: "label",
                            statement: .balanceSheet
                        ),
                        StatementRowsSchemesLedgerResponseRowsItemRowsItem(
                            code: "code",
                            label: "label",
                            statement: .balanceSheet
                        )
                    ]
                )
            ]
        )
        let response = try await client.ledger.statementRowsSchemes(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": {
                    "key": "key",
                    "country": "country",
                    "title": "title",
                    "source": "source",
                    "rows": [
                      {
                        "code": "code",
                        "label": "label",
                        "statement": "balance_sheet"
                      }
                    ]
                  },
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "accounts": [
                    {
                      "code": "code",
                      "name": "name",
                      "type": "type",
                      "rowCode": "rowCode",
                      "source": "mapping",
                      "amount": "amount"
                    }
                  ],
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "statement": "balance_sheet",
                      "amount": "amount"
                    }
                  ],
                  "unmapped": [
                    "unmapped"
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
        let expectedResponse = StatementRowsListLedgerResponse(
            scheme: StatementRowsListLedgerResponseScheme(
                key: "key",
                country: "country",
                title: "title",
                source: "source",
                rows: [
                    StatementRowsListLedgerResponseSchemeRowsItem(
                        code: "code",
                        label: "label",
                        statement: .balanceSheet
                    )
                ]
            ),
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            accounts: [
                StatementRowsListLedgerResponseAccountsItem(
                    code: "code",
                    name: "name",
                    type: "type",
                    rowCode: Nullable<String>.value("rowCode"),
                    source: Nullable<StatementRowsListLedgerResponseAccountsItemSource>.value(.mapping),
                    amount: "amount"
                )
            ],
            rows: [
                StatementRowsListLedgerResponseRowsItem(
                    code: "code",
                    label: "label",
                    statement: .balanceSheet,
                    amount: "amount"
                )
            ],
            unmapped: [
                "unmapped"
            ]
        )
        let response = try await client.ledger.statementRowsList(
            request: .init(scheme: "scheme"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": {
                    "key": "key",
                    "country": "country",
                    "title": "title",
                    "source": "source",
                    "rows": [
                      {
                        "code": "code",
                        "label": "label",
                        "statement": "balance_sheet"
                      },
                      {
                        "code": "code",
                        "label": "label",
                        "statement": "balance_sheet"
                      }
                    ]
                  },
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "accounts": [
                    {
                      "code": "code",
                      "name": "name",
                      "type": "type",
                      "rowCode": "rowCode",
                      "source": "mapping",
                      "amount": "amount"
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "type": "type",
                      "rowCode": "rowCode",
                      "source": "mapping",
                      "amount": "amount"
                    }
                  ],
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "statement": "balance_sheet",
                      "amount": "amount"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "statement": "balance_sheet",
                      "amount": "amount"
                    }
                  ],
                  "unmapped": [
                    "unmapped",
                    "unmapped"
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
        let expectedResponse = StatementRowsListLedgerResponse(
            scheme: StatementRowsListLedgerResponseScheme(
                key: "key",
                country: "country",
                title: "title",
                source: "source",
                rows: [
                    StatementRowsListLedgerResponseSchemeRowsItem(
                        code: "code",
                        label: "label",
                        statement: .balanceSheet
                    ),
                    StatementRowsListLedgerResponseSchemeRowsItem(
                        code: "code",
                        label: "label",
                        statement: .balanceSheet
                    )
                ]
            ),
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            accounts: [
                StatementRowsListLedgerResponseAccountsItem(
                    code: "code",
                    name: "name",
                    type: "type",
                    rowCode: Nullable<String>.value("rowCode"),
                    source: Nullable<StatementRowsListLedgerResponseAccountsItemSource>.value(.mapping),
                    amount: "amount"
                ),
                StatementRowsListLedgerResponseAccountsItem(
                    code: "code",
                    name: "name",
                    type: "type",
                    rowCode: Nullable<String>.value("rowCode"),
                    source: Nullable<StatementRowsListLedgerResponseAccountsItemSource>.value(.mapping),
                    amount: "amount"
                )
            ],
            rows: [
                StatementRowsListLedgerResponseRowsItem(
                    code: "code",
                    label: "label",
                    statement: .balanceSheet,
                    amount: "amount"
                ),
                StatementRowsListLedgerResponseRowsItem(
                    code: "code",
                    label: "label",
                    statement: .balanceSheet,
                    amount: "amount"
                )
            ],
            unmapped: [
                "unmapped",
                "unmapped"
            ]
        )
        let response = try await client.ledger.statementRowsList(
            request: .init(scheme: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": "scheme",
                  "accountCode": "accountCode",
                  "rowCode": "rowCode"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = StatementRowsSetLedgerResponse(
            scheme: "scheme",
            accountCode: "accountCode",
            rowCode: Nullable<String>.value("rowCode")
        )
        let response = try await client.ledger.statementRowsSet(
            request: .init(
                scheme: "scheme",
                accountCode: "accountCode",
                rowCode: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementRowsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "scheme": "scheme",
                  "accountCode": "accountCode",
                  "rowCode": "rowCode"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = StatementRowsSetLedgerResponse(
            scheme: "scheme",
            accountCode: "accountCode",
            rowCode: Nullable<String>.value("rowCode")
        )
        let response = try await client.ledger.statementRowsSet(
            request: .init(
                scheme: "x",
                accountCode: "x",
                rowCode: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
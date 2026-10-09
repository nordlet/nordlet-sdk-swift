import Foundation
import Testing
import Api

@Suite("BankClient Wire Tests") struct BankClientWireTests {
    @Test func accountsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "iban": "iban",
                  "currency": "currency",
                  "accountCode": "accountCode",
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
        let expectedResponse = AccountsCreateBankResponse(
            id: "id",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.accountsCreate(
            request: .init(name: "name"),
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
                  "name": "name",
                  "iban": "iban",
                  "currency": "currency",
                  "accountCode": "accountCode",
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
        let expectedResponse = AccountsCreateBankResponse(
            id: "x",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.accountsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "iban": "iban",
                      "currency": "currency",
                      "accountCode": "accountCode",
                      "isActive": true,
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
        let expectedResponse = AccountsListBankResponse(
            rows: [
                AccountsListBankResponseRowsItem(
                    id: "id",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
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
        let response = try await client.bank.accountsList(
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
                      "name": "name",
                      "iban": "iban",
                      "currency": "currency",
                      "accountCode": "accountCode",
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "iban": "iban",
                      "currency": "currency",
                      "accountCode": "accountCode",
                      "isActive": true,
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
        let expectedResponse = AccountsListBankResponse(
            rows: [
                AccountsListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                AccountsListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
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
        let response = try await client.bank.accountsList(
            request: .init(),
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
                  "name": "name",
                  "iban": "iban",
                  "currency": "currency",
                  "accountCode": "accountCode",
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
        let expectedResponse = AccountsUpdateBankResponse(
            id: "id",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.accountsUpdate(
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
                  "name": "name",
                  "iban": "iban",
                  "currency": "currency",
                  "accountCode": "accountCode",
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
        let expectedResponse = AccountsUpdateBankResponse(
            id: "x",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.accountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsImport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TransactionsImportBankResponse(
            imported: 1000000,
            skipped: 1000000
        )
        let response = try await client.bank.transactionsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                transactions: [
                    TransactionsImportBankRequestTransactionsItem(
                        date: CalendarDate("2026-07-01")!,
                        amount: "-121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsImport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = TransactionsImportBankResponse(
            imported: 1000000,
            skipped: 1000000
        )
        let response = try await client.bank.transactionsImport(
            request: .init(
                bankAccountId: "x",
                transactions: [
                    TransactionsImportBankRequestTransactionsItem(
                        date: CalendarDate("2023-01-15")!,
                        amount: "amount"
                    ),
                    TransactionsImportBankRequestTransactionsItem(
                        date: CalendarDate("2023-01-15")!,
                        amount: "amount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementsImport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000,
                  "posted": 1000000,
                  "customersCreated": 1000000,
                  "invoicesCreated": 1000000,
                  "invoicesLinked": 1000000,
                  "creditNotesCreated": 1000000,
                  "authorizationsRecorded": 1000000,
                  "payoutsPosted": 1000000,
                  "commissionsPosted": 1000000,
                  "paymentsMatched": 1000000,
                  "warnings": [
                    "warnings"
                  ],
                  "statements": [
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "2026-07-01",
                      "toDate": "2026-07-01",
                      "openingBalance": "openingBalance",
                      "closingBalance": "closingBalance",
                      "transactionCount": 1000000
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
        let expectedResponse = StatementsImportBankResponse(
            imported: 1000000,
            skipped: 1000000,
            posted: 1000000,
            customersCreated: 1000000,
            invoicesCreated: 1000000,
            invoicesLinked: 1000000,
            creditNotesCreated: 1000000,
            authorizationsRecorded: 1000000,
            payoutsPosted: 1000000,
            commissionsPosted: 1000000,
            paymentsMatched: 1000000,
            warnings: [
                "warnings"
            ],
            statements: [
                StatementsImportBankResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                )
            ]
        )
        let response = try await client.bank.statementsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func statementsImport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000,
                  "posted": 1000000,
                  "customersCreated": 1000000,
                  "invoicesCreated": 1000000,
                  "invoicesLinked": 1000000,
                  "creditNotesCreated": 1000000,
                  "authorizationsRecorded": 1000000,
                  "payoutsPosted": 1000000,
                  "commissionsPosted": 1000000,
                  "paymentsMatched": 1000000,
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "statements": [
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "openingBalance": "openingBalance",
                      "closingBalance": "closingBalance",
                      "transactionCount": 1000000
                    },
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "openingBalance": "openingBalance",
                      "closingBalance": "closingBalance",
                      "transactionCount": 1000000
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
        let expectedResponse = StatementsImportBankResponse(
            imported: 1000000,
            skipped: 1000000,
            posted: 1000000,
            customersCreated: 1000000,
            invoicesCreated: 1000000,
            invoicesLinked: 1000000,
            creditNotesCreated: 1000000,
            authorizationsRecorded: 1000000,
            payoutsPosted: 1000000,
            commissionsPosted: 1000000,
            paymentsMatched: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ],
            statements: [
                StatementsImportBankResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                ),
                StatementsImportBankResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                )
            ]
        )
        let response = try await client.bank.statementsImport(
            request: .init(
                bankAccountId: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "bankAccountId": "bankAccountId",
                      "date": "2026-07-01",
                      "amount": "amount",
                      "currency": "currency",
                      "counterpartyName": "counterpartyName",
                      "counterpartyIban": "counterpartyIban",
                      "description": "description",
                      "externalId": "externalId",
                      "status": "new",
                      "matchedDocumentType": "matchedDocumentType",
                      "matchedDocumentId": "matchedDocumentId",
                      "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = TransactionsListBankResponse(
            rows: [
                TransactionsListBankResponseRowsItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    date: CalendarDate("2026-07-01")!,
                    amount: "amount",
                    currency: "currency",
                    counterpartyName: Nullable<String>.value("counterpartyName"),
                    counterpartyIban: Nullable<String>.value("counterpartyIban"),
                    description: Nullable<String>.value("description"),
                    externalId: Nullable<String>.value("externalId"),
                    status: .new,
                    matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
                    matchedDocumentId: Nullable<String>.value("matchedDocumentId"),
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
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
        let response = try await client.bank.transactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "date": "2023-01-15",
                      "amount": "amount",
                      "currency": "currency",
                      "counterpartyName": "counterpartyName",
                      "counterpartyIban": "counterpartyIban",
                      "description": "description",
                      "externalId": "externalId",
                      "status": "new",
                      "matchedDocumentType": "matchedDocumentType",
                      "matchedDocumentId": "x",
                      "journalTransactionId": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "date": "2023-01-15",
                      "amount": "amount",
                      "currency": "currency",
                      "counterpartyName": "counterpartyName",
                      "counterpartyIban": "counterpartyIban",
                      "description": "description",
                      "externalId": "externalId",
                      "status": "new",
                      "matchedDocumentType": "matchedDocumentType",
                      "matchedDocumentId": "x",
                      "journalTransactionId": "x",
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
        let expectedResponse = TransactionsListBankResponse(
            rows: [
                TransactionsListBankResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    date: CalendarDate("2023-01-15")!,
                    amount: "amount",
                    currency: "currency",
                    counterpartyName: Nullable<String>.value("counterpartyName"),
                    counterpartyIban: Nullable<String>.value("counterpartyIban"),
                    description: Nullable<String>.value("description"),
                    externalId: Nullable<String>.value("externalId"),
                    status: .new,
                    matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
                    matchedDocumentId: Nullable<String>.value("x"),
                    journalTransactionId: Nullable<String>.value("x"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                TransactionsListBankResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    date: CalendarDate("2023-01-15")!,
                    amount: "amount",
                    currency: "currency",
                    counterpartyName: Nullable<String>.value("counterpartyName"),
                    counterpartyIban: Nullable<String>.value("counterpartyIban"),
                    description: Nullable<String>.value("description"),
                    externalId: Nullable<String>.value("externalId"),
                    status: .new,
                    matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
                    matchedDocumentId: Nullable<String>.value("x"),
                    journalTransactionId: Nullable<String>.value("x"),
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
        let response = try await client.bank.transactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "matchedDocumentId",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = TransactionsMatchBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("matchedDocumentId"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsMatch(
            request: .init(
                transactionId: "transactionId",
                documentType: .saleInvoice,
                documentId: "documentId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "x",
                  "journalTransactionId": "x",
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
        let expectedResponse = TransactionsMatchBankResponse(
            id: "x",
            bankAccountId: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("x"),
            journalTransactionId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsMatch(
            request: .init(
                transactionId: "x",
                documentType: .saleInvoice,
                documentId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsMatchMany1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "matchedDocumentId",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = TransactionsMatchManyBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("matchedDocumentId"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsMatchMany(
            request: .init(
                transactionId: "transactionId",
                allocations: [
                    TransactionsMatchManyBankRequestAllocationsItem(
                        documentType: .saleInvoice,
                        documentId: "documentId",
                        amount: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsMatchMany2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "x",
                  "journalTransactionId": "x",
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
        let expectedResponse = TransactionsMatchManyBankResponse(
            id: "x",
            bankAccountId: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("x"),
            journalTransactionId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsMatchMany(
            request: .init(
                transactionId: "x",
                allocations: [
                    TransactionsMatchManyBankRequestAllocationsItem(
                        documentType: .saleInvoice,
                        documentId: "x",
                        amount: "amount"
                    ),
                    TransactionsMatchManyBankRequestAllocationsItem(
                        documentType: .saleInvoice,
                        documentId: "x",
                        amount: "amount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsUnmatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "matchedDocumentId",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = TransactionsUnmatchBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("matchedDocumentId"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsUnmatch(
            request: .init(transactionId: "transactionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsUnmatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "x",
                  "journalTransactionId": "x",
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
        let expectedResponse = TransactionsUnmatchBankResponse(
            id: "x",
            bankAccountId: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("x"),
            journalTransactionId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsUnmatch(
            request: .init(transactionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsRecord1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "date": "2026-07-01",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "matchedDocumentId",
                  "journalTransactionId": "journalTransactionId",
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
        let expectedResponse = TransactionsRecordBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            date: CalendarDate("2026-07-01")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("matchedDocumentId"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsRecord(
            request: .init(
                bankAccountId: "bankAccountId",
                date: CalendarDate("2026-07-01")!,
                amount: "121.0000",
                documentType: .saleInvoice,
                documentId: "documentId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsRecord2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "date": "2023-01-15",
                  "amount": "amount",
                  "currency": "currency",
                  "counterpartyName": "counterpartyName",
                  "counterpartyIban": "counterpartyIban",
                  "description": "description",
                  "externalId": "externalId",
                  "status": "new",
                  "matchedDocumentType": "matchedDocumentType",
                  "matchedDocumentId": "x",
                  "journalTransactionId": "x",
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
        let expectedResponse = TransactionsRecordBankResponse(
            id: "x",
            bankAccountId: "x",
            date: CalendarDate("2023-01-15")!,
            amount: "amount",
            currency: "currency",
            counterpartyName: Nullable<String>.value("counterpartyName"),
            counterpartyIban: Nullable<String>.value("counterpartyIban"),
            description: Nullable<String>.value("description"),
            externalId: Nullable<String>.value("externalId"),
            status: .new,
            matchedDocumentType: Nullable<String>.value("matchedDocumentType"),
            matchedDocumentId: Nullable<String>.value("x"),
            journalTransactionId: Nullable<String>.value("x"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.transactionsRecord(
            request: .init(
                bankAccountId: "x",
                date: CalendarDate("2023-01-15")!,
                amount: "amount",
                documentType: .saleInvoice,
                documentId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsExport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PaymentsExportBankResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.paymentsExport(
            request: .init(
                bankAccountId: "bankAccountId",
                purchaseInvoiceIds: [
                    "purchaseInvoiceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsExport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PaymentsExportBankResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.paymentsExport(
            request: .init(
                bankAccountId: "x",
                purchaseInvoiceIds: [
                    "purchaseInvoiceIds",
                    "purchaseInvoiceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "invoiceItemId",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "authorizationOperationTypeId",
                  "payoutOperationTypeId": "payoutOperationTypeId",
                  "commissionOperationTypeId": "commissionOperationTypeId",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesCreateBankResponse(
            id: "id",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesCreateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("invoiceItemId"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("authorizationOperationTypeId"),
            payoutOperationTypeId: Nullable<String>.value("payoutOperationTypeId"),
            commissionOperationTypeId: Nullable<String>.value("commissionOperationTypeId"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesCreate(
            request: .init(
                name: "name",
                type: .stripe
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    },
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields",
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "x",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "x",
                  "payoutOperationTypeId": "x",
                  "commissionOperationTypeId": "x",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesCreateBankResponse(
            id: "x",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesCreateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                ),
                ImportTemplatesCreateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields",
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("x"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("x"),
            payoutOperationTypeId: Nullable<String>.value("x"),
            commissionOperationTypeId: Nullable<String>.value("x"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesCreate(
            request: .init(
                name: "x",
                type: .stripe
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "invoiceItemId",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "authorizationOperationTypeId",
                  "payoutOperationTypeId": "payoutOperationTypeId",
                  "commissionOperationTypeId": "commissionOperationTypeId",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesUpdateBankResponse(
            id: "id",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesUpdateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("invoiceItemId"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("authorizationOperationTypeId"),
            payoutOperationTypeId: Nullable<String>.value("payoutOperationTypeId"),
            commissionOperationTypeId: Nullable<String>.value("commissionOperationTypeId"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    },
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields",
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "x",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "x",
                  "payoutOperationTypeId": "x",
                  "commissionOperationTypeId": "x",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesUpdateBankResponse(
            id: "x",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesUpdateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                ),
                ImportTemplatesUpdateBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields",
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("x"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("x"),
            payoutOperationTypeId: Nullable<String>.value("x"),
            commissionOperationTypeId: Nullable<String>.value("x"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesDelete1() async throws -> Void {
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
        let expectedResponse = ImportTemplatesDeleteBankResponse(
            id: "id",
            deleted: true
        )
        let response = try await client.bank.importTemplatesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesDelete2() async throws -> Void {
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
        let expectedResponse = ImportTemplatesDeleteBankResponse(
            id: "x",
            deleted: true
        )
        let response = try await client.bank.importTemplatesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "invoiceItemId",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "authorizationOperationTypeId",
                  "payoutOperationTypeId": "payoutOperationTypeId",
                  "commissionOperationTypeId": "commissionOperationTypeId",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesGetBankResponse(
            id: "id",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesGetBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("invoiceItemId"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("authorizationOperationTypeId"),
            payoutOperationTypeId: Nullable<String>.value("payoutOperationTypeId"),
            commissionOperationTypeId: Nullable<String>.value("commissionOperationTypeId"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "type": "stripe",
                  "fields": [
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    },
                    {
                      "name": "name",
                      "accountCode": "accountCode",
                      "createPartner": true
                    }
                  ],
                  "metaFields": [
                    "metaFields",
                    "metaFields"
                  ],
                  "invoiceMetaField": "invoiceMetaField",
                  "invoiceVatRatePercent": "invoiceVatRatePercent",
                  "companyMetaField": "companyMetaField",
                  "invoiceItemId": "x",
                  "advanceInvoices": true,
                  "authorizationOperationTypeId": "x",
                  "payoutOperationTypeId": "x",
                  "commissionOperationTypeId": "x",
                  "lenderMetaField": "lenderMetaField",
                  "partialRefundLabel": "partialRefundLabel",
                  "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesGetBankResponse(
            id: "x",
            name: "name",
            type: .stripe,
            fields: [
                ImportTemplatesGetBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                ),
                ImportTemplatesGetBankResponseFieldsItem(
                    name: "name",
                    accountCode: Nullable<String>.value("accountCode"),
                    createPartner: true
                )
            ],
            metaFields: [
                "metaFields",
                "metaFields"
            ],
            invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
            invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
            companyMetaField: Nullable<String>.value("companyMetaField"),
            invoiceItemId: Nullable<String>.value("x"),
            advanceInvoices: true,
            authorizationOperationTypeId: Nullable<String>.value("x"),
            payoutOperationTypeId: Nullable<String>.value("x"),
            commissionOperationTypeId: Nullable<String>.value("x"),
            lenderMetaField: Nullable<String>.value("lenderMetaField"),
            partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
            fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.importTemplatesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "type": "stripe",
                      "fields": [
                        {
                          "name": "name",
                          "accountCode": null,
                          "createPartner": true
                        }
                      ],
                      "metaFields": [
                        "metaFields"
                      ],
                      "invoiceMetaField": "invoiceMetaField",
                      "invoiceVatRatePercent": "invoiceVatRatePercent",
                      "companyMetaField": "companyMetaField",
                      "invoiceItemId": "invoiceItemId",
                      "advanceInvoices": true,
                      "authorizationOperationTypeId": "authorizationOperationTypeId",
                      "payoutOperationTypeId": "payoutOperationTypeId",
                      "commissionOperationTypeId": "commissionOperationTypeId",
                      "lenderMetaField": "lenderMetaField",
                      "partialRefundLabel": "partialRefundLabel",
                      "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesListBankResponse(
            rows: [
                ImportTemplatesListBankResponseRowsItem(
                    id: "id",
                    name: "name",
                    type: .stripe,
                    fields: [
                        ImportTemplatesListBankResponseRowsItemFieldsItem(
                            name: "name",
                            accountCode: .null,
                            createPartner: true
                        )
                    ],
                    metaFields: [
                        "metaFields"
                    ],
                    invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
                    invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
                    companyMetaField: Nullable<String>.value("companyMetaField"),
                    invoiceItemId: Nullable<String>.value("invoiceItemId"),
                    advanceInvoices: true,
                    authorizationOperationTypeId: Nullable<String>.value("authorizationOperationTypeId"),
                    payoutOperationTypeId: Nullable<String>.value("payoutOperationTypeId"),
                    commissionOperationTypeId: Nullable<String>.value("commissionOperationTypeId"),
                    lenderMetaField: Nullable<String>.value("lenderMetaField"),
                    partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
                    fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
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
        let response = try await client.bank.importTemplatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importTemplatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "type": "stripe",
                      "fields": [
                        {
                          "name": "name",
                          "accountCode": "accountCode",
                          "createPartner": true
                        },
                        {
                          "name": "name",
                          "accountCode": "accountCode",
                          "createPartner": true
                        }
                      ],
                      "metaFields": [
                        "metaFields",
                        "metaFields"
                      ],
                      "invoiceMetaField": "invoiceMetaField",
                      "invoiceVatRatePercent": "invoiceVatRatePercent",
                      "companyMetaField": "companyMetaField",
                      "invoiceItemId": "x",
                      "advanceInvoices": true,
                      "authorizationOperationTypeId": "x",
                      "payoutOperationTypeId": "x",
                      "commissionOperationTypeId": "x",
                      "lenderMetaField": "lenderMetaField",
                      "partialRefundLabel": "partialRefundLabel",
                      "fullRefundLabel": "fullRefundLabel",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "type": "stripe",
                      "fields": [
                        {
                          "name": "name",
                          "accountCode": "accountCode",
                          "createPartner": true
                        },
                        {
                          "name": "name",
                          "accountCode": "accountCode",
                          "createPartner": true
                        }
                      ],
                      "metaFields": [
                        "metaFields",
                        "metaFields"
                      ],
                      "invoiceMetaField": "invoiceMetaField",
                      "invoiceVatRatePercent": "invoiceVatRatePercent",
                      "companyMetaField": "companyMetaField",
                      "invoiceItemId": "x",
                      "advanceInvoices": true,
                      "authorizationOperationTypeId": "x",
                      "payoutOperationTypeId": "x",
                      "commissionOperationTypeId": "x",
                      "lenderMetaField": "lenderMetaField",
                      "partialRefundLabel": "partialRefundLabel",
                      "fullRefundLabel": "fullRefundLabel",
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
        let expectedResponse = ImportTemplatesListBankResponse(
            rows: [
                ImportTemplatesListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    type: .stripe,
                    fields: [
                        ImportTemplatesListBankResponseRowsItemFieldsItem(
                            name: "name",
                            accountCode: Nullable<String>.value("accountCode"),
                            createPartner: true
                        ),
                        ImportTemplatesListBankResponseRowsItemFieldsItem(
                            name: "name",
                            accountCode: Nullable<String>.value("accountCode"),
                            createPartner: true
                        )
                    ],
                    metaFields: [
                        "metaFields",
                        "metaFields"
                    ],
                    invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
                    invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
                    companyMetaField: Nullable<String>.value("companyMetaField"),
                    invoiceItemId: Nullable<String>.value("x"),
                    advanceInvoices: true,
                    authorizationOperationTypeId: Nullable<String>.value("x"),
                    payoutOperationTypeId: Nullable<String>.value("x"),
                    commissionOperationTypeId: Nullable<String>.value("x"),
                    lenderMetaField: Nullable<String>.value("lenderMetaField"),
                    partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
                    fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ImportTemplatesListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    type: .stripe,
                    fields: [
                        ImportTemplatesListBankResponseRowsItemFieldsItem(
                            name: "name",
                            accountCode: Nullable<String>.value("accountCode"),
                            createPartner: true
                        ),
                        ImportTemplatesListBankResponseRowsItemFieldsItem(
                            name: "name",
                            accountCode: Nullable<String>.value("accountCode"),
                            createPartner: true
                        )
                    ],
                    metaFields: [
                        "metaFields",
                        "metaFields"
                    ],
                    invoiceMetaField: Nullable<String>.value("invoiceMetaField"),
                    invoiceVatRatePercent: Nullable<String>.value("invoiceVatRatePercent"),
                    companyMetaField: Nullable<String>.value("companyMetaField"),
                    invoiceItemId: Nullable<String>.value("x"),
                    advanceInvoices: true,
                    authorizationOperationTypeId: Nullable<String>.value("x"),
                    payoutOperationTypeId: Nullable<String>.value("x"),
                    commissionOperationTypeId: Nullable<String>.value("x"),
                    lenderMetaField: Nullable<String>.value("lenderMetaField"),
                    partialRefundLabel: Nullable<String>.value("partialRefundLabel"),
                    fullRefundLabel: Nullable<String>.value("fullRefundLabel"),
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
        let response = try await client.bank.importTemplatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "provider": "provider",
                  "pattern": "pattern",
                  "payoutIdPrefix": "payoutIdPrefix",
                  "bankAccountId": "bankAccountId",
                  "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesCreateBankResponse(
            id: "id",
            name: "name",
            provider: "provider",
            pattern: "pattern",
            payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
            bankAccountId: Nullable<String>.value("bankAccountId"),
            dateWindowDays: 1000000,
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.matchRulesCreate(
            request: .init(
                name: "name",
                pattern: "pattern"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "provider": "provider",
                  "pattern": "pattern",
                  "payoutIdPrefix": "payoutIdPrefix",
                  "bankAccountId": "x",
                  "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesCreateBankResponse(
            id: "x",
            name: "name",
            provider: "provider",
            pattern: "pattern",
            payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
            bankAccountId: Nullable<String>.value("x"),
            dateWindowDays: 1000000,
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.matchRulesCreate(
            request: .init(
                name: "x",
                pattern: "xy"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "provider": "provider",
                  "pattern": "pattern",
                  "payoutIdPrefix": "payoutIdPrefix",
                  "bankAccountId": "bankAccountId",
                  "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesUpdateBankResponse(
            id: "id",
            name: "name",
            provider: "provider",
            pattern: "pattern",
            payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
            bankAccountId: Nullable<String>.value("bankAccountId"),
            dateWindowDays: 1000000,
            isActive: true,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.matchRulesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "provider": "provider",
                  "pattern": "pattern",
                  "payoutIdPrefix": "payoutIdPrefix",
                  "bankAccountId": "x",
                  "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesUpdateBankResponse(
            id: "x",
            name: "name",
            provider: "provider",
            pattern: "pattern",
            payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
            bankAccountId: Nullable<String>.value("x"),
            dateWindowDays: 1000000,
            isActive: true,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.matchRulesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesDelete1() async throws -> Void {
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
        let expectedResponse = MatchRulesDeleteBankResponse(
            id: "id"
        )
        let response = try await client.bank.matchRulesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesDelete2() async throws -> Void {
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
        let expectedResponse = MatchRulesDeleteBankResponse(
            id: "x"
        )
        let response = try await client.bank.matchRulesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "provider": "provider",
                      "pattern": "pattern",
                      "payoutIdPrefix": "payoutIdPrefix",
                      "bankAccountId": "bankAccountId",
                      "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesListBankResponse(
            rows: [
                MatchRulesListBankResponseRowsItem(
                    id: "id",
                    name: "name",
                    provider: "provider",
                    pattern: "pattern",
                    payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    dateWindowDays: 1000000,
                    isActive: true,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.bank.matchRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func matchRulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "provider": "provider",
                      "pattern": "pattern",
                      "payoutIdPrefix": "payoutIdPrefix",
                      "bankAccountId": "x",
                      "dateWindowDays": 1000000,
                      "isActive": true,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "provider": "provider",
                      "pattern": "pattern",
                      "payoutIdPrefix": "payoutIdPrefix",
                      "bankAccountId": "x",
                      "dateWindowDays": 1000000,
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
        let expectedResponse = MatchRulesListBankResponse(
            rows: [
                MatchRulesListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    provider: "provider",
                    pattern: "pattern",
                    payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
                    bankAccountId: Nullable<String>.value("x"),
                    dateWindowDays: 1000000,
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                MatchRulesListBankResponseRowsItem(
                    id: "x",
                    name: "name",
                    provider: "provider",
                    pattern: "pattern",
                    payoutIdPrefix: Nullable<String>.value("payoutIdPrefix"),
                    bankAccountId: Nullable<String>.value("x"),
                    dateWindowDays: 1000000,
                    isActive: true,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.bank.matchRulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2026-07-01",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2026-07-01",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = MandatesCreateBankResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2026-07-01")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesCreate(
            request: .init(
                partnerId: "partnerId",
                iban: "iban",
                signatureDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2023-01-15",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2023-01-15",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = MandatesCreateBankResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2023-01-15")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesCreate(
            request: .init(
                partnerId: "x",
                iban: "blackcurrant...",
                signatureDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2026-07-01",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2026-07-01",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = MandatesUpdateBankResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2026-07-01")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2023-01-15",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2023-01-15",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = MandatesUpdateBankResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2023-01-15")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2026-07-01",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2026-07-01",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = MandatesCancelBankResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2026-07-01")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2023-01-15",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2023-01-15",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = MandatesCancelBankResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2023-01-15")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2026-07-01",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2026-07-01",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = MandatesGetBankResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2026-07-01")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "reference": "reference",
                  "scheme": "CORE",
                  "sequenceType": "recurrent",
                  "status": "active",
                  "debtorName": "debtorName",
                  "iban": "iban",
                  "bic": "bic",
                  "signatureDate": "2023-01-15",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "2023-01-15",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = MandatesGetBankResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: CalendarDate("2023-01-15")!,
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.mandatesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "reference": "reference",
                      "scheme": "CORE",
                      "sequenceType": "recurrent",
                      "status": "active",
                      "debtorName": "debtorName",
                      "iban": "iban",
                      "bic": "bic",
                      "signatureDate": "2026-07-01",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "2026-07-01",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = MandatesListBankResponse(
            rows: [
                MandatesListBankResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: CalendarDate("2026-07-01")!,
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
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
        let response = try await client.bank.mandatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func mandatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "reference": "reference",
                      "scheme": "CORE",
                      "sequenceType": "recurrent",
                      "status": "active",
                      "debtorName": "debtorName",
                      "iban": "iban",
                      "bic": "bic",
                      "signatureDate": "2023-01-15",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "2023-01-15",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "reference": "reference",
                      "scheme": "CORE",
                      "sequenceType": "recurrent",
                      "status": "active",
                      "debtorName": "debtorName",
                      "iban": "iban",
                      "bic": "bic",
                      "signatureDate": "2023-01-15",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "2023-01-15",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = MandatesListBankResponse(
            rows: [
                MandatesListBankResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: CalendarDate("2023-01-15")!,
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                MandatesListBankResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: CalendarDate("2023-01-15")!,
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
        let response = try await client.bank.mandatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func directDebitsCandidates1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "fullNumber": "fullNumber",
                      "issueDate": "2026-07-01",
                      "dueDate": "2026-07-01",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "remaining": "remaining",
                      "mandateId": "mandateId",
                      "mandateReference": "mandateReference",
                      "mandateSignatureDate": "2026-07-01"
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
        let expectedResponse = DirectDebitsCandidatesBankResponse(
            rows: [
                DirectDebitsCandidatesBankResponseRowsItem(
                    id: "id",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    partnerId: "partnerId",
                    partnerName: Nullable<String>.value("partnerName"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    remaining: "remaining",
                    mandateId: Nullable<String>.value("mandateId"),
                    mandateReference: Nullable<String>.value("mandateReference"),
                    mandateSignatureDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)
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
        let response = try await client.bank.directDebitsCandidates(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func directDebitsCandidates2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "fullNumber": "fullNumber",
                      "issueDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "remaining": "remaining",
                      "mandateId": "x",
                      "mandateReference": "mandateReference",
                      "mandateSignatureDate": "2023-01-15"
                    },
                    {
                      "id": "x",
                      "fullNumber": "fullNumber",
                      "issueDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "remaining": "remaining",
                      "mandateId": "x",
                      "mandateReference": "mandateReference",
                      "mandateSignatureDate": "2023-01-15"
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
        let expectedResponse = DirectDebitsCandidatesBankResponse(
            rows: [
                DirectDebitsCandidatesBankResponseRowsItem(
                    id: "x",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    partnerId: "x",
                    partnerName: Nullable<String>.value("partnerName"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    remaining: "remaining",
                    mandateId: Nullable<String>.value("x"),
                    mandateReference: Nullable<String>.value("mandateReference"),
                    mandateSignatureDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
                ),
                DirectDebitsCandidatesBankResponseRowsItem(
                    id: "x",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    partnerId: "x",
                    partnerName: Nullable<String>.value("partnerName"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    remaining: "remaining",
                    mandateId: Nullable<String>.value("x"),
                    mandateReference: Nullable<String>.value("mandateReference"),
                    mandateSignatureDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
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
        let response = try await client.bank.directDebitsCandidates(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func directDebitsExport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DirectDebitsExportBankResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.directDebitsExport(
            request: .init(
                bankAccountId: "bankAccountId",
                saleInvoiceIds: [
                    "saleInvoiceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func directDebitsExport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DirectDebitsExportBankResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.directDebitsExport(
            request: .init(
                bankAccountId: "x",
                saleInvoiceIds: [
                    "saleInvoiceIds",
                    "saleInvoiceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsSuggestMatches1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "suggestions": [
                    {
                      "documentType": "sale_invoice",
                      "documentId": "documentId",
                      "number": "number",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "remaining": "remaining",
                      "score": 1000000,
                      "reasons": [
                        "reasons"
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
        let expectedResponse = TransactionsSuggestMatchesBankResponse(
            suggestions: [
                TransactionsSuggestMatchesBankResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "documentId",
                    number: "number",
                    partnerName: "partnerName",
                    currency: "currency",
                    grossTotal: "grossTotal",
                    remaining: "remaining",
                    score: 1000000,
                    reasons: [
                        "reasons"
                    ]
                )
            ]
        )
        let response = try await client.bank.transactionsSuggestMatches(
            request: .init(transactionId: "transactionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func transactionsSuggestMatches2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "suggestions": [
                    {
                      "documentType": "sale_invoice",
                      "documentId": "x",
                      "number": "number",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "remaining": "remaining",
                      "score": 1000000,
                      "reasons": [
                        "reasons",
                        "reasons"
                      ]
                    },
                    {
                      "documentType": "sale_invoice",
                      "documentId": "x",
                      "number": "number",
                      "partnerName": "partnerName",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "remaining": "remaining",
                      "score": 1000000,
                      "reasons": [
                        "reasons",
                        "reasons"
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
        let expectedResponse = TransactionsSuggestMatchesBankResponse(
            suggestions: [
                TransactionsSuggestMatchesBankResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "x",
                    number: "number",
                    partnerName: "partnerName",
                    currency: "currency",
                    grossTotal: "grossTotal",
                    remaining: "remaining",
                    score: 1000000,
                    reasons: [
                        "reasons",
                        "reasons"
                    ]
                ),
                TransactionsSuggestMatchesBankResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "x",
                    number: "number",
                    partnerName: "partnerName",
                    currency: "currency",
                    grossTotal: "grossTotal",
                    remaining: "remaining",
                    score: 1000000,
                    reasons: [
                        "reasons",
                        "reasons"
                    ]
                )
            ]
        )
        let response = try await client.bank.transactionsSuggestMatches(
            request: .init(transactionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsImport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "payout_reconciliation",
                  "imported": 1000000,
                  "updated": 1000000,
                  "skipped": 1000000,
                  "skippedUnassigned": 1000000,
                  "skippedPayoutRows": 1000000,
                  "skippedNotSettled": 1000000,
                  "batches": [
                    {
                      "id": "id",
                      "bankAccountId": "bankAccountId",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2026-07-01",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "journalTransactionId",
                      "bankTransactionId": "bankTransactionId",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = SettlementsImportBankResponse(
            format: .payoutReconciliation,
            imported: 1000000,
            updated: 1000000,
            skipped: 1000000,
            skippedUnassigned: 1000000,
            skippedPayoutRows: 1000000,
            skippedNotSettled: 1000000,
            batches: [
                SettlementsImportBankResponseBatchesItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    bankTransactionId: Nullable<String>.value("bankTransactionId"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.bank.settlementsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsImport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "payout_reconciliation",
                  "imported": 1000000,
                  "updated": 1000000,
                  "skipped": 1000000,
                  "skippedUnassigned": 1000000,
                  "skippedPayoutRows": 1000000,
                  "skippedNotSettled": 1000000,
                  "batches": [
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2023-01-15",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "bankTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2023-01-15",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "bankTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = SettlementsImportBankResponse(
            format: .payoutReconciliation,
            imported: 1000000,
            updated: 1000000,
            skipped: 1000000,
            skippedUnassigned: 1000000,
            skippedPayoutRows: 1000000,
            skippedNotSettled: 1000000,
            batches: [
                SettlementsImportBankResponseBatchesItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    bankTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SettlementsImportBankResponseBatchesItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    bankTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.bank.settlementsImport(
            request: .init(
                bankAccountId: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "bankAccountId": "bankAccountId",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2026-07-01",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "journalTransactionId",
                      "bankTransactionId": "bankTransactionId",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsListBankResponse(
            rows: [
                SettlementsListBankResponseRowsItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    bankTransactionId: Nullable<String>.value("bankTransactionId"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
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
        let response = try await client.bank.settlementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2023-01-15",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "bankTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "2023-01-15",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "fxRate": "fxRate",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "bankTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsListBankResponse(
            rows: [
                SettlementsListBankResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    bankTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                SettlementsListBankResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    fxRate: Nullable<String>.value("fxRate"),
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    bankTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
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
        let response = try await client.bank.settlementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2026-07-01",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "bankTransactionId": "bankTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "2026-07-01",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
                      "commissionPercent": "commissionPercent",
                      "commissionAmount": "commissionAmount",
                      "reference": "reference",
                      "matchedInvoiceId": "matchedInvoiceId",
                      "matchStatus": "unmatched"
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
        let expectedResponse = SettlementsGetBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            bankTransactionId: Nullable<String>.value("bankTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                SettlementsGetBankResponseLinesItem(
                    id: "id",
                    externalId: "externalId",
                    category: "category",
                    date: CalendarDate("2026-07-01")!,
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    commissionPercent: Nullable<String>.value("commissionPercent"),
                    commissionAmount: Nullable<String>.value("commissionAmount"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("matchedInvoiceId"),
                    matchStatus: .unmatched
                )
            ]
        )
        let response = try await client.bank.settlementsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2023-01-15",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "bankTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "2023-01-15",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
                      "commissionPercent": "commissionPercent",
                      "commissionAmount": "commissionAmount",
                      "reference": "reference",
                      "matchedInvoiceId": "x",
                      "matchStatus": "unmatched"
                    },
                    {
                      "id": "x",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "2023-01-15",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
                      "commissionPercent": "commissionPercent",
                      "commissionAmount": "commissionAmount",
                      "reference": "reference",
                      "matchedInvoiceId": "x",
                      "matchStatus": "unmatched"
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
        let expectedResponse = SettlementsGetBankResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            bankTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                SettlementsGetBankResponseLinesItem(
                    id: "x",
                    externalId: "externalId",
                    category: "category",
                    date: CalendarDate("2023-01-15")!,
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    commissionPercent: Nullable<String>.value("commissionPercent"),
                    commissionAmount: Nullable<String>.value("commissionAmount"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("x"),
                    matchStatus: .unmatched
                ),
                SettlementsGetBankResponseLinesItem(
                    id: "x",
                    externalId: "externalId",
                    category: "category",
                    date: CalendarDate("2023-01-15")!,
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    commissionPercent: Nullable<String>.value("commissionPercent"),
                    commissionAmount: Nullable<String>.value("commissionAmount"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("x"),
                    matchStatus: .unmatched
                )
            ]
        )
        let response = try await client.bank.settlementsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "2026-07-01",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
                  "commissionPercent": "commissionPercent",
                  "commissionAmount": "commissionAmount",
                  "reference": "reference",
                  "matchedInvoiceId": "matchedInvoiceId",
                  "matchStatus": "unmatched"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettlementsMatchBankResponse(
            id: "id",
            externalId: "externalId",
            category: "category",
            date: CalendarDate("2026-07-01")!,
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            commissionPercent: Nullable<String>.value("commissionPercent"),
            commissionAmount: Nullable<String>.value("commissionAmount"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("matchedInvoiceId"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.settlementsMatch(
            request: .init(
                lineId: "lineId",
                invoiceId: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "2023-01-15",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
                  "commissionPercent": "commissionPercent",
                  "commissionAmount": "commissionAmount",
                  "reference": "reference",
                  "matchedInvoiceId": "x",
                  "matchStatus": "unmatched"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettlementsMatchBankResponse(
            id: "x",
            externalId: "externalId",
            category: "category",
            date: CalendarDate("2023-01-15")!,
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            commissionPercent: Nullable<String>.value("commissionPercent"),
            commissionAmount: Nullable<String>.value("commissionAmount"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("x"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.settlementsMatch(
            request: .init(
                lineId: "x",
                invoiceId: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsCommission1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "2026-07-01",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
                  "commissionPercent": "commissionPercent",
                  "commissionAmount": "commissionAmount",
                  "reference": "reference",
                  "matchedInvoiceId": "matchedInvoiceId",
                  "matchStatus": "unmatched"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettlementsCommissionBankResponse(
            id: "id",
            externalId: "externalId",
            category: "category",
            date: CalendarDate("2026-07-01")!,
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            commissionPercent: Nullable<String>.value("commissionPercent"),
            commissionAmount: Nullable<String>.value("commissionAmount"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("matchedInvoiceId"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.settlementsCommission(
            request: .init(lineId: "lineId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsCommission2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "2023-01-15",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
                  "commissionPercent": "commissionPercent",
                  "commissionAmount": "commissionAmount",
                  "reference": "reference",
                  "matchedInvoiceId": "x",
                  "matchStatus": "unmatched"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettlementsCommissionBankResponse(
            id: "x",
            externalId: "externalId",
            category: "category",
            date: CalendarDate("2023-01-15")!,
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            commissionPercent: Nullable<String>.value("commissionPercent"),
            commissionAmount: Nullable<String>.value("commissionAmount"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("x"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.settlementsCommission(
            request: .init(lineId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsLink1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2026-07-01",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "bankTransactionId": "bankTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsLinkBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            bankTransactionId: Nullable<String>.value("bankTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.settlementsLink(
            request: .init(
                id: "id",
                bankTransactionId: "bankTransactionId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsLink2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2023-01-15",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "bankTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsLinkBankResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            bankTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.settlementsLink(
            request: .init(
                id: "x",
                bankTransactionId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsUnlink1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2026-07-01",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "bankTransactionId": "bankTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsUnlinkBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            bankTransactionId: Nullable<String>.value("bankTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.settlementsUnlink(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsUnlink2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2023-01-15",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "bankTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
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
        let expectedResponse = SettlementsUnlinkBankResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            bankTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.settlementsUnlink(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsPost1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2026-07-01",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "bankTransactionId": "bankTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "warnings": [
                    "warnings"
                  ],
                  "summary": {
                    "receivableApplied": "receivableApplied",
                    "commissionAmount": "commissionAmount",
                    "sellerAmount": "sellerAmount",
                    "feeAmount": "feeAmount",
                    "suspenseAmount": "suspenseAmount",
                    "fxRate": "fxRate",
                    "exchangeDifference": "exchangeDifference"
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
        let expectedResponse = SettlementsPostBankResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            bankTransactionId: Nullable<String>.value("bankTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            warnings: [
                "warnings"
            ],
            summary: SettlementsPostBankResponseSummary(
                receivableApplied: "receivableApplied",
                commissionAmount: "commissionAmount",
                sellerAmount: "sellerAmount",
                feeAmount: "feeAmount",
                suspenseAmount: "suspenseAmount",
                fxRate: "fxRate",
                exchangeDifference: "exchangeDifference"
            )
        )
        let response = try await client.bank.settlementsPost(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settlementsPost2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "2023-01-15",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "fxRate": "fxRate",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "bankTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "summary": {
                    "receivableApplied": "receivableApplied",
                    "commissionAmount": "commissionAmount",
                    "sellerAmount": "sellerAmount",
                    "feeAmount": "feeAmount",
                    "suspenseAmount": "suspenseAmount",
                    "fxRate": "fxRate",
                    "exchangeDifference": "exchangeDifference"
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
        let expectedResponse = SettlementsPostBankResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            fxRate: Nullable<String>.value("fxRate"),
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            bankTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            warnings: [
                "warnings",
                "warnings"
            ],
            summary: SettlementsPostBankResponseSummary(
                receivableApplied: "receivableApplied",
                commissionAmount: "commissionAmount",
                sellerAmount: "sellerAmount",
                feeAmount: "feeAmount",
                suspenseAmount: "suspenseAmount",
                fxRate: "fxRate",
                exchangeDifference: "exchangeDifference"
            )
        )
        let response = try await client.bank.settlementsPost(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsBanksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "provider": "provider",
                  "banks": [
                    {
                      "name": "name",
                      "country": "country",
                      "logoUrl": "logoUrl",
                      "psuTypes": [
                        "business"
                      ],
                      "maxConsentDays": 1000000
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
        let expectedResponse = FeedsBanksListBankResponse(
            provider: "provider",
            banks: [
                FeedsBanksListBankResponseBanksItem(
                    name: "name",
                    country: "country",
                    logoUrl: Nullable<String>.value("logoUrl"),
                    psuTypes: [
                        .business
                    ],
                    maxConsentDays: Nullable<Int64>.value(1000000)
                )
            ]
        )
        let response = try await client.bank.feedsBanksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsBanksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "provider": "provider",
                  "banks": [
                    {
                      "name": "name",
                      "country": "country",
                      "logoUrl": "logoUrl",
                      "psuTypes": [
                        "business",
                        "business"
                      ],
                      "maxConsentDays": 1000000
                    },
                    {
                      "name": "name",
                      "country": "country",
                      "logoUrl": "logoUrl",
                      "psuTypes": [
                        "business",
                        "business"
                      ],
                      "maxConsentDays": 1000000
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
        let expectedResponse = FeedsBanksListBankResponse(
            provider: "provider",
            banks: [
                FeedsBanksListBankResponseBanksItem(
                    name: "name",
                    country: "country",
                    logoUrl: Nullable<String>.value("logoUrl"),
                    psuTypes: [
                        .business,
                        .business
                    ],
                    maxConsentDays: Nullable<Int64>.value(1000000)
                ),
                FeedsBanksListBankResponseBanksItem(
                    name: "name",
                    country: "country",
                    logoUrl: Nullable<String>.value("logoUrl"),
                    psuTypes: [
                        .business,
                        .business
                    ],
                    maxConsentDays: Nullable<Int64>.value(1000000)
                )
            ]
        )
        let response = try await client.bank.feedsBanksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsStart1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "connectionId",
                  "reference": "reference",
                  "url": "url",
                  "expiresAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsConnectionsStartBankResponse(
            connectionId: "connectionId",
            reference: "reference",
            url: "url",
            expiresAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.feedsConnectionsStart(
            request: .init(
                aspspName: "aspspName",
                aspspCountry: "aspspCountry"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsStart2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "x",
                  "reference": "reference",
                  "url": "url",
                  "expiresAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsConnectionsStartBankResponse(
            connectionId: "x",
            reference: "reference",
            url: "url",
            expiresAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.bank.feedsConnectionsStart(
            request: .init(
                aspspName: "x",
                aspspCountry: "xy"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsComplete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "provider": "provider",
                  "aspspName": "aspspName",
                  "aspspCountry": "aspspCountry",
                  "psuType": "business",
                  "status": "pending",
                  "reference": "reference",
                  "consentExpiresAt": "2026-07-01T09:30:00Z",
                  "lastSyncedAt": "2026-07-01T09:30:00Z",
                  "error": "error",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "accounts": [
                    {
                      "id": "id",
                      "connectionId": "connectionId",
                      "bankAccountId": "bankAccountId",
                      "importTemplateId": "importTemplateId",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = FeedsConnectionsCompleteBankResponse(
            id: "id",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            accounts: [
                FeedsConnectionsCompleteBankResponseAccountsItem(
                    id: "id",
                    connectionId: "connectionId",
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    importTemplateId: Nullable<String>.value("importTemplateId"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.bank.feedsConnectionsComplete(
            request: .init(
                reference: "reference",
                code: "code"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsComplete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "provider": "provider",
                  "aspspName": "aspspName",
                  "aspspCountry": "aspspCountry",
                  "psuType": "business",
                  "status": "pending",
                  "reference": "reference",
                  "consentExpiresAt": "2024-01-15T09:30:00Z",
                  "lastSyncedAt": "2024-01-15T09:30:00Z",
                  "error": "error",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "accounts": [
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "importTemplateId": "x",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "importTemplateId": "x",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = FeedsConnectionsCompleteBankResponse(
            id: "x",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            accounts: [
                FeedsConnectionsCompleteBankResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    importTemplateId: Nullable<String>.value("x"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                FeedsConnectionsCompleteBankResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    importTemplateId: Nullable<String>.value("x"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.bank.feedsConnectionsComplete(
            request: .init(
                reference: "x",
                code: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "provider": "provider",
                  "aspspName": "aspspName",
                  "aspspCountry": "aspspCountry",
                  "psuType": "business",
                  "status": "pending",
                  "reference": "reference",
                  "consentExpiresAt": "2026-07-01T09:30:00Z",
                  "lastSyncedAt": "2026-07-01T09:30:00Z",
                  "error": "error",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "accounts": [
                    {
                      "id": "id",
                      "connectionId": "connectionId",
                      "bankAccountId": "bankAccountId",
                      "importTemplateId": "importTemplateId",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = FeedsConnectionsGetBankResponse(
            id: "id",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            accounts: [
                FeedsConnectionsGetBankResponseAccountsItem(
                    id: "id",
                    connectionId: "connectionId",
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    importTemplateId: Nullable<String>.value("importTemplateId"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.bank.feedsConnectionsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "provider": "provider",
                  "aspspName": "aspspName",
                  "aspspCountry": "aspspCountry",
                  "psuType": "business",
                  "status": "pending",
                  "reference": "reference",
                  "consentExpiresAt": "2024-01-15T09:30:00Z",
                  "lastSyncedAt": "2024-01-15T09:30:00Z",
                  "error": "error",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "accounts": [
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "importTemplateId": "x",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "importTemplateId": "x",
                      "syncSchedule": "manual",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = FeedsConnectionsGetBankResponse(
            id: "x",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            accounts: [
                FeedsConnectionsGetBankResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    importTemplateId: Nullable<String>.value("x"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                FeedsConnectionsGetBankResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    importTemplateId: Nullable<String>.value("x"),
                    syncSchedule: .manual,
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                )
            ]
        )
        let response = try await client.bank.feedsConnectionsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "provider": "provider",
                      "aspspName": "aspspName",
                      "aspspCountry": "aspspCountry",
                      "psuType": "business",
                      "status": "pending",
                      "reference": "reference",
                      "consentExpiresAt": "2026-07-01T09:30:00Z",
                      "lastSyncedAt": "2026-07-01T09:30:00Z",
                      "error": "error",
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
        let expectedResponse = FeedsConnectionsListBankResponse(
            rows: [
                FeedsConnectionsListBankResponseRowsItem(
                    id: "id",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    error: Nullable<String>.value("error"),
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
        let response = try await client.bank.feedsConnectionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "provider": "provider",
                      "aspspName": "aspspName",
                      "aspspCountry": "aspspCountry",
                      "psuType": "business",
                      "status": "pending",
                      "reference": "reference",
                      "consentExpiresAt": "2024-01-15T09:30:00Z",
                      "lastSyncedAt": "2024-01-15T09:30:00Z",
                      "error": "error",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "provider": "provider",
                      "aspspName": "aspspName",
                      "aspspCountry": "aspspCountry",
                      "psuType": "business",
                      "status": "pending",
                      "reference": "reference",
                      "consentExpiresAt": "2024-01-15T09:30:00Z",
                      "lastSyncedAt": "2024-01-15T09:30:00Z",
                      "error": "error",
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
        let expectedResponse = FeedsConnectionsListBankResponse(
            rows: [
                FeedsConnectionsListBankResponseRowsItem(
                    id: "x",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    error: Nullable<String>.value("error"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                FeedsConnectionsListBankResponseRowsItem(
                    id: "x",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    error: Nullable<String>.value("error"),
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
        let response = try await client.bank.feedsConnectionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsDelete1() async throws -> Void {
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
        let expectedResponse = FeedsConnectionsDeleteBankResponse(
            deleted: true
        )
        let response = try await client.bank.feedsConnectionsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsConnectionsDelete2() async throws -> Void {
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
        let expectedResponse = FeedsConnectionsDeleteBankResponse(
            deleted: true
        )
        let response = try await client.bank.feedsConnectionsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsAccountsLink1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "connectionId": "connectionId",
                  "bankAccountId": "bankAccountId",
                  "importTemplateId": "importTemplateId",
                  "syncSchedule": "manual",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsAccountsLinkBankResponse(
            id: "id",
            connectionId: "connectionId",
            bankAccountId: Nullable<String>.value("bankAccountId"),
            importTemplateId: Nullable<String>.value("importTemplateId"),
            syncSchedule: .manual,
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.bank.feedsAccountsLink(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsAccountsLink2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "connectionId": "x",
                  "bankAccountId": "x",
                  "importTemplateId": "x",
                  "syncSchedule": "manual",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsAccountsLinkBankResponse(
            id: "x",
            connectionId: "x",
            bankAccountId: Nullable<String>.value("x"),
            importTemplateId: Nullable<String>.value("x"),
            syncSchedule: .manual,
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.bank.feedsAccountsLink(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsAccountsConfigure1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "connectionId": "connectionId",
                  "bankAccountId": "bankAccountId",
                  "importTemplateId": "importTemplateId",
                  "syncSchedule": "manual",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsAccountsConfigureBankResponse(
            id: "id",
            connectionId: "connectionId",
            bankAccountId: Nullable<String>.value("bankAccountId"),
            importTemplateId: Nullable<String>.value("importTemplateId"),
            syncSchedule: .manual,
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.bank.feedsAccountsConfigure(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsAccountsConfigure2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "connectionId": "x",
                  "bankAccountId": "x",
                  "importTemplateId": "x",
                  "syncSchedule": "manual",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FeedsAccountsConfigureBankResponse(
            id: "x",
            connectionId: "x",
            bankAccountId: Nullable<String>.value("x"),
            importTemplateId: Nullable<String>.value("x"),
            syncSchedule: .manual,
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.bank.feedsAccountsConfigure(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsSync1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "connectionId",
                  "imported": 1000000,
                  "skipped": 1000000,
                  "posted": 1000000,
                  "partnersCreated": 1000000,
                  "invoicesCreated": 1000000,
                  "invoicesLinked": 1000000,
                  "paymentsMatched": 1000000,
                  "warnings": [
                    "warnings"
                  ],
                  "accounts": [
                    {
                      "feedAccountId": "feedAccountId",
                      "imported": 1000000,
                      "fetched": 1000000
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
        let expectedResponse = FeedsSyncBankResponse(
            connectionId: "connectionId",
            imported: 1000000,
            skipped: 1000000,
            posted: 1000000,
            partnersCreated: 1000000,
            invoicesCreated: 1000000,
            invoicesLinked: 1000000,
            paymentsMatched: 1000000,
            warnings: [
                "warnings"
            ],
            accounts: [
                FeedsSyncBankResponseAccountsItem(
                    feedAccountId: "feedAccountId",
                    imported: 1000000,
                    fetched: 1000000
                )
            ]
        )
        let response = try await client.bank.feedsSync(
            request: .init(connectionId: "connectionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func feedsSync2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "x",
                  "imported": 1000000,
                  "skipped": 1000000,
                  "posted": 1000000,
                  "partnersCreated": 1000000,
                  "invoicesCreated": 1000000,
                  "invoicesLinked": 1000000,
                  "paymentsMatched": 1000000,
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "accounts": [
                    {
                      "feedAccountId": "x",
                      "imported": 1000000,
                      "fetched": 1000000
                    },
                    {
                      "feedAccountId": "x",
                      "imported": 1000000,
                      "fetched": 1000000
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
        let expectedResponse = FeedsSyncBankResponse(
            connectionId: "x",
            imported: 1000000,
            skipped: 1000000,
            posted: 1000000,
            partnersCreated: 1000000,
            invoicesCreated: 1000000,
            invoicesLinked: 1000000,
            paymentsMatched: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ],
            accounts: [
                FeedsSyncBankResponseAccountsItem(
                    feedAccountId: "x",
                    imported: 1000000,
                    fetched: 1000000
                ),
                FeedsSyncBankResponseAccountsItem(
                    feedAccountId: "x",
                    imported: 1000000,
                    fetched: 1000000
                )
            ]
        )
        let response = try await client.bank.feedsSync(
            request: .init(connectionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
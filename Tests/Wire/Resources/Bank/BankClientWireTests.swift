import Foundation
import Testing
import Api

@Suite("BankClient Wire Tests") struct BankClientWireTests {
    @Test func postV1BankAccountsCreate1() async throws -> Void {
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
        let expectedResponse = PostV1BankAccountsCreateResponse(
            id: "id",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankAccountsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankAccountsCreate2() async throws -> Void {
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
        let expectedResponse = PostV1BankAccountsCreateResponse(
            id: "x",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankAccountsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankAccountsList1() async throws -> Void {
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
        let expectedResponse = PostV1BankAccountsListResponse(
            rows: [
                PostV1BankAccountsListResponseRowsItem(
                    id: "id",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankAccountsList2() async throws -> Void {
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "iban": "iban",
                      "currency": "currency",
                      "accountCode": "accountCode",
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
        let expectedResponse = PostV1BankAccountsListResponse(
            rows: [
                PostV1BankAccountsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1BankAccountsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    accountCode: "accountCode",
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankAccountsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankAccountsUpdate1() async throws -> Void {
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
        let expectedResponse = PostV1BankAccountsUpdateResponse(
            id: "id",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankAccountsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankAccountsUpdate2() async throws -> Void {
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
        let expectedResponse = PostV1BankAccountsUpdateResponse(
            id: "x",
            name: "name",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            accountCode: "accountCode",
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankAccountsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsImport1() async throws -> Void {
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
        let expectedResponse = PostV1BankTransactionsImportResponse(
            imported: 1000000,
            skipped: 1000000
        )
        let response = try await client.bank.postV1BankTransactionsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                transactions: [
                    PostV1BankTransactionsImportRequestTransactionsItem(
                        date: "date",
                        amount: "amount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsImport2() async throws -> Void {
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
        let expectedResponse = PostV1BankTransactionsImportResponse(
            imported: 1000000,
            skipped: 1000000
        )
        let response = try await client.bank.postV1BankTransactionsImport(
            request: .init(
                bankAccountId: "x",
                transactions: [
                    PostV1BankTransactionsImportRequestTransactionsItem(
                        date: "date",
                        amount: "amount"
                    ),
                    PostV1BankTransactionsImportRequestTransactionsItem(
                        date: "date",
                        amount: "amount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankStatementsImport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000,
                  "statements": [
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
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
        let expectedResponse = PostV1BankStatementsImportResponse(
            imported: 1000000,
            skipped: 1000000,
            statements: [
                PostV1BankStatementsImportResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<String>.value("fromDate"),
                    toDate: Nullable<String>.value("toDate"),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                )
            ]
        )
        let response = try await client.bank.postV1BankStatementsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankStatementsImport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "imported": 1000000,
                  "skipped": 1000000,
                  "statements": [
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "openingBalance": "openingBalance",
                      "closingBalance": "closingBalance",
                      "transactionCount": 1000000
                    },
                    {
                      "statementId": "statementId",
                      "iban": "iban",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
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
        let expectedResponse = PostV1BankStatementsImportResponse(
            imported: 1000000,
            skipped: 1000000,
            statements: [
                PostV1BankStatementsImportResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<String>.value("fromDate"),
                    toDate: Nullable<String>.value("toDate"),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                ),
                PostV1BankStatementsImportResponseStatementsItem(
                    statementId: Nullable<String>.value("statementId"),
                    iban: Nullable<String>.value("iban"),
                    fromDate: Nullable<String>.value("fromDate"),
                    toDate: Nullable<String>.value("toDate"),
                    openingBalance: Nullable<String>.value("openingBalance"),
                    closingBalance: Nullable<String>.value("closingBalance"),
                    transactionCount: 1000000
                )
            ]
        )
        let response = try await client.bank.postV1BankStatementsImport(
            request: .init(
                bankAccountId: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "bankAccountId": "bankAccountId",
                      "date": "date",
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
        let expectedResponse = PostV1BankTransactionsListResponse(
            rows: [
                PostV1BankTransactionsListResponseRowsItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    date: "date",
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
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "date": "date",
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
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "date": "date",
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
        let expectedResponse = PostV1BankTransactionsListResponse(
            rows: [
                PostV1BankTransactionsListResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    date: "date",
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
                    createdAt: "createdAt"
                ),
                PostV1BankTransactionsListResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    date: "date",
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
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "date": "date",
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
        let expectedResponse = PostV1BankTransactionsMatchResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            date: "date",
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
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankTransactionsMatch(
            request: .init(
                transactionId: "transactionId",
                documentType: .saleInvoice,
                documentId: "documentId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "date": "date",
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
        let expectedResponse = PostV1BankTransactionsMatchResponse(
            id: "x",
            bankAccountId: "x",
            date: "date",
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
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankTransactionsMatch(
            request: .init(
                transactionId: "x",
                documentType: .saleInvoice,
                documentId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankPaymentsExport1() async throws -> Void {
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
        let expectedResponse = PostV1BankPaymentsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.postV1BankPaymentsExport(
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

    @Test func postV1BankPaymentsExport2() async throws -> Void {
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
        let expectedResponse = PostV1BankPaymentsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.postV1BankPaymentsExport(
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

    @Test func postV1BankTransactionsSuggestMatches1() async throws -> Void {
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
        let expectedResponse = PostV1BankTransactionsSuggestMatchesResponse(
            suggestions: [
                PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "documentId",
                    number: "number",
                    partnerName: "partnerName",
                    grossTotal: "grossTotal",
                    remaining: "remaining",
                    score: 1000000,
                    reasons: [
                        "reasons"
                    ]
                )
            ]
        )
        let response = try await client.bank.postV1BankTransactionsSuggestMatches(
            request: .init(transactionId: "transactionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankTransactionsSuggestMatches2() async throws -> Void {
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
        let expectedResponse = PostV1BankTransactionsSuggestMatchesResponse(
            suggestions: [
                PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "x",
                    number: "number",
                    partnerName: "partnerName",
                    grossTotal: "grossTotal",
                    remaining: "remaining",
                    score: 1000000,
                    reasons: [
                        "reasons",
                        "reasons"
                    ]
                ),
                PostV1BankTransactionsSuggestMatchesResponseSuggestionsItem(
                    documentType: .saleInvoice,
                    documentId: "x",
                    number: "number",
                    partnerName: "partnerName",
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
        let response = try await client.bank.postV1BankTransactionsSuggestMatches(
            request: .init(transactionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsImport1() async throws -> Void {
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
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "journalTransactionId",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "createdAt",
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
        let expectedResponse = PostV1BankSettlementsImportResponse(
            format: .payoutReconciliation,
            imported: 1000000,
            updated: 1000000,
            skipped: 1000000,
            skippedUnassigned: 1000000,
            skippedPayoutRows: 1000000,
            skippedNotSettled: 1000000,
            batches: [
                PostV1BankSettlementsImportResponseBatchesItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.bank.postV1BankSettlementsImport(
            request: .init(
                bankAccountId: "bankAccountId",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsImport2() async throws -> Void {
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
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "createdAt",
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
        let expectedResponse = PostV1BankSettlementsImportResponse(
            format: .payoutReconciliation,
            imported: 1000000,
            updated: 1000000,
            skipped: 1000000,
            skippedUnassigned: 1000000,
            skippedPayoutRows: 1000000,
            skippedNotSettled: 1000000,
            batches: [
                PostV1BankSettlementsImportResponseBatchesItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1BankSettlementsImportResponseBatchesItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.bank.postV1BankSettlementsImport(
            request: .init(
                bankAccountId: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsList1() async throws -> Void {
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
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "journalTransactionId",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
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
        let expectedResponse = PostV1BankSettlementsListResponse(
            rows: [
                PostV1BankSettlementsListResponseRowsItem(
                    id: "id",
                    bankAccountId: "bankAccountId",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankSettlementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsList2() async throws -> Void {
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
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "bankAccountId": "x",
                      "provider": "provider",
                      "payoutId": "payoutId",
                      "payoutDate": "payoutDate",
                      "currency": "currency",
                      "grossTotal": "grossTotal",
                      "feeTotal": "feeTotal",
                      "netTotal": "netTotal",
                      "status": "imported",
                      "journalTransactionId": "x",
                      "lineCount": 1000000,
                      "matchedCount": 1000000,
                      "unmatchedCount": 1000000,
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
        let expectedResponse = PostV1BankSettlementsListResponse(
            rows: [
                PostV1BankSettlementsListResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1BankSettlementsListResponseRowsItem(
                    id: "x",
                    bankAccountId: "x",
                    provider: "provider",
                    payoutId: "payoutId",
                    payoutDate: Nullable<String>.value("payoutDate"),
                    currency: "currency",
                    grossTotal: "grossTotal",
                    feeTotal: "feeTotal",
                    netTotal: "netTotal",
                    status: .imported,
                    journalTransactionId: Nullable<String>.value("x"),
                    lineCount: 1000000,
                    matchedCount: 1000000,
                    unmatchedCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankSettlementsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "payoutDate",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "id",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "date",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
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
        let expectedResponse = PostV1BankSettlementsGetResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<String>.value("payoutDate"),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1BankSettlementsGetResponseLinesItem(
                    id: "id",
                    externalId: "externalId",
                    category: "category",
                    date: "date",
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("matchedInvoiceId"),
                    matchStatus: .unmatched
                )
            ]
        )
        let response = try await client.bank.postV1BankSettlementsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "payoutDate",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "lines": [
                    {
                      "id": "x",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "date",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
                      "reference": "reference",
                      "matchedInvoiceId": "x",
                      "matchStatus": "unmatched"
                    },
                    {
                      "id": "x",
                      "externalId": "externalId",
                      "category": "category",
                      "date": "date",
                      "gross": "gross",
                      "fee": "fee",
                      "net": "net",
                      "description": "description",
                      "sourceId": "sourceId",
                      "chargeId": "chargeId",
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
        let expectedResponse = PostV1BankSettlementsGetResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<String>.value("payoutDate"),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1BankSettlementsGetResponseLinesItem(
                    id: "x",
                    externalId: "externalId",
                    category: "category",
                    date: "date",
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("x"),
                    matchStatus: .unmatched
                ),
                PostV1BankSettlementsGetResponseLinesItem(
                    id: "x",
                    externalId: "externalId",
                    category: "category",
                    date: "date",
                    gross: "gross",
                    fee: "fee",
                    net: "net",
                    description: Nullable<String>.value("description"),
                    sourceId: Nullable<String>.value("sourceId"),
                    chargeId: Nullable<String>.value("chargeId"),
                    reference: Nullable<String>.value("reference"),
                    matchedInvoiceId: Nullable<String>.value("x"),
                    matchStatus: .unmatched
                )
            ]
        )
        let response = try await client.bank.postV1BankSettlementsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "date",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
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
        let expectedResponse = PostV1BankSettlementsMatchResponse(
            id: "id",
            externalId: "externalId",
            category: "category",
            date: "date",
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("matchedInvoiceId"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.postV1BankSettlementsMatch(
            request: .init(
                lineId: "lineId",
                invoiceId: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "externalId": "externalId",
                  "category": "category",
                  "date": "date",
                  "gross": "gross",
                  "fee": "fee",
                  "net": "net",
                  "description": "description",
                  "sourceId": "sourceId",
                  "chargeId": "chargeId",
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
        let expectedResponse = PostV1BankSettlementsMatchResponse(
            id: "x",
            externalId: "externalId",
            category: "category",
            date: "date",
            gross: "gross",
            fee: "fee",
            net: "net",
            description: Nullable<String>.value("description"),
            sourceId: Nullable<String>.value("sourceId"),
            chargeId: Nullable<String>.value("chargeId"),
            reference: Nullable<String>.value("reference"),
            matchedInvoiceId: Nullable<String>.value("x"),
            matchStatus: .unmatched
        )
        let response = try await client.bank.postV1BankSettlementsMatch(
            request: .init(
                lineId: "x",
                invoiceId: .null
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsPost1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "bankAccountId": "bankAccountId",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "payoutDate",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "status": "imported",
                  "journalTransactionId": "journalTransactionId",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "warnings": [
                    "warnings"
                  ],
                  "summary": {
                    "receivableApplied": "receivableApplied",
                    "commissionAmount": "commissionAmount",
                    "sellerAmount": "sellerAmount",
                    "feeAmount": "feeAmount",
                    "suspenseAmount": "suspenseAmount"
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
        let expectedResponse = PostV1BankSettlementsPostResponse(
            id: "id",
            bankAccountId: "bankAccountId",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<String>.value("payoutDate"),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            status: .imported,
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings"
            ],
            summary: PostV1BankSettlementsPostResponseSummary(
                receivableApplied: "receivableApplied",
                commissionAmount: "commissionAmount",
                sellerAmount: "sellerAmount",
                feeAmount: "feeAmount",
                suspenseAmount: "suspenseAmount"
            )
        )
        let response = try await client.bank.postV1BankSettlementsPost(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankSettlementsPost2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "bankAccountId": "x",
                  "provider": "provider",
                  "payoutId": "payoutId",
                  "payoutDate": "payoutDate",
                  "currency": "currency",
                  "grossTotal": "grossTotal",
                  "feeTotal": "feeTotal",
                  "netTotal": "netTotal",
                  "status": "imported",
                  "journalTransactionId": "x",
                  "lineCount": 1000000,
                  "matchedCount": 1000000,
                  "unmatchedCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "summary": {
                    "receivableApplied": "receivableApplied",
                    "commissionAmount": "commissionAmount",
                    "sellerAmount": "sellerAmount",
                    "feeAmount": "feeAmount",
                    "suspenseAmount": "suspenseAmount"
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
        let expectedResponse = PostV1BankSettlementsPostResponse(
            id: "x",
            bankAccountId: "x",
            provider: "provider",
            payoutId: "payoutId",
            payoutDate: Nullable<String>.value("payoutDate"),
            currency: "currency",
            grossTotal: "grossTotal",
            feeTotal: "feeTotal",
            netTotal: "netTotal",
            status: .imported,
            journalTransactionId: Nullable<String>.value("x"),
            lineCount: 1000000,
            matchedCount: 1000000,
            unmatchedCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings",
                "warnings"
            ],
            summary: PostV1BankSettlementsPostResponseSummary(
                receivableApplied: "receivableApplied",
                commissionAmount: "commissionAmount",
                sellerAmount: "sellerAmount",
                feeAmount: "feeAmount",
                suspenseAmount: "suspenseAmount"
            )
        )
        let response = try await client.bank.postV1BankSettlementsPost(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
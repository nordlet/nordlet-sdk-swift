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

    @Test func postV1BankMandatesCreate1() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesCreateResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesCreate(
            request: .init(
                partnerId: "partnerId",
                iban: "iban",
                signatureDate: "signatureDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesCreate2() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesCreateResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesCreate(
            request: .init(
                partnerId: "x",
                iban: "blackcurrant...",
                signatureDate: "signatureDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesUpdate1() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesUpdateResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesUpdate2() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesUpdateResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesCancel1() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesCancelResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesCancel2() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesCancelResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesGet1() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesGetResponse(
            id: "id",
            partnerId: "partnerId",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesGet2() async throws -> Void {
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
                  "signatureDate": "signatureDate",
                  "collectionsCount": 1000000,
                  "lastCollectionDate": "lastCollectionDate",
                  "expiresOn": "expiresOn",
                  "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesGetResponse(
            id: "x",
            partnerId: "x",
            reference: "reference",
            scheme: .core,
            sequenceType: .recurrent,
            status: .active,
            debtorName: "debtorName",
            iban: "iban",
            bic: Nullable<String>.value("bic"),
            signatureDate: "signatureDate",
            collectionsCount: 1000000,
            lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
            expiresOn: "expiresOn",
            cancelledAt: Nullable<String>.value("cancelledAt"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.bank.postV1BankMandatesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesList1() async throws -> Void {
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
                      "signatureDate": "signatureDate",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "lastCollectionDate",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesListResponse(
            rows: [
                PostV1BankMandatesListResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: "signatureDate",
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<String>.value("cancelledAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankMandatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankMandatesList2() async throws -> Void {
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
                      "signatureDate": "signatureDate",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "lastCollectionDate",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "cancelledAt",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
                      "signatureDate": "signatureDate",
                      "collectionsCount": 1000000,
                      "lastCollectionDate": "lastCollectionDate",
                      "expiresOn": "expiresOn",
                      "cancelledAt": "cancelledAt",
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
        let expectedResponse = PostV1BankMandatesListResponse(
            rows: [
                PostV1BankMandatesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: "signatureDate",
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<String>.value("cancelledAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1BankMandatesListResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    reference: "reference",
                    scheme: .core,
                    sequenceType: .recurrent,
                    status: .active,
                    debtorName: "debtorName",
                    iban: "iban",
                    bic: Nullable<String>.value("bic"),
                    signatureDate: "signatureDate",
                    collectionsCount: 1000000,
                    lastCollectionDate: Nullable<String>.value("lastCollectionDate"),
                    expiresOn: "expiresOn",
                    cancelledAt: Nullable<String>.value("cancelledAt"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankMandatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankDirectDebitsExport1() async throws -> Void {
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
        let expectedResponse = PostV1BankDirectDebitsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.postV1BankDirectDebitsExport(
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

    @Test func postV1BankDirectDebitsExport2() async throws -> Void {
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
        let expectedResponse = PostV1BankDirectDebitsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.bank.postV1BankDirectDebitsExport(
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

    @Test func listThePsd2BanksAspsPsAvailableToConnect1() async throws -> Void {
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
        let expectedResponse = PostV1BankFeedsBanksListResponse(
            provider: "provider",
            banks: [
                PostV1BankFeedsBanksListResponseBanksItem(
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
        let response = try await client.bank.listThePsd2BanksAspsPsAvailableToConnect(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listThePsd2BanksAspsPsAvailableToConnect2() async throws -> Void {
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
        let expectedResponse = PostV1BankFeedsBanksListResponse(
            provider: "provider",
            banks: [
                PostV1BankFeedsBanksListResponseBanksItem(
                    name: "name",
                    country: "country",
                    logoUrl: Nullable<String>.value("logoUrl"),
                    psuTypes: [
                        .business,
                        .business
                    ],
                    maxConsentDays: Nullable<Int64>.value(1000000)
                ),
                PostV1BankFeedsBanksListResponseBanksItem(
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
        let response = try await client.bank.listThePsd2BanksAspsPsAvailableToConnect(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func beginBankAuthorizationRedirectTheUserToTheReturnedUrl1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "connectionId",
                  "reference": "reference",
                  "url": "url",
                  "expiresAt": "expiresAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BankFeedsConnectionsStartResponse(
            connectionId: "connectionId",
            reference: "reference",
            url: "url",
            expiresAt: "expiresAt"
        )
        let response = try await client.bank.beginBankAuthorizationRedirectTheUserToTheReturnedUrl(
            request: .init(
                aspspName: "aspspName",
                aspspCountry: "aspspCountry"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func beginBankAuthorizationRedirectTheUserToTheReturnedUrl2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "x",
                  "reference": "reference",
                  "url": "url",
                  "expiresAt": "expiresAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BankFeedsConnectionsStartResponse(
            connectionId: "x",
            reference: "reference",
            url: "url",
            expiresAt: "expiresAt"
        )
        let response = try await client.bank.beginBankAuthorizationRedirectTheUserToTheReturnedUrl(
            request: .init(
                aspspName: "x",
                aspspCountry: "xy"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeTheRedirectCodeForASessionAndStoreTheBankAccountsItExposes1() async throws -> Void {
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
                  "consentExpiresAt": "consentExpiresAt",
                  "lastSyncedAt": "lastSyncedAt",
                  "error": "error",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "accounts": [
                    {
                      "id": "id",
                      "connectionId": "connectionId",
                      "bankAccountId": "bankAccountId",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
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
        let expectedResponse = PostV1BankFeedsConnectionsCompleteResponse(
            id: "id",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
            error: Nullable<String>.value("error"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            accounts: [
                PostV1BankFeedsConnectionsCompleteResponseAccountsItem(
                    id: "id",
                    connectionId: "connectionId",
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                )
            ]
        )
        let response = try await client.bank.exchangeTheRedirectCodeForASessionAndStoreTheBankAccountsItExposes(
            request: .init(
                reference: "reference",
                code: "code"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func exchangeTheRedirectCodeForASessionAndStoreTheBankAccountsItExposes2() async throws -> Void {
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
                  "consentExpiresAt": "consentExpiresAt",
                  "lastSyncedAt": "lastSyncedAt",
                  "error": "error",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "accounts": [
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
                    },
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
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
        let expectedResponse = PostV1BankFeedsConnectionsCompleteResponse(
            id: "x",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
            error: Nullable<String>.value("error"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            accounts: [
                PostV1BankFeedsConnectionsCompleteResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                ),
                PostV1BankFeedsConnectionsCompleteResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                )
            ]
        )
        let response = try await client.bank.exchangeTheRedirectCodeForASessionAndStoreTheBankAccountsItExposes(
            request: .init(
                reference: "x",
                code: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankFeedsConnectionsGet1() async throws -> Void {
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
                  "consentExpiresAt": "consentExpiresAt",
                  "lastSyncedAt": "lastSyncedAt",
                  "error": "error",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "accounts": [
                    {
                      "id": "id",
                      "connectionId": "connectionId",
                      "bankAccountId": "bankAccountId",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
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
        let expectedResponse = PostV1BankFeedsConnectionsGetResponse(
            id: "id",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
            error: Nullable<String>.value("error"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            accounts: [
                PostV1BankFeedsConnectionsGetResponseAccountsItem(
                    id: "id",
                    connectionId: "connectionId",
                    bankAccountId: Nullable<String>.value("bankAccountId"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                )
            ]
        )
        let response = try await client.bank.postV1BankFeedsConnectionsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankFeedsConnectionsGet2() async throws -> Void {
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
                  "consentExpiresAt": "consentExpiresAt",
                  "lastSyncedAt": "lastSyncedAt",
                  "error": "error",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "accounts": [
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
                    },
                    {
                      "id": "x",
                      "connectionId": "x",
                      "bankAccountId": "x",
                      "externalId": "externalId",
                      "iban": "iban",
                      "currency": "currency",
                      "name": "name",
                      "product": "product",
                      "syncFrom": "syncFrom",
                      "lastSyncedAt": "lastSyncedAt"
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
        let expectedResponse = PostV1BankFeedsConnectionsGetResponse(
            id: "x",
            provider: "provider",
            aspspName: "aspspName",
            aspspCountry: "aspspCountry",
            psuType: .business,
            status: .pending,
            reference: "reference",
            consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
            error: Nullable<String>.value("error"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            accounts: [
                PostV1BankFeedsConnectionsGetResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                ),
                PostV1BankFeedsConnectionsGetResponseAccountsItem(
                    id: "x",
                    connectionId: "x",
                    bankAccountId: Nullable<String>.value("x"),
                    externalId: "externalId",
                    iban: Nullable<String>.value("iban"),
                    currency: "currency",
                    name: Nullable<String>.value("name"),
                    product: Nullable<String>.value("product"),
                    syncFrom: Nullable<String>.value("syncFrom"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt")
                )
            ]
        )
        let response = try await client.bank.postV1BankFeedsConnectionsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankFeedsConnectionsList1() async throws -> Void {
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
                      "consentExpiresAt": "consentExpiresAt",
                      "lastSyncedAt": "lastSyncedAt",
                      "error": "error",
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
        let expectedResponse = PostV1BankFeedsConnectionsListResponse(
            rows: [
                PostV1BankFeedsConnectionsListResponseRowsItem(
                    id: "id",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
                    error: Nullable<String>.value("error"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankFeedsConnectionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BankFeedsConnectionsList2() async throws -> Void {
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
                      "consentExpiresAt": "consentExpiresAt",
                      "lastSyncedAt": "lastSyncedAt",
                      "error": "error",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "provider": "provider",
                      "aspspName": "aspspName",
                      "aspspCountry": "aspspCountry",
                      "psuType": "business",
                      "status": "pending",
                      "reference": "reference",
                      "consentExpiresAt": "consentExpiresAt",
                      "lastSyncedAt": "lastSyncedAt",
                      "error": "error",
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
        let expectedResponse = PostV1BankFeedsConnectionsListResponse(
            rows: [
                PostV1BankFeedsConnectionsListResponseRowsItem(
                    id: "x",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
                    error: Nullable<String>.value("error"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1BankFeedsConnectionsListResponseRowsItem(
                    id: "x",
                    provider: "provider",
                    aspspName: "aspspName",
                    aspspCountry: "aspspCountry",
                    psuType: .business,
                    status: .pending,
                    reference: "reference",
                    consentExpiresAt: Nullable<String>.value("consentExpiresAt"),
                    lastSyncedAt: Nullable<String>.value("lastSyncedAt"),
                    error: Nullable<String>.value("error"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.bank.postV1BankFeedsConnectionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revokeTheConsentAtTheBankAndDropTheStoredConnection1() async throws -> Void {
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
        let expectedResponse = PostV1BankFeedsConnectionsDeleteResponse(
            deleted: true
        )
        let response = try await client.bank.revokeTheConsentAtTheBankAndDropTheStoredConnection(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revokeTheConsentAtTheBankAndDropTheStoredConnection2() async throws -> Void {
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
        let expectedResponse = PostV1BankFeedsConnectionsDeleteResponse(
            deleted: true
        )
        let response = try await client.bank.revokeTheConsentAtTheBankAndDropTheStoredConnection(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pointABankFeedAccountAtALedgerBankAccountSoItsTransactionsCanBeSynced1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "connectionId": "connectionId",
                  "bankAccountId": "bankAccountId",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "lastSyncedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BankFeedsAccountsLinkResponse(
            id: "id",
            connectionId: "connectionId",
            bankAccountId: Nullable<String>.value("bankAccountId"),
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt")
        )
        let response = try await client.bank.pointABankFeedAccountAtALedgerBankAccountSoItsTransactionsCanBeSynced(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pointABankFeedAccountAtALedgerBankAccountSoItsTransactionsCanBeSynced2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "connectionId": "x",
                  "bankAccountId": "x",
                  "externalId": "externalId",
                  "iban": "iban",
                  "currency": "currency",
                  "name": "name",
                  "product": "product",
                  "syncFrom": "syncFrom",
                  "lastSyncedAt": "lastSyncedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BankFeedsAccountsLinkResponse(
            id: "x",
            connectionId: "x",
            bankAccountId: Nullable<String>.value("x"),
            externalId: "externalId",
            iban: Nullable<String>.value("iban"),
            currency: "currency",
            name: Nullable<String>.value("name"),
            product: Nullable<String>.value("product"),
            syncFrom: Nullable<String>.value("syncFrom"),
            lastSyncedAt: Nullable<String>.value("lastSyncedAt")
        )
        let response = try await client.bank.pointABankFeedAccountAtALedgerBankAccountSoItsTransactionsCanBeSynced(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pullNewTransactionsFromTheBankIntoTheLedgerEmitsBankFeedSynced1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "connectionId",
                  "imported": 1000000,
                  "skipped": 1000000,
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
        let expectedResponse = PostV1BankFeedsSyncResponse(
            connectionId: "connectionId",
            imported: 1000000,
            skipped: 1000000,
            accounts: [
                PostV1BankFeedsSyncResponseAccountsItem(
                    feedAccountId: "feedAccountId",
                    imported: 1000000,
                    fetched: 1000000
                )
            ]
        )
        let response = try await client.bank.pullNewTransactionsFromTheBankIntoTheLedgerEmitsBankFeedSynced(
            request: .init(connectionId: "connectionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pullNewTransactionsFromTheBankIntoTheLedgerEmitsBankFeedSynced2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "connectionId": "x",
                  "imported": 1000000,
                  "skipped": 1000000,
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
        let expectedResponse = PostV1BankFeedsSyncResponse(
            connectionId: "x",
            imported: 1000000,
            skipped: 1000000,
            accounts: [
                PostV1BankFeedsSyncResponseAccountsItem(
                    feedAccountId: "x",
                    imported: 1000000,
                    fetched: 1000000
                ),
                PostV1BankFeedsSyncResponseAccountsItem(
                    feedAccountId: "x",
                    imported: 1000000,
                    fetched: 1000000
                )
            ]
        )
        let response = try await client.bank.pullNewTransactionsFromTheBankIntoTheLedgerEmitsBankFeedSynced(
            request: .init(connectionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
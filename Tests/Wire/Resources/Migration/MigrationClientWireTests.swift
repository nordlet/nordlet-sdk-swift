import Foundation
import Testing
import Api

@Suite("MigrationClient Wire Tests") struct MigrationClientWireTests {
    @Test func booksValidate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "2026-07-01",
                  "accounts": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "partners": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "items": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "assetGroups": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "openingBalances": {
                    "journalTransactionId": "journalTransactionId",
                    "date": "2026-07-01",
                    "entries": 1000000,
                    "debitTotal": "debitTotal",
                    "creditTotal": "creditTotal",
                    "balancingAmount": "balancingAmount"
                  },
                  "journal": {
                    "transactions": 1000000,
                    "entries": 1000000
                  },
                  "openReceivables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "openPayables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "fixedAssets": {
                    "created": 1000000,
                    "costTotal": "costTotal",
                    "accumulatedDepreciationTotal": "accumulatedDepreciationTotal"
                  },
                  "stock": {
                    "movements": 1000000,
                    "costTotal": "costTotal"
                  },
                  "numberSeries": [
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    }
                  ],
                  "warnings": [
                    "warnings"
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
        let expectedResponse = BooksValidateMigrationResponse(
            dryRun: true,
            cutoverDate: CalendarDate("2026-07-01")!,
            accounts: BooksValidateMigrationResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: BooksValidateMigrationResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: BooksValidateMigrationResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: BooksValidateMigrationResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<BooksValidateMigrationResponseOpeningBalances>.value(BooksValidateMigrationResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: CalendarDate("2026-07-01")!,
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: BooksValidateMigrationResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: BooksValidateMigrationResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: BooksValidateMigrationResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: BooksValidateMigrationResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: BooksValidateMigrationResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                BooksValidateMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.migration.booksValidate(
            request: .init(cutoverDate: CalendarDate("2026-07-01")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func booksValidate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "2023-01-15",
                  "accounts": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "partners": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "items": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "assetGroups": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "openingBalances": {
                    "journalTransactionId": "journalTransactionId",
                    "date": "2023-01-15",
                    "entries": 1000000,
                    "debitTotal": "debitTotal",
                    "creditTotal": "creditTotal",
                    "balancingAmount": "balancingAmount"
                  },
                  "journal": {
                    "transactions": 1000000,
                    "entries": 1000000
                  },
                  "openReceivables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "openPayables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "fixedAssets": {
                    "created": 1000000,
                    "costTotal": "costTotal",
                    "accumulatedDepreciationTotal": "accumulatedDepreciationTotal"
                  },
                  "stock": {
                    "movements": 1000000,
                    "costTotal": "costTotal"
                  },
                  "numberSeries": [
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    },
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = BooksValidateMigrationResponse(
            dryRun: true,
            cutoverDate: CalendarDate("2023-01-15")!,
            accounts: BooksValidateMigrationResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: BooksValidateMigrationResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: BooksValidateMigrationResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: BooksValidateMigrationResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<BooksValidateMigrationResponseOpeningBalances>.value(BooksValidateMigrationResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: CalendarDate("2023-01-15")!,
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: BooksValidateMigrationResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: BooksValidateMigrationResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: BooksValidateMigrationResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: BooksValidateMigrationResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: BooksValidateMigrationResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                BooksValidateMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                ),
                BooksValidateMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.migration.booksValidate(
            request: .init(cutoverDate: CalendarDate("2023-01-15")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func booksImport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "2026-07-01",
                  "accounts": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "partners": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "items": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "assetGroups": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "openingBalances": {
                    "journalTransactionId": "journalTransactionId",
                    "date": "2026-07-01",
                    "entries": 1000000,
                    "debitTotal": "debitTotal",
                    "creditTotal": "creditTotal",
                    "balancingAmount": "balancingAmount"
                  },
                  "journal": {
                    "transactions": 1000000,
                    "entries": 1000000
                  },
                  "openReceivables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "openPayables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "fixedAssets": {
                    "created": 1000000,
                    "costTotal": "costTotal",
                    "accumulatedDepreciationTotal": "accumulatedDepreciationTotal"
                  },
                  "stock": {
                    "movements": 1000000,
                    "costTotal": "costTotal"
                  },
                  "numberSeries": [
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    }
                  ],
                  "warnings": [
                    "warnings"
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
        let expectedResponse = BooksImportMigrationResponse(
            dryRun: true,
            cutoverDate: CalendarDate("2026-07-01")!,
            accounts: BooksImportMigrationResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: BooksImportMigrationResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: BooksImportMigrationResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: BooksImportMigrationResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<BooksImportMigrationResponseOpeningBalances>.value(BooksImportMigrationResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: CalendarDate("2026-07-01")!,
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: BooksImportMigrationResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: BooksImportMigrationResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: BooksImportMigrationResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: BooksImportMigrationResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: BooksImportMigrationResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                BooksImportMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.migration.booksImport(
            request: .init(cutoverDate: CalendarDate("2026-07-01")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func booksImport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "2023-01-15",
                  "accounts": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "partners": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "items": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "assetGroups": {
                    "created": 1000000,
                    "existing": 1000000
                  },
                  "openingBalances": {
                    "journalTransactionId": "journalTransactionId",
                    "date": "2023-01-15",
                    "entries": 1000000,
                    "debitTotal": "debitTotal",
                    "creditTotal": "creditTotal",
                    "balancingAmount": "balancingAmount"
                  },
                  "journal": {
                    "transactions": 1000000,
                    "entries": 1000000
                  },
                  "openReceivables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "openPayables": {
                    "created": 1000000,
                    "outstandingTotal": "outstandingTotal"
                  },
                  "fixedAssets": {
                    "created": 1000000,
                    "costTotal": "costTotal",
                    "accumulatedDepreciationTotal": "accumulatedDepreciationTotal"
                  },
                  "stock": {
                    "movements": 1000000,
                    "costTotal": "costTotal"
                  },
                  "numberSeries": [
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    },
                    {
                      "prefix": "prefix",
                      "year": 1000000,
                      "nextNumber": 1000000
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = BooksImportMigrationResponse(
            dryRun: true,
            cutoverDate: CalendarDate("2023-01-15")!,
            accounts: BooksImportMigrationResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: BooksImportMigrationResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: BooksImportMigrationResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: BooksImportMigrationResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<BooksImportMigrationResponseOpeningBalances>.value(BooksImportMigrationResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: CalendarDate("2023-01-15")!,
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: BooksImportMigrationResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: BooksImportMigrationResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: BooksImportMigrationResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: BooksImportMigrationResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: BooksImportMigrationResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                BooksImportMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                ),
                BooksImportMigrationResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.migration.booksImport(
            request: .init(cutoverDate: CalendarDate("2023-01-15")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
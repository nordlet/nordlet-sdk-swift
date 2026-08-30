import Foundation
import Testing
import Api

@Suite("MigrationClient Wire Tests") struct MigrationClientWireTests {
    @Test func checkAHistoricalBooksPackageWithoutWritingAnything1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "cutoverDate",
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
                    "date": "date",
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
        let expectedResponse = PostV1MigrationBooksValidateResponse(
            dryRun: true,
            cutoverDate: "cutoverDate",
            accounts: PostV1MigrationBooksValidateResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: PostV1MigrationBooksValidateResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: PostV1MigrationBooksValidateResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: PostV1MigrationBooksValidateResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<PostV1MigrationBooksValidateResponseOpeningBalances>.value(PostV1MigrationBooksValidateResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: "date",
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: PostV1MigrationBooksValidateResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: PostV1MigrationBooksValidateResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: PostV1MigrationBooksValidateResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: PostV1MigrationBooksValidateResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: PostV1MigrationBooksValidateResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                PostV1MigrationBooksValidateResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.migration.checkAHistoricalBooksPackageWithoutWritingAnything(
            request: .init(cutoverDate: "cutoverDate"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func checkAHistoricalBooksPackageWithoutWritingAnything2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "cutoverDate",
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
                    "date": "date",
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
        let expectedResponse = PostV1MigrationBooksValidateResponse(
            dryRun: true,
            cutoverDate: "cutoverDate",
            accounts: PostV1MigrationBooksValidateResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: PostV1MigrationBooksValidateResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: PostV1MigrationBooksValidateResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: PostV1MigrationBooksValidateResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<PostV1MigrationBooksValidateResponseOpeningBalances>.value(PostV1MigrationBooksValidateResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: "date",
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: PostV1MigrationBooksValidateResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: PostV1MigrationBooksValidateResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: PostV1MigrationBooksValidateResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: PostV1MigrationBooksValidateResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: PostV1MigrationBooksValidateResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                PostV1MigrationBooksValidateResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                ),
                PostV1MigrationBooksValidateResponseNumberSeriesItem(
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
        let response = try await client.migration.checkAHistoricalBooksPackageWithoutWritingAnything(
            request: .init(cutoverDate: "cutoverDate"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importHistoricalBooksFromAPreviousAccountingSystem1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "cutoverDate",
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
                    "date": "date",
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
        let expectedResponse = PostV1MigrationBooksImportResponse(
            dryRun: true,
            cutoverDate: "cutoverDate",
            accounts: PostV1MigrationBooksImportResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: PostV1MigrationBooksImportResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: PostV1MigrationBooksImportResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: PostV1MigrationBooksImportResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<PostV1MigrationBooksImportResponseOpeningBalances>.value(PostV1MigrationBooksImportResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: "date",
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: PostV1MigrationBooksImportResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: PostV1MigrationBooksImportResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: PostV1MigrationBooksImportResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: PostV1MigrationBooksImportResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: PostV1MigrationBooksImportResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                PostV1MigrationBooksImportResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.migration.importHistoricalBooksFromAPreviousAccountingSystem(
            request: .init(cutoverDate: "cutoverDate"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func importHistoricalBooksFromAPreviousAccountingSystem2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "dryRun": true,
                  "cutoverDate": "cutoverDate",
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
                    "date": "date",
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
        let expectedResponse = PostV1MigrationBooksImportResponse(
            dryRun: true,
            cutoverDate: "cutoverDate",
            accounts: PostV1MigrationBooksImportResponseAccounts(
                created: 1000000,
                existing: 1000000
            ),
            partners: PostV1MigrationBooksImportResponsePartners(
                created: 1000000,
                existing: 1000000
            ),
            items: PostV1MigrationBooksImportResponseItems(
                created: 1000000,
                existing: 1000000
            ),
            assetGroups: PostV1MigrationBooksImportResponseAssetGroups(
                created: 1000000,
                existing: 1000000
            ),
            openingBalances: Nullable<PostV1MigrationBooksImportResponseOpeningBalances>.value(PostV1MigrationBooksImportResponseOpeningBalances(
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                date: "date",
                entries: 1000000,
                debitTotal: "debitTotal",
                creditTotal: "creditTotal",
                balancingAmount: "balancingAmount"
            )),
            journal: PostV1MigrationBooksImportResponseJournal(
                transactions: 1000000,
                entries: 1000000
            ),
            openReceivables: PostV1MigrationBooksImportResponseOpenReceivables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            openPayables: PostV1MigrationBooksImportResponseOpenPayables(
                created: 1000000,
                outstandingTotal: "outstandingTotal"
            ),
            fixedAssets: PostV1MigrationBooksImportResponseFixedAssets(
                created: 1000000,
                costTotal: "costTotal",
                accumulatedDepreciationTotal: "accumulatedDepreciationTotal"
            ),
            stock: PostV1MigrationBooksImportResponseStock(
                movements: 1000000,
                costTotal: "costTotal"
            ),
            numberSeries: [
                PostV1MigrationBooksImportResponseNumberSeriesItem(
                    prefix: "prefix",
                    year: 1000000,
                    nextNumber: 1000000
                ),
                PostV1MigrationBooksImportResponseNumberSeriesItem(
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
        let response = try await client.migration.importHistoricalBooksFromAPreviousAccountingSystem(
            request: .init(cutoverDate: "cutoverDate"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
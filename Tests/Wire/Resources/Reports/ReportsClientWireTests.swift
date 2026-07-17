import Foundation
import Testing
import Api

@Suite("ReportsClient Wire Tests") struct ReportsClientWireTests {
    @Test func postV1ReportsTrialBalance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "accountId": "accountId",
                      "code": "code",
                      "name": "name",
                      "type": "asset",
                      "opening": "opening",
                      "debit": "debit",
                      "credit": "credit",
                      "closing": "closing"
                    }
                  ],
                  "totals": {
                    "debit": "debit",
                    "credit": "credit"
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
        let expectedResponse = PostV1ReportsTrialBalanceResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsTrialBalanceResponseRowsItem(
                    accountId: "accountId",
                    code: "code",
                    name: "name",
                    type: .asset,
                    opening: "opening",
                    debit: "debit",
                    credit: "credit",
                    closing: "closing"
                )
            ],
            totals: PostV1ReportsTrialBalanceResponseTotals(
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.reports.postV1ReportsTrialBalance(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsTrialBalance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "accountId": "x",
                      "code": "code",
                      "name": "name",
                      "type": "asset",
                      "opening": "opening",
                      "debit": "debit",
                      "credit": "credit",
                      "closing": "closing"
                    },
                    {
                      "accountId": "x",
                      "code": "code",
                      "name": "name",
                      "type": "asset",
                      "opening": "opening",
                      "debit": "debit",
                      "credit": "credit",
                      "closing": "closing"
                    }
                  ],
                  "totals": {
                    "debit": "debit",
                    "credit": "credit"
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
        let expectedResponse = PostV1ReportsTrialBalanceResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsTrialBalanceResponseRowsItem(
                    accountId: "x",
                    code: "code",
                    name: "name",
                    type: .asset,
                    opening: "opening",
                    debit: "debit",
                    credit: "credit",
                    closing: "closing"
                ),
                PostV1ReportsTrialBalanceResponseRowsItem(
                    accountId: "x",
                    code: "code",
                    name: "name",
                    type: .asset,
                    opening: "opening",
                    debit: "debit",
                    credit: "credit",
                    closing: "closing"
                )
            ],
            totals: PostV1ReportsTrialBalanceResponseTotals(
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.reports.postV1ReportsTrialBalance(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsSizeCategory1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "criteria": {
                    "totalAssets": 1.1,
                    "netTurnover": 1.1,
                    "avgEmployees": 1000000
                  },
                  "category": "micro",
                  "thresholds": {
                    "key": {
                      "totalAssets": 1.1,
                      "netTurnover": 1.1,
                      "employees": 1.1
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
        let expectedResponse = PostV1ReportsSizeCategoryResponse(
            year: 1000000,
            criteria: PostV1ReportsSizeCategoryResponseCriteria(
                totalAssets: 1.1,
                netTurnover: 1.1,
                avgEmployees: 1000000
            ),
            category: .micro,
            thresholds: [
                "key": PostV1ReportsSizeCategoryResponseThresholdsValue(
                    totalAssets: 1.1,
                    netTurnover: 1.1,
                    employees: 1.1
                )
            ]
        )
        let response = try await client.reports.postV1ReportsSizeCategory(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsSizeCategory2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "criteria": {
                    "totalAssets": 1.1,
                    "netTurnover": 1.1,
                    "avgEmployees": 1000000
                  },
                  "category": "micro",
                  "thresholds": {
                    "thresholds": {
                      "totalAssets": 1.1,
                      "netTurnover": 1.1,
                      "employees": 1.1
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
        let expectedResponse = PostV1ReportsSizeCategoryResponse(
            year: 1000000,
            criteria: PostV1ReportsSizeCategoryResponseCriteria(
                totalAssets: 1.1,
                netTurnover: 1.1,
                avgEmployees: 1000000
            ),
            category: .micro,
            thresholds: [
                "thresholds": PostV1ReportsSizeCategoryResponseThresholdsValue(
                    totalAssets: 1.1,
                    netTurnover: 1.1,
                    employees: 1.1
                )
            ]
        )
        let response = try await client.reports.postV1ReportsSizeCategory(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsFinancialStatements1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "category": "micro",
                  "layout": "layout",
                  "requiredStatements": [
                    "requiredStatements"
                  ],
                  "asOf": "asOf",
                  "balanceSheet": {
                    "nonCurrentAssets": "nonCurrentAssets",
                    "currentAssets": "currentAssets",
                    "totalAssets": "totalAssets",
                    "equity": "equity",
                    "ofWhichResult": "ofWhichResult",
                    "liabilities": "liabilities",
                    "totalEquityAndLiabilities": "totalEquityAndLiabilities",
                    "balanced": true
                  },
                  "profitLoss": {
                    "fromDate": "fromDate",
                    "toDate": "toDate",
                    "revenue": "revenue",
                    "expenses": "expenses",
                    "netResult": "netResult"
                  },
                  "balanceSheetDetail": {
                    "nonCurrentAssets": {
                      "intangible": "intangible",
                      "tangible": "tangible",
                      "financial": "financial",
                      "other": "other",
                      "total": "total"
                    },
                    "currentAssets": {
                      "inventories": "inventories",
                      "receivables": "receivables",
                      "otherCurrent": "otherCurrent",
                      "cash": "cash",
                      "total": "total"
                    },
                    "equity": {
                      "capital": "capital",
                      "reserves": "reserves",
                      "retainedEarnings": "retainedEarnings",
                      "otherEquity": "otherEquity",
                      "periodResult": "periodResult",
                      "total": "total"
                    },
                    "liabilities": {
                      "nonCurrent": "nonCurrent",
                      "current": "current",
                      "other": "other",
                      "total": "total"
                    }
                  },
                  "profitLossDetail": {
                    "salesRevenue": "salesRevenue",
                    "costOfSales": "costOfSales",
                    "grossProfit": "grossProfit",
                    "sellingExpenses": "sellingExpenses",
                    "adminExpenses": "adminExpenses",
                    "operatingProfit": "operatingProfit",
                    "otherActivityResult": "otherActivityResult",
                    "financialActivityResult": "financialActivityResult",
                    "profitBeforeTax": "profitBeforeTax",
                    "incomeTax": "incomeTax",
                    "netProfit": "netProfit"
                  },
                  "equityChanges": [
                    {
                      "code": "code",
                      "name": "name",
                      "opening": "opening",
                      "increase": "increase",
                      "decrease": "decrease",
                      "closing": "closing"
                    }
                  ],
                  "cashFlow": {
                    "openingCash": "openingCash",
                    "operating": "operating",
                    "investing": "investing",
                    "financing": "financing",
                    "netChange": "netChange",
                    "closingCash": "closingCash"
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
        let expectedResponse = PostV1ReportsFinancialStatementsResponse(
            category: .micro,
            layout: "layout",
            requiredStatements: [
                "requiredStatements"
            ],
            asOf: "asOf",
            balanceSheet: PostV1ReportsFinancialStatementsResponseBalanceSheet(
                nonCurrentAssets: "nonCurrentAssets",
                currentAssets: "currentAssets",
                totalAssets: "totalAssets",
                equity: "equity",
                ofWhichResult: "ofWhichResult",
                liabilities: "liabilities",
                totalEquityAndLiabilities: "totalEquityAndLiabilities",
                balanced: true
            ),
            profitLoss: PostV1ReportsFinancialStatementsResponseProfitLoss(
                fromDate: "fromDate",
                toDate: "toDate",
                revenue: "revenue",
                expenses: "expenses",
                netResult: "netResult"
            ),
            balanceSheetDetail: Optional(PostV1ReportsFinancialStatementsResponseBalanceSheetDetail(
                nonCurrentAssets: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailNonCurrentAssets(
                    intangible: "intangible",
                    tangible: "tangible",
                    financial: "financial",
                    other: "other",
                    total: "total"
                ),
                currentAssets: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailCurrentAssets(
                    inventories: "inventories",
                    receivables: "receivables",
                    otherCurrent: "otherCurrent",
                    cash: "cash",
                    total: "total"
                ),
                equity: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailEquity(
                    capital: "capital",
                    reserves: "reserves",
                    retainedEarnings: "retainedEarnings",
                    otherEquity: "otherEquity",
                    periodResult: "periodResult",
                    total: "total"
                ),
                liabilities: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailLiabilities(
                    nonCurrent: "nonCurrent",
                    current: "current",
                    other: "other",
                    total: "total"
                )
            )),
            profitLossDetail: Optional(PostV1ReportsFinancialStatementsResponseProfitLossDetail(
                salesRevenue: "salesRevenue",
                costOfSales: "costOfSales",
                grossProfit: "grossProfit",
                sellingExpenses: "sellingExpenses",
                adminExpenses: "adminExpenses",
                operatingProfit: "operatingProfit",
                otherActivityResult: "otherActivityResult",
                financialActivityResult: "financialActivityResult",
                profitBeforeTax: "profitBeforeTax",
                incomeTax: "incomeTax",
                netProfit: "netProfit"
            )),
            equityChanges: Optional([
                PostV1ReportsFinancialStatementsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                )
            ]),
            cashFlow: Optional(PostV1ReportsFinancialStatementsResponseCashFlow(
                openingCash: "openingCash",
                operating: "operating",
                investing: "investing",
                financing: "financing",
                netChange: "netChange",
                closingCash: "closingCash"
            ))
        )
        let response = try await client.reports.postV1ReportsFinancialStatements(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsFinancialStatements2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "category": "micro",
                  "layout": "layout",
                  "requiredStatements": [
                    "requiredStatements",
                    "requiredStatements"
                  ],
                  "asOf": "asOf",
                  "balanceSheet": {
                    "nonCurrentAssets": "nonCurrentAssets",
                    "currentAssets": "currentAssets",
                    "totalAssets": "totalAssets",
                    "equity": "equity",
                    "ofWhichResult": "ofWhichResult",
                    "liabilities": "liabilities",
                    "totalEquityAndLiabilities": "totalEquityAndLiabilities",
                    "balanced": true
                  },
                  "profitLoss": {
                    "fromDate": "fromDate",
                    "toDate": "toDate",
                    "revenue": "revenue",
                    "expenses": "expenses",
                    "netResult": "netResult"
                  },
                  "balanceSheetDetail": {
                    "nonCurrentAssets": {
                      "intangible": "intangible",
                      "tangible": "tangible",
                      "financial": "financial",
                      "other": "other",
                      "total": "total"
                    },
                    "currentAssets": {
                      "inventories": "inventories",
                      "receivables": "receivables",
                      "otherCurrent": "otherCurrent",
                      "cash": "cash",
                      "total": "total"
                    },
                    "equity": {
                      "capital": "capital",
                      "reserves": "reserves",
                      "retainedEarnings": "retainedEarnings",
                      "otherEquity": "otherEquity",
                      "periodResult": "periodResult",
                      "total": "total"
                    },
                    "liabilities": {
                      "nonCurrent": "nonCurrent",
                      "current": "current",
                      "other": "other",
                      "total": "total"
                    }
                  },
                  "profitLossDetail": {
                    "salesRevenue": "salesRevenue",
                    "costOfSales": "costOfSales",
                    "grossProfit": "grossProfit",
                    "sellingExpenses": "sellingExpenses",
                    "adminExpenses": "adminExpenses",
                    "operatingProfit": "operatingProfit",
                    "otherActivityResult": "otherActivityResult",
                    "financialActivityResult": "financialActivityResult",
                    "profitBeforeTax": "profitBeforeTax",
                    "incomeTax": "incomeTax",
                    "netProfit": "netProfit"
                  },
                  "equityChanges": [
                    {
                      "code": "code",
                      "name": "name",
                      "opening": "opening",
                      "increase": "increase",
                      "decrease": "decrease",
                      "closing": "closing"
                    },
                    {
                      "code": "code",
                      "name": "name",
                      "opening": "opening",
                      "increase": "increase",
                      "decrease": "decrease",
                      "closing": "closing"
                    }
                  ],
                  "cashFlow": {
                    "openingCash": "openingCash",
                    "operating": "operating",
                    "investing": "investing",
                    "financing": "financing",
                    "netChange": "netChange",
                    "closingCash": "closingCash"
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
        let expectedResponse = PostV1ReportsFinancialStatementsResponse(
            category: .micro,
            layout: "layout",
            requiredStatements: [
                "requiredStatements",
                "requiredStatements"
            ],
            asOf: "asOf",
            balanceSheet: PostV1ReportsFinancialStatementsResponseBalanceSheet(
                nonCurrentAssets: "nonCurrentAssets",
                currentAssets: "currentAssets",
                totalAssets: "totalAssets",
                equity: "equity",
                ofWhichResult: "ofWhichResult",
                liabilities: "liabilities",
                totalEquityAndLiabilities: "totalEquityAndLiabilities",
                balanced: true
            ),
            profitLoss: PostV1ReportsFinancialStatementsResponseProfitLoss(
                fromDate: "fromDate",
                toDate: "toDate",
                revenue: "revenue",
                expenses: "expenses",
                netResult: "netResult"
            ),
            balanceSheetDetail: Optional(PostV1ReportsFinancialStatementsResponseBalanceSheetDetail(
                nonCurrentAssets: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailNonCurrentAssets(
                    intangible: "intangible",
                    tangible: "tangible",
                    financial: "financial",
                    other: "other",
                    total: "total"
                ),
                currentAssets: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailCurrentAssets(
                    inventories: "inventories",
                    receivables: "receivables",
                    otherCurrent: "otherCurrent",
                    cash: "cash",
                    total: "total"
                ),
                equity: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailEquity(
                    capital: "capital",
                    reserves: "reserves",
                    retainedEarnings: "retainedEarnings",
                    otherEquity: "otherEquity",
                    periodResult: "periodResult",
                    total: "total"
                ),
                liabilities: PostV1ReportsFinancialStatementsResponseBalanceSheetDetailLiabilities(
                    nonCurrent: "nonCurrent",
                    current: "current",
                    other: "other",
                    total: "total"
                )
            )),
            profitLossDetail: Optional(PostV1ReportsFinancialStatementsResponseProfitLossDetail(
                salesRevenue: "salesRevenue",
                costOfSales: "costOfSales",
                grossProfit: "grossProfit",
                sellingExpenses: "sellingExpenses",
                adminExpenses: "adminExpenses",
                operatingProfit: "operatingProfit",
                otherActivityResult: "otherActivityResult",
                financialActivityResult: "financialActivityResult",
                profitBeforeTax: "profitBeforeTax",
                incomeTax: "incomeTax",
                netProfit: "netProfit"
            )),
            equityChanges: Optional([
                PostV1ReportsFinancialStatementsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                ),
                PostV1ReportsFinancialStatementsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                )
            ]),
            cashFlow: Optional(PostV1ReportsFinancialStatementsResponseCashFlow(
                openingCash: "openingCash",
                operating: "operating",
                investing: "investing",
                financing: "financing",
                netChange: "netChange",
                closingCash: "closingCash"
            ))
        )
        let response = try await client.reports.postV1ReportsFinancialStatements(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsGeneralJournal1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "total": 1000000,
                  "page": 1000000,
                  "pageSize": 1000000,
                  "rows": [
                    {
                      "id": "id",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "entries": [
                        {
                          "accountCode": "accountCode",
                          "accountName": "accountName",
                          "debit": "debit",
                          "credit": "credit"
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
        let expectedResponse = PostV1ReportsGeneralJournalResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                PostV1ReportsGeneralJournalResponseRowsItem(
                    id: "id",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    entries: [
                        PostV1ReportsGeneralJournalResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                )
            ]
        )
        let response = try await client.reports.postV1ReportsGeneralJournal(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsGeneralJournal2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "total": 1000000,
                  "page": 1000000,
                  "pageSize": 1000000,
                  "rows": [
                    {
                      "id": "x",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "entries": [
                        {
                          "accountCode": "accountCode",
                          "accountName": "accountName",
                          "debit": "debit",
                          "credit": "credit"
                        },
                        {
                          "accountCode": "accountCode",
                          "accountName": "accountName",
                          "debit": "debit",
                          "credit": "credit"
                        }
                      ]
                    },
                    {
                      "id": "x",
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "entries": [
                        {
                          "accountCode": "accountCode",
                          "accountName": "accountName",
                          "debit": "debit",
                          "credit": "credit"
                        },
                        {
                          "accountCode": "accountCode",
                          "accountName": "accountName",
                          "debit": "debit",
                          "credit": "credit"
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
        let expectedResponse = PostV1ReportsGeneralJournalResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                PostV1ReportsGeneralJournalResponseRowsItem(
                    id: "x",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    entries: [
                        PostV1ReportsGeneralJournalResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        ),
                        PostV1ReportsGeneralJournalResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                ),
                PostV1ReportsGeneralJournalResponseRowsItem(
                    id: "x",
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    entries: [
                        PostV1ReportsGeneralJournalResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        ),
                        PostV1ReportsGeneralJournalResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                )
            ]
        )
        let response = try await client.reports.postV1ReportsGeneralJournal(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsGlDetail1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "account": {
                    "code": "code",
                    "name": "name",
                    "type": "type"
                  },
                  "opening": "opening",
                  "closing": "closing",
                  "rows": [
                    {
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "documentId",
                      "journalTransactionId": "journalTransactionId",
                      "debit": "debit",
                      "credit": "credit",
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
        let expectedResponse = PostV1ReportsGlDetailResponse(
            account: PostV1ReportsGlDetailResponseAccount(
                code: "code",
                name: "name",
                type: "type"
            ),
            opening: "opening",
            closing: "closing",
            rows: [
                PostV1ReportsGlDetailResponseRowsItem(
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    journalTransactionId: "journalTransactionId",
                    debit: "debit",
                    credit: "credit",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsGlDetail(
            request: .init(
                accountCode: "accountCode",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsGlDetail2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "account": {
                    "code": "code",
                    "name": "name",
                    "type": "type"
                  },
                  "opening": "opening",
                  "closing": "closing",
                  "rows": [
                    {
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "journalTransactionId": "x",
                      "debit": "debit",
                      "credit": "credit",
                      "balance": "balance"
                    },
                    {
                      "date": "date",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "journalTransactionId": "x",
                      "debit": "debit",
                      "credit": "credit",
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
        let expectedResponse = PostV1ReportsGlDetailResponse(
            account: PostV1ReportsGlDetailResponseAccount(
                code: "code",
                name: "name",
                type: "type"
            ),
            opening: "opening",
            closing: "closing",
            rows: [
                PostV1ReportsGlDetailResponseRowsItem(
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    journalTransactionId: "x",
                    debit: "debit",
                    credit: "credit",
                    balance: "balance"
                ),
                PostV1ReportsGlDetailResponseRowsItem(
                    date: "date",
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    journalTransactionId: "x",
                    debit: "debit",
                    credit: "credit",
                    balance: "balance"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsGlDetail(
            request: .init(
                accountCode: "x",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsPartnerBalances1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "receivable": "receivable",
                      "payable": "payable",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsPartnerBalancesResponse(
            rows: [
                PostV1ReportsPartnerBalancesResponseRowsItem(
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsPartnerBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsPartnerBalances2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "receivable": "receivable",
                      "payable": "payable",
                      "net": "net"
                    },
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "receivable": "receivable",
                      "payable": "payable",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsPartnerBalancesResponse(
            rows: [
                PostV1ReportsPartnerBalancesResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                ),
                PostV1ReportsPartnerBalancesResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsPartnerBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsDebtAging1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "side": "side",
                  "rows": [
                    {
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "current": "current",
                      "d1to30": "d1to30",
                      "d31to60": "d31to60",
                      "d61to90": "d61to90",
                      "over90": "over90",
                      "total": "total"
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
        let expectedResponse = PostV1ReportsDebtAgingResponse(
            asOf: "asOf",
            side: "side",
            rows: [
                PostV1ReportsDebtAgingResponseRowsItem(
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    current: "current",
                    d1To30: "d1to30",
                    d31To60: "d31to60",
                    d61To90: "d61to90",
                    over90: "over90",
                    total: "total"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsDebtAging(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsDebtAging2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "side": "side",
                  "rows": [
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "current": "current",
                      "d1to30": "d1to30",
                      "d31to60": "d31to60",
                      "d61to90": "d61to90",
                      "over90": "over90",
                      "total": "total"
                    },
                    {
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "current": "current",
                      "d1to30": "d1to30",
                      "d31to60": "d31to60",
                      "d61to90": "d61to90",
                      "over90": "over90",
                      "total": "total"
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
        let expectedResponse = PostV1ReportsDebtAgingResponse(
            asOf: "asOf",
            side: "side",
            rows: [
                PostV1ReportsDebtAgingResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    current: "current",
                    d1To30: "d1to30",
                    d31To60: "d31to60",
                    d61To90: "d61to90",
                    over90: "over90",
                    total: "total"
                ),
                PostV1ReportsDebtAgingResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    current: "current",
                    d1To30: "d1to30",
                    d31To60: "d31to60",
                    d61To90: "d61to90",
                    over90: "over90",
                    total: "total"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsDebtAging(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsMonthlySummary1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "year": 1000000,
                      "month": 1000000,
                      "receivables": "receivables",
                      "payables": "payables",
                      "revenue": "revenue",
                      "expenses": "expenses",
                      "netResult": "netResult"
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
        let expectedResponse = PostV1ReportsMonthlySummaryResponse(
            rows: [
                PostV1ReportsMonthlySummaryResponseRowsItem(
                    year: 1000000,
                    month: 1000000,
                    receivables: "receivables",
                    payables: "payables",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsMonthlySummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsMonthlySummary2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "year": 1000000,
                      "month": 1000000,
                      "receivables": "receivables",
                      "payables": "payables",
                      "revenue": "revenue",
                      "expenses": "expenses",
                      "netResult": "netResult"
                    },
                    {
                      "year": 1000000,
                      "month": 1000000,
                      "receivables": "receivables",
                      "payables": "payables",
                      "revenue": "revenue",
                      "expenses": "expenses",
                      "netResult": "netResult"
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
        let expectedResponse = PostV1ReportsMonthlySummaryResponse(
            rows: [
                PostV1ReportsMonthlySummaryResponseRowsItem(
                    year: 1000000,
                    month: 1000000,
                    receivables: "receivables",
                    payables: "payables",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                PostV1ReportsMonthlySummaryResponseRowsItem(
                    year: 1000000,
                    month: 1000000,
                    receivables: "receivables",
                    payables: "payables",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsMonthlySummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockBalance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "rows": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "warehouseId": "warehouseId",
                      "quantity": "quantity",
                      "value": "value"
                    }
                  ],
                  "totalValue": "totalValue"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsStockBalanceResponse(
            asOf: "asOf",
            rows: [
                PostV1ReportsStockBalanceResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    warehouseId: "warehouseId",
                    quantity: "quantity",
                    value: "value"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.postV1ReportsStockBalance(
            request: .init(asOf: "asOf"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockBalance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "rows": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "value": "value"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "quantity": "quantity",
                      "value": "value"
                    }
                  ],
                  "totalValue": "totalValue"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsStockBalanceResponse(
            asOf: "asOf",
            rows: [
                PostV1ReportsStockBalanceResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                ),
                PostV1ReportsStockBalanceResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.postV1ReportsStockBalance(
            request: .init(asOf: "asOf"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockMovement1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "openingQty": "openingQty",
                      "openingValue": "openingValue",
                      "inQty": "inQty",
                      "inValue": "inValue",
                      "outQty": "outQty",
                      "outValue": "outValue",
                      "closingQty": "closingQty",
                      "closingValue": "closingValue"
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
        let expectedResponse = PostV1ReportsStockMovementResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsStockMovementResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    openingQty: "openingQty",
                    openingValue: "openingValue",
                    inQty: "inQty",
                    inValue: "inValue",
                    outQty: "outQty",
                    outValue: "outValue",
                    closingQty: "closingQty",
                    closingValue: "closingValue"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsStockMovement(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockMovement2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "openingQty": "openingQty",
                      "openingValue": "openingValue",
                      "inQty": "inQty",
                      "inValue": "inValue",
                      "outQty": "outQty",
                      "outValue": "outValue",
                      "closingQty": "closingQty",
                      "closingValue": "closingValue"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "openingQty": "openingQty",
                      "openingValue": "openingValue",
                      "inQty": "inQty",
                      "inValue": "inValue",
                      "outQty": "outQty",
                      "outValue": "outValue",
                      "closingQty": "closingQty",
                      "closingValue": "closingValue"
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
        let expectedResponse = PostV1ReportsStockMovementResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsStockMovementResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    openingQty: "openingQty",
                    openingValue: "openingValue",
                    inQty: "inQty",
                    inValue: "inValue",
                    outQty: "outQty",
                    outValue: "outValue",
                    closingQty: "closingQty",
                    closingValue: "closingValue"
                ),
                PostV1ReportsStockMovementResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    openingQty: "openingQty",
                    openingValue: "openingValue",
                    inQty: "inQty",
                    inValue: "inValue",
                    outQty: "outQty",
                    outValue: "outValue",
                    closingQty: "closingQty",
                    closingValue: "closingValue"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsStockMovement(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsVatSummary1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross"
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
        let expectedResponse = PostV1ReportsVatSummaryResponse(
            side: "side",
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsVatSummaryResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsVatSummaryResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.postV1ReportsVatSummary(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsVatSummary2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "documents": 1000000
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross"
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
        let expectedResponse = PostV1ReportsVatSummaryResponse(
            side: "side",
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsVatSummaryResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                ),
                PostV1ReportsVatSummaryResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsVatSummaryResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.postV1ReportsVatSummary(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCashFlow1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "openingCash": "openingCash",
                  "closingCash": "closingCash",
                  "netChange": "netChange",
                  "operating": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "investing": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "financing": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "balanced": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsCashFlowResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            openingCash: "openingCash",
            closingCash: "closingCash",
            netChange: "netChange",
            operating: PostV1ReportsCashFlowResponseOperating(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            investing: PostV1ReportsCashFlowResponseInvesting(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            financing: PostV1ReportsCashFlowResponseFinancing(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            balanced: true
        )
        let response = try await client.reports.postV1ReportsCashFlow(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCashFlow2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "openingCash": "openingCash",
                  "closingCash": "closingCash",
                  "netChange": "netChange",
                  "operating": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      },
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "investing": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      },
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "financing": {
                    "inflow": "inflow",
                    "outflow": "outflow",
                    "net": "net",
                    "rows": [
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      },
                      {
                        "code": "code",
                        "name": "name",
                        "inflow": "inflow",
                        "outflow": "outflow"
                      }
                    ]
                  },
                  "balanced": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsCashFlowResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            openingCash: "openingCash",
            closingCash: "closingCash",
            netChange: "netChange",
            operating: PostV1ReportsCashFlowResponseOperating(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    PostV1ReportsCashFlowResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            investing: PostV1ReportsCashFlowResponseInvesting(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    PostV1ReportsCashFlowResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            financing: PostV1ReportsCashFlowResponseFinancing(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    PostV1ReportsCashFlowResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    PostV1ReportsCashFlowResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            balanced: true
        )
        let response = try await client.reports.postV1ReportsCashFlow(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockAging1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "rows": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "warehouseId": "warehouseId",
                      "d0to30Qty": "d0to30Qty",
                      "d0to30Value": "d0to30Value",
                      "d31to60Qty": "d31to60Qty",
                      "d31to60Value": "d31to60Value",
                      "d61to90Qty": "d61to90Qty",
                      "d61to90Value": "d61to90Value",
                      "over90Qty": "over90Qty",
                      "over90Value": "over90Value",
                      "totalQty": "totalQty",
                      "totalValue": "totalValue"
                    }
                  ],
                  "totalValue": "totalValue"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsStockAgingResponse(
            asOf: "asOf",
            rows: [
                PostV1ReportsStockAgingResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    warehouseId: "warehouseId",
                    d0To30Qty: "d0to30Qty",
                    d0To30Value: "d0to30Value",
                    d31To60Qty: "d31to60Qty",
                    d31To60Value: "d31to60Value",
                    d61To90Qty: "d61to90Qty",
                    d61To90Value: "d61to90Value",
                    over90Qty: "over90Qty",
                    over90Value: "over90Value",
                    totalQty: "totalQty",
                    totalValue: "totalValue"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.postV1ReportsStockAging(
            request: .init(asOf: "asOf"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockAging2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOf": "asOf",
                  "rows": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "d0to30Qty": "d0to30Qty",
                      "d0to30Value": "d0to30Value",
                      "d31to60Qty": "d31to60Qty",
                      "d31to60Value": "d31to60Value",
                      "d61to90Qty": "d61to90Qty",
                      "d61to90Value": "d61to90Value",
                      "over90Qty": "over90Qty",
                      "over90Value": "over90Value",
                      "totalQty": "totalQty",
                      "totalValue": "totalValue"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "d0to30Qty": "d0to30Qty",
                      "d0to30Value": "d0to30Value",
                      "d31to60Qty": "d31to60Qty",
                      "d31to60Value": "d31to60Value",
                      "d61to90Qty": "d61to90Qty",
                      "d61to90Value": "d61to90Value",
                      "over90Qty": "over90Qty",
                      "over90Value": "over90Value",
                      "totalQty": "totalQty",
                      "totalValue": "totalValue"
                    }
                  ],
                  "totalValue": "totalValue"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsStockAgingResponse(
            asOf: "asOf",
            rows: [
                PostV1ReportsStockAgingResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    d0To30Qty: "d0to30Qty",
                    d0To30Value: "d0to30Value",
                    d31To60Qty: "d31to60Qty",
                    d31To60Value: "d31to60Value",
                    d61To90Qty: "d61to90Qty",
                    d61To90Value: "d61to90Value",
                    over90Qty: "over90Qty",
                    over90Value: "over90Value",
                    totalQty: "totalQty",
                    totalValue: "totalValue"
                ),
                PostV1ReportsStockAgingResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    d0To30Qty: "d0to30Qty",
                    d0To30Value: "d0to30Value",
                    d31To60Qty: "d31to60Qty",
                    d31To60Value: "d31to60Value",
                    d61To90Qty: "d61to90Qty",
                    d61To90Value: "d61to90Value",
                    over90Qty: "over90Qty",
                    over90Value: "over90Value",
                    totalQty: "totalQty",
                    totalValue: "totalValue"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.postV1ReportsStockAging(
            request: .init(asOf: "asOf"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockShortage1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "itemId",
                      "itemName": "itemName",
                      "warehouseId": "warehouseId",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "shortage": "shortage"
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
        let expectedResponse = PostV1ReportsStockShortageResponse(
            rows: [
                PostV1ReportsStockShortageResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    warehouseId: "warehouseId",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsStockShortage(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsStockShortage2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "shortage": "shortage"
                    },
                    {
                      "itemId": "x",
                      "itemName": "itemName",
                      "warehouseId": "x",
                      "onHand": "onHand",
                      "reserved": "reserved",
                      "shortage": "shortage"
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
        let expectedResponse = PostV1ReportsStockShortageResponse(
            rows: [
                PostV1ReportsStockShortageResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                ),
                PostV1ReportsStockShortageResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsStockShortage(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsEuPurchases1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat"
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
        let expectedResponse = PostV1ReportsEuPurchasesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsEuPurchasesResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsEuPurchasesResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.postV1ReportsEuPurchases(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsEuPurchases2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat"
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
        let expectedResponse = PostV1ReportsEuPurchasesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsEuPurchasesResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                ),
                PostV1ReportsEuPurchasesResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsEuPurchasesResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.postV1ReportsEuPurchases(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsVatDetail1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "documentId": "documentId",
                      "documentNumber": "documentNumber",
                      "date": "date",
                      "partnerName": "partnerName",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross"
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross"
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
        let expectedResponse = PostV1ReportsVatDetailResponse(
            side: "side",
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsVatDetailResponseRowsItem(
                    documentId: "documentId",
                    documentNumber: "documentNumber",
                    date: Nullable<String>.value("date"),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                )
            ],
            totals: PostV1ReportsVatDetailResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.postV1ReportsVatDetail(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsVatDetail2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "documentId": "x",
                      "documentNumber": "documentNumber",
                      "date": "date",
                      "partnerName": "partnerName",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross"
                    },
                    {
                      "documentId": "x",
                      "documentNumber": "documentNumber",
                      "date": "date",
                      "partnerName": "partnerName",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross"
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross"
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
        let expectedResponse = PostV1ReportsVatDetailResponse(
            side: "side",
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsVatDetailResponseRowsItem(
                    documentId: "x",
                    documentNumber: "documentNumber",
                    date: Nullable<String>.value("date"),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                ),
                PostV1ReportsVatDetailResponseRowsItem(
                    documentId: "x",
                    documentNumber: "documentNumber",
                    date: Nullable<String>.value("date"),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                )
            ],
            totals: PostV1ReportsVatDetailResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.postV1ReportsVatDetail(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsPosSales1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "reportId": "reportId",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "cash": "cash",
                      "card": "card",
                      "cogs": "cogs"
                    }
                  ],
                  "byRate": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat"
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross",
                    "cash": "cash",
                    "card": "card",
                    "cogs": "cogs"
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
        let expectedResponse = PostV1ReportsPosSalesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsPosSalesResponseRowsItem(
                    reportId: "reportId",
                    reportNumber: "reportNumber",
                    date: "date",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                )
            ],
            byRate: [
                PostV1ReportsPosSalesResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                )
            ],
            totals: PostV1ReportsPosSalesResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross",
                cash: "cash",
                card: "card",
                cogs: "cogs"
            )
        )
        let response = try await client.reports.postV1ReportsPosSales(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsPosSales2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "reportId": "x",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "cash": "cash",
                      "card": "card",
                      "cogs": "cogs"
                    },
                    {
                      "reportId": "x",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross",
                      "cash": "cash",
                      "card": "card",
                      "cogs": "cogs"
                    }
                  ],
                  "byRate": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat"
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat"
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat",
                    "gross": "gross",
                    "cash": "cash",
                    "card": "card",
                    "cogs": "cogs"
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
        let expectedResponse = PostV1ReportsPosSalesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsPosSalesResponseRowsItem(
                    reportId: "x",
                    reportNumber: "reportNumber",
                    date: "date",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                ),
                PostV1ReportsPosSalesResponseRowsItem(
                    reportId: "x",
                    reportNumber: "reportNumber",
                    date: "date",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                )
            ],
            byRate: [
                PostV1ReportsPosSalesResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                ),
                PostV1ReportsPosSalesResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                )
            ],
            totals: PostV1ReportsPosSalesResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross",
                cash: "cash",
                card: "card",
                cogs: "cogs"
            )
        )
        let response = try await client.reports.postV1ReportsPosSales(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsOnlineSales1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "channel": "channel",
                      "orders": 1000000,
                      "fulfilled": 1000000,
                      "cancelled": 1000000,
                      "open": 1000000,
                      "net": "net",
                      "gross": "gross"
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
        let expectedResponse = PostV1ReportsOnlineSalesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsOnlineSalesResponseRowsItem(
                    channel: "channel",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsOnlineSales(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsOnlineSales2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "channel": "channel",
                      "orders": 1000000,
                      "fulfilled": 1000000,
                      "cancelled": 1000000,
                      "open": 1000000,
                      "net": "net",
                      "gross": "gross"
                    },
                    {
                      "channel": "channel",
                      "orders": 1000000,
                      "fulfilled": 1000000,
                      "cancelled": 1000000,
                      "open": 1000000,
                      "net": "net",
                      "gross": "gross"
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
        let expectedResponse = PostV1ReportsOnlineSalesResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsOnlineSalesResponseRowsItem(
                    channel: "channel",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                ),
                PostV1ReportsOnlineSalesResponseRowsItem(
                    channel: "channel",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsOnlineSales(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsOss1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat"
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
        let expectedResponse = PostV1ReportsOssResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsOssResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsOssResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.postV1ReportsOss(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsOss2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "net": "net",
                    "vat": "vat"
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
        let expectedResponse = PostV1ReportsOssResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsOssResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                ),
                PostV1ReportsOssResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: PostV1ReportsOssResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.postV1ReportsOss(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsAdvanceReconciliation1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "closing": "closing"
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
        let expectedResponse = PostV1ReportsAdvanceReconciliationResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsAdvanceReconciliationResponseRowsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    closing: "closing"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsAdvanceReconciliation(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsAdvanceReconciliation2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "closing": "closing"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "closing": "closing"
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
        let expectedResponse = PostV1ReportsAdvanceReconciliationResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsAdvanceReconciliationResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    closing: "closing"
                ),
                PostV1ReportsAdvanceReconciliationResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    closing: "closing"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsAdvanceReconciliation(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsWriteOffActs1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "movementId": "movementId",
                      "date": "date",
                      "documentType": "documentType",
                      "itemName": "itemName",
                      "warehouseCode": "warehouseCode",
                      "quantity": "quantity",
                      "totalCost": "totalCost",
                      "notes": "notes"
                    }
                  ],
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsWriteOffActsResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsWriteOffActsResponseRowsItem(
                    movementId: "movementId",
                    date: "date",
                    documentType: "documentType",
                    itemName: "itemName",
                    warehouseCode: "warehouseCode",
                    quantity: "quantity",
                    totalCost: "totalCost",
                    notes: Nullable<String>.value("notes")
                )
            ],
            totalCost: "totalCost"
        )
        let response = try await client.reports.postV1ReportsWriteOffActs(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsWriteOffActs2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "movementId": "x",
                      "date": "date",
                      "documentType": "documentType",
                      "itemName": "itemName",
                      "warehouseCode": "warehouseCode",
                      "quantity": "quantity",
                      "totalCost": "totalCost",
                      "notes": "notes"
                    },
                    {
                      "movementId": "x",
                      "date": "date",
                      "documentType": "documentType",
                      "itemName": "itemName",
                      "warehouseCode": "warehouseCode",
                      "quantity": "quantity",
                      "totalCost": "totalCost",
                      "notes": "notes"
                    }
                  ],
                  "totalCost": "totalCost"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsWriteOffActsResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsWriteOffActsResponseRowsItem(
                    movementId: "x",
                    date: "date",
                    documentType: "documentType",
                    itemName: "itemName",
                    warehouseCode: "warehouseCode",
                    quantity: "quantity",
                    totalCost: "totalCost",
                    notes: Nullable<String>.value("notes")
                ),
                PostV1ReportsWriteOffActsResponseRowsItem(
                    movementId: "x",
                    date: "date",
                    documentType: "documentType",
                    itemName: "itemName",
                    warehouseCode: "warehouseCode",
                    quantity: "quantity",
                    totalCost: "totalCost",
                    notes: Nullable<String>.value("notes")
                )
            ],
            totalCost: "totalCost"
        )
        let response = try await client.reports.postV1ReportsWriteOffActs(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenters1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "costCenterId": "costCenterId",
                      "code": "code",
                      "name": "name",
                      "income": "income",
                      "expenses": "expenses",
                      "result": "result"
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
        let expectedResponse = PostV1ReportsCostCentersResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCentersResponseRowsItem(
                    costCenterId: "costCenterId",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenters(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenters2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "costCenterId": "x",
                      "code": "code",
                      "name": "name",
                      "income": "income",
                      "expenses": "expenses",
                      "result": "result"
                    },
                    {
                      "costCenterId": "x",
                      "code": "code",
                      "name": "name",
                      "income": "income",
                      "expenses": "expenses",
                      "result": "result"
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
        let expectedResponse = PostV1ReportsCostCentersResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCentersResponseRowsItem(
                    costCenterId: "x",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                ),
                PostV1ReportsCostCentersResponseRowsItem(
                    costCenterId: "x",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenters(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenterActivity1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "costCenter": {
                    "id": "id",
                    "code": "code",
                    "name": "name"
                  },
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "debit": "debit",
                      "credit": "credit",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsCostCenterActivityResponse(
            costCenter: PostV1ReportsCostCenterActivityResponseCostCenter(
                id: "id",
                code: "code",
                name: "name"
            ),
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCenterActivityResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenterActivity(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate",
                costCenterId: "costCenterId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenterActivity2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "costCenter": {
                    "id": "x",
                    "code": "code",
                    "name": "name"
                  },
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "debit": "debit",
                      "credit": "credit",
                      "net": "net"
                    },
                    {
                      "accountCode": "accountCode",
                      "accountName": "accountName",
                      "debit": "debit",
                      "credit": "credit",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsCostCenterActivityResponse(
            costCenter: PostV1ReportsCostCenterActivityResponseCostCenter(
                id: "x",
                code: "code",
                name: "name"
            ),
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCenterActivityResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                ),
                PostV1ReportsCostCenterActivityResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenterActivity(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate",
                costCenterId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenterItems1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "costCenterCode": "costCenterCode",
                      "costCenterName": "costCenterName",
                      "itemName": "itemName",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsCostCenterItemsResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCenterItemsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenterItems(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsCostCenterItems2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "costCenterCode": "costCenterCode",
                      "costCenterName": "costCenterName",
                      "itemName": "itemName",
                      "net": "net"
                    },
                    {
                      "costCenterCode": "costCenterCode",
                      "costCenterName": "costCenterName",
                      "itemName": "itemName",
                      "net": "net"
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
        let expectedResponse = PostV1ReportsCostCenterItemsResponse(
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1ReportsCostCenterItemsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                ),
                PostV1ReportsCostCenterItemsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.postV1ReportsCostCenterItems(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportType": "reportType",
                  "params": {
                    "key": "value"
                  },
                  "formats": [
                    "formats"
                  ],
                  "status": "queued",
                  "error": "error",
                  "outputs": [
                    {
                      "format": "format",
                      "fileId": "fileId",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    }
                  ],
                  "createdAt": "createdAt",
                  "startedAt": "startedAt",
                  "finishedAt": "finishedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsJobsCreateResponse(
            id: "id",
            reportType: "reportType",
            params: JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            ),
            formats: [
                "formats"
            ],
            status: .queued,
            error: Nullable<String>.value("error"),
            outputs: Nullable<[PostV1ReportsJobsCreateResponseOutputsItem]>.value([
                PostV1ReportsJobsCreateResponseOutputsItem(
                    format: "format",
                    fileId: "fileId",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: "createdAt",
            startedAt: Nullable<String>.value("startedAt"),
            finishedAt: Nullable<String>.value("finishedAt")
        )
        let response = try await client.reports.postV1ReportsJobsCreate(
            request: .init(reportType: "reportType"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportType": "reportType",
                  "params": {
                    "key": "value"
                  },
                  "formats": [
                    "formats",
                    "formats"
                  ],
                  "status": "queued",
                  "error": "error",
                  "outputs": [
                    {
                      "format": "format",
                      "fileId": "x",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    },
                    {
                      "format": "format",
                      "fileId": "x",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    }
                  ],
                  "createdAt": "createdAt",
                  "startedAt": "startedAt",
                  "finishedAt": "finishedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsJobsCreateResponse(
            id: "x",
            reportType: "reportType",
            params: JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            ),
            formats: [
                "formats",
                "formats"
            ],
            status: .queued,
            error: Nullable<String>.value("error"),
            outputs: Nullable<[PostV1ReportsJobsCreateResponseOutputsItem]>.value([
                PostV1ReportsJobsCreateResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                ),
                PostV1ReportsJobsCreateResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: "createdAt",
            startedAt: Nullable<String>.value("startedAt"),
            finishedAt: Nullable<String>.value("finishedAt")
        )
        let response = try await client.reports.postV1ReportsJobsCreate(
            request: .init(reportType: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportType": "reportType",
                  "params": {
                    "key": "value"
                  },
                  "formats": [
                    "formats"
                  ],
                  "status": "queued",
                  "error": "error",
                  "outputs": [
                    {
                      "format": "format",
                      "fileId": "fileId",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    }
                  ],
                  "createdAt": "createdAt",
                  "startedAt": "startedAt",
                  "finishedAt": "finishedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsJobsGetResponse(
            id: "id",
            reportType: "reportType",
            params: JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            ),
            formats: [
                "formats"
            ],
            status: .queued,
            error: Nullable<String>.value("error"),
            outputs: Nullable<[PostV1ReportsJobsGetResponseOutputsItem]>.value([
                PostV1ReportsJobsGetResponseOutputsItem(
                    format: "format",
                    fileId: "fileId",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: "createdAt",
            startedAt: Nullable<String>.value("startedAt"),
            finishedAt: Nullable<String>.value("finishedAt")
        )
        let response = try await client.reports.postV1ReportsJobsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportType": "reportType",
                  "params": {
                    "key": "value"
                  },
                  "formats": [
                    "formats",
                    "formats"
                  ],
                  "status": "queued",
                  "error": "error",
                  "outputs": [
                    {
                      "format": "format",
                      "fileId": "x",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    },
                    {
                      "format": "format",
                      "fileId": "x",
                      "fileName": "fileName",
                      "sizeBytes": 1000000
                    }
                  ],
                  "createdAt": "createdAt",
                  "startedAt": "startedAt",
                  "finishedAt": "finishedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ReportsJobsGetResponse(
            id: "x",
            reportType: "reportType",
            params: JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            ),
            formats: [
                "formats",
                "formats"
            ],
            status: .queued,
            error: Nullable<String>.value("error"),
            outputs: Nullable<[PostV1ReportsJobsGetResponseOutputsItem]>.value([
                PostV1ReportsJobsGetResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                ),
                PostV1ReportsJobsGetResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: "createdAt",
            startedAt: Nullable<String>.value("startedAt"),
            finishedAt: Nullable<String>.value("finishedAt")
        )
        let response = try await client.reports.postV1ReportsJobsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "reportType": "reportType",
                      "params": {
                        "key": "value"
                      },
                      "formats": [
                        "formats"
                      ],
                      "status": "queued",
                      "error": "error",
                      "outputs": [
                        {
                          "format": "format",
                          "fileId": "fileId",
                          "fileName": "fileName",
                          "sizeBytes": 1000000
                        }
                      ],
                      "createdAt": "createdAt",
                      "startedAt": "startedAt",
                      "finishedAt": "finishedAt"
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
        let expectedResponse = PostV1ReportsJobsListResponse(
            rows: [
                PostV1ReportsJobsListResponseRowsItem(
                    id: "id",
                    reportType: "reportType",
                    params: JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    ),
                    formats: [
                        "formats"
                    ],
                    status: .queued,
                    error: Nullable<String>.value("error"),
                    outputs: Nullable<[PostV1ReportsJobsListResponseRowsItemOutputsItem]>.value([
                        PostV1ReportsJobsListResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "fileId",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: "createdAt",
                    startedAt: Nullable<String>.value("startedAt"),
                    finishedAt: Nullable<String>.value("finishedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reports.postV1ReportsJobsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ReportsJobsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "reportType": "reportType",
                      "params": {
                        "key": "value"
                      },
                      "formats": [
                        "formats",
                        "formats"
                      ],
                      "status": "queued",
                      "error": "error",
                      "outputs": [
                        {
                          "format": "format",
                          "fileId": "x",
                          "fileName": "fileName",
                          "sizeBytes": 1000000
                        },
                        {
                          "format": "format",
                          "fileId": "x",
                          "fileName": "fileName",
                          "sizeBytes": 1000000
                        }
                      ],
                      "createdAt": "createdAt",
                      "startedAt": "startedAt",
                      "finishedAt": "finishedAt"
                    },
                    {
                      "id": "x",
                      "reportType": "reportType",
                      "params": {
                        "key": "value"
                      },
                      "formats": [
                        "formats",
                        "formats"
                      ],
                      "status": "queued",
                      "error": "error",
                      "outputs": [
                        {
                          "format": "format",
                          "fileId": "x",
                          "fileName": "fileName",
                          "sizeBytes": 1000000
                        },
                        {
                          "format": "format",
                          "fileId": "x",
                          "fileName": "fileName",
                          "sizeBytes": 1000000
                        }
                      ],
                      "createdAt": "createdAt",
                      "startedAt": "startedAt",
                      "finishedAt": "finishedAt"
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
        let expectedResponse = PostV1ReportsJobsListResponse(
            rows: [
                PostV1ReportsJobsListResponseRowsItem(
                    id: "x",
                    reportType: "reportType",
                    params: JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    ),
                    formats: [
                        "formats",
                        "formats"
                    ],
                    status: .queued,
                    error: Nullable<String>.value("error"),
                    outputs: Nullable<[PostV1ReportsJobsListResponseRowsItemOutputsItem]>.value([
                        PostV1ReportsJobsListResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        ),
                        PostV1ReportsJobsListResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: "createdAt",
                    startedAt: Nullable<String>.value("startedAt"),
                    finishedAt: Nullable<String>.value("finishedAt")
                ),
                PostV1ReportsJobsListResponseRowsItem(
                    id: "x",
                    reportType: "reportType",
                    params: JSONValue.object(
                        [
                            "key": JSONValue.string("value")
                        ]
                    ),
                    formats: [
                        "formats",
                        "formats"
                    ],
                    status: .queued,
                    error: Nullable<String>.value("error"),
                    outputs: Nullable<[PostV1ReportsJobsListResponseRowsItemOutputsItem]>.value([
                        PostV1ReportsJobsListResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        ),
                        PostV1ReportsJobsListResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: "createdAt",
                    startedAt: Nullable<String>.value("startedAt"),
                    finishedAt: Nullable<String>.value("finishedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.reports.postV1ReportsJobsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
import Foundation
import Testing
import Api

@Suite("ReportsClient Wire Tests") struct ReportsClientWireTests {
    @Test func trialBalance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = TrialBalanceReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                TrialBalanceReportsResponseRowsItem(
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
            totals: TrialBalanceReportsResponseTotals(
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.reports.trialBalance(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func trialBalance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = TrialBalanceReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                TrialBalanceReportsResponseRowsItem(
                    accountId: "x",
                    code: "code",
                    name: "name",
                    type: .asset,
                    opening: "opening",
                    debit: "debit",
                    credit: "credit",
                    closing: "closing"
                ),
                TrialBalanceReportsResponseRowsItem(
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
            totals: TrialBalanceReportsResponseTotals(
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.reports.trialBalance(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sizeCategory1() async throws -> Void {
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
        let expectedResponse = SizeCategoryReportsResponse(
            year: 1000000,
            criteria: SizeCategoryReportsResponseCriteria(
                totalAssets: 1.1,
                netTurnover: 1.1,
                avgEmployees: 1000000
            ),
            category: .micro,
            thresholds: [
                "key": SizeCategoryReportsResponseThresholdsValue(
                    totalAssets: 1.1,
                    netTurnover: 1.1,
                    employees: 1.1
                )
            ]
        )
        let response = try await client.reports.sizeCategory(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sizeCategory2() async throws -> Void {
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
        let expectedResponse = SizeCategoryReportsResponse(
            year: 1000000,
            criteria: SizeCategoryReportsResponseCriteria(
                totalAssets: 1.1,
                netTurnover: 1.1,
                avgEmployees: 1000000
            ),
            category: .micro,
            thresholds: [
                "thresholds": SizeCategoryReportsResponseThresholdsValue(
                    totalAssets: 1.1,
                    netTurnover: 1.1,
                    employees: 1.1
                )
            ]
        )
        let response = try await client.reports.sizeCategory(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func financialStatements1() async throws -> Void {
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
                    "fromDate": "2026-07-01",
                    "toDate": "2026-07-01",
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
        let expectedResponse = FinancialStatementsReportsResponse(
            category: .micro,
            layout: "layout",
            requiredStatements: [
                "requiredStatements"
            ],
            asOf: "asOf",
            balanceSheet: FinancialStatementsReportsResponseBalanceSheet(
                nonCurrentAssets: "nonCurrentAssets",
                currentAssets: "currentAssets",
                totalAssets: "totalAssets",
                equity: "equity",
                ofWhichResult: "ofWhichResult",
                liabilities: "liabilities",
                totalEquityAndLiabilities: "totalEquityAndLiabilities",
                balanced: true
            ),
            profitLoss: FinancialStatementsReportsResponseProfitLoss(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!,
                revenue: "revenue",
                expenses: "expenses",
                netResult: "netResult"
            ),
            balanceSheetDetail: Optional(FinancialStatementsReportsResponseBalanceSheetDetail(
                nonCurrentAssets: FinancialStatementsReportsResponseBalanceSheetDetailNonCurrentAssets(
                    intangible: "intangible",
                    tangible: "tangible",
                    financial: "financial",
                    other: "other",
                    total: "total"
                ),
                currentAssets: FinancialStatementsReportsResponseBalanceSheetDetailCurrentAssets(
                    inventories: "inventories",
                    receivables: "receivables",
                    otherCurrent: "otherCurrent",
                    cash: "cash",
                    total: "total"
                ),
                equity: FinancialStatementsReportsResponseBalanceSheetDetailEquity(
                    capital: "capital",
                    reserves: "reserves",
                    retainedEarnings: "retainedEarnings",
                    otherEquity: "otherEquity",
                    periodResult: "periodResult",
                    total: "total"
                ),
                liabilities: FinancialStatementsReportsResponseBalanceSheetDetailLiabilities(
                    nonCurrent: "nonCurrent",
                    current: "current",
                    other: "other",
                    total: "total"
                )
            )),
            profitLossDetail: Optional(FinancialStatementsReportsResponseProfitLossDetail(
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
                FinancialStatementsReportsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                )
            ]),
            cashFlow: Optional(FinancialStatementsReportsResponseCashFlow(
                openingCash: "openingCash",
                operating: "operating",
                investing: "investing",
                financing: "financing",
                netChange: "netChange",
                closingCash: "closingCash"
            ))
        )
        let response = try await client.reports.financialStatements(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func financialStatements2() async throws -> Void {
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
                    "fromDate": "2023-01-15",
                    "toDate": "2023-01-15",
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
        let expectedResponse = FinancialStatementsReportsResponse(
            category: .micro,
            layout: "layout",
            requiredStatements: [
                "requiredStatements",
                "requiredStatements"
            ],
            asOf: "asOf",
            balanceSheet: FinancialStatementsReportsResponseBalanceSheet(
                nonCurrentAssets: "nonCurrentAssets",
                currentAssets: "currentAssets",
                totalAssets: "totalAssets",
                equity: "equity",
                ofWhichResult: "ofWhichResult",
                liabilities: "liabilities",
                totalEquityAndLiabilities: "totalEquityAndLiabilities",
                balanced: true
            ),
            profitLoss: FinancialStatementsReportsResponseProfitLoss(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!,
                revenue: "revenue",
                expenses: "expenses",
                netResult: "netResult"
            ),
            balanceSheetDetail: Optional(FinancialStatementsReportsResponseBalanceSheetDetail(
                nonCurrentAssets: FinancialStatementsReportsResponseBalanceSheetDetailNonCurrentAssets(
                    intangible: "intangible",
                    tangible: "tangible",
                    financial: "financial",
                    other: "other",
                    total: "total"
                ),
                currentAssets: FinancialStatementsReportsResponseBalanceSheetDetailCurrentAssets(
                    inventories: "inventories",
                    receivables: "receivables",
                    otherCurrent: "otherCurrent",
                    cash: "cash",
                    total: "total"
                ),
                equity: FinancialStatementsReportsResponseBalanceSheetDetailEquity(
                    capital: "capital",
                    reserves: "reserves",
                    retainedEarnings: "retainedEarnings",
                    otherEquity: "otherEquity",
                    periodResult: "periodResult",
                    total: "total"
                ),
                liabilities: FinancialStatementsReportsResponseBalanceSheetDetailLiabilities(
                    nonCurrent: "nonCurrent",
                    current: "current",
                    other: "other",
                    total: "total"
                )
            )),
            profitLossDetail: Optional(FinancialStatementsReportsResponseProfitLossDetail(
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
                FinancialStatementsReportsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                ),
                FinancialStatementsReportsResponseEquityChangesItem(
                    code: "code",
                    name: "name",
                    opening: "opening",
                    increase: "increase",
                    decrease: "decrease",
                    closing: "closing"
                )
            ]),
            cashFlow: Optional(FinancialStatementsReportsResponseCashFlow(
                openingCash: "openingCash",
                operating: "operating",
                investing: "investing",
                financing: "financing",
                netChange: "netChange",
                closingCash: "closingCash"
            ))
        )
        let response = try await client.reports.financialStatements(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generalJournal1() async throws -> Void {
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
                      "date": "2026-07-01",
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
        let expectedResponse = GeneralJournalReportsResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                GeneralJournalReportsResponseRowsItem(
                    id: "id",
                    date: CalendarDate("2026-07-01")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("documentId"),
                    entries: [
                        GeneralJournalReportsResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                )
            ]
        )
        let response = try await client.reports.generalJournal(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func generalJournal2() async throws -> Void {
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
                      "date": "2023-01-15",
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
                      "date": "2023-01-15",
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
        let expectedResponse = GeneralJournalReportsResponse(
            total: 1000000,
            page: 1000000,
            pageSize: 1000000,
            rows: [
                GeneralJournalReportsResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    entries: [
                        GeneralJournalReportsResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        ),
                        GeneralJournalReportsResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                ),
                GeneralJournalReportsResponseRowsItem(
                    id: "x",
                    date: CalendarDate("2023-01-15")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    entries: [
                        GeneralJournalReportsResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        ),
                        GeneralJournalReportsResponseRowsItemEntriesItem(
                            accountCode: "accountCode",
                            accountName: "accountName",
                            debit: "debit",
                            credit: "credit"
                        )
                    ]
                )
            ]
        )
        let response = try await client.reports.generalJournal(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func glDetail1() async throws -> Void {
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
                      "date": "2026-07-01",
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
        let expectedResponse = GlDetailReportsResponse(
            account: GlDetailReportsResponseAccount(
                code: "code",
                name: "name",
                type: "type"
            ),
            opening: "opening",
            closing: "closing",
            rows: [
                GlDetailReportsResponseRowsItem(
                    date: CalendarDate("2026-07-01")!,
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
        let response = try await client.reports.glDetail(
            request: .init(
                accountCode: "accountCode",
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func glDetail2() async throws -> Void {
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
                      "date": "2023-01-15",
                      "description": "description",
                      "documentType": "documentType",
                      "documentId": "x",
                      "journalTransactionId": "x",
                      "debit": "debit",
                      "credit": "credit",
                      "balance": "balance"
                    },
                    {
                      "date": "2023-01-15",
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
        let expectedResponse = GlDetailReportsResponse(
            account: GlDetailReportsResponseAccount(
                code: "code",
                name: "name",
                type: "type"
            ),
            opening: "opening",
            closing: "closing",
            rows: [
                GlDetailReportsResponseRowsItem(
                    date: CalendarDate("2023-01-15")!,
                    description: Nullable<String>.value("description"),
                    documentType: Nullable<String>.value("documentType"),
                    documentId: Nullable<String>.value("x"),
                    journalTransactionId: "x",
                    debit: "debit",
                    credit: "credit",
                    balance: "balance"
                ),
                GlDetailReportsResponseRowsItem(
                    date: CalendarDate("2023-01-15")!,
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
        let response = try await client.reports.glDetail(
            request: .init(
                accountCode: "x",
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func partnerBalances1() async throws -> Void {
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
                  ],
                  "totals": {
                    "receivable": "receivable",
                    "payable": "payable"
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
        let expectedResponse = PartnerBalancesReportsResponse(
            rows: [
                PartnerBalancesReportsResponseRowsItem(
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                )
            ],
            totals: PartnerBalancesReportsResponseTotals(
                receivable: "receivable",
                payable: "payable"
            )
        )
        let response = try await client.reports.partnerBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func partnerBalances2() async throws -> Void {
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
                  ],
                  "totals": {
                    "receivable": "receivable",
                    "payable": "payable"
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
        let expectedResponse = PartnerBalancesReportsResponse(
            rows: [
                PartnerBalancesReportsResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                ),
                PartnerBalancesReportsResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    receivable: "receivable",
                    payable: "payable",
                    net: "net"
                )
            ],
            totals: PartnerBalancesReportsResponseTotals(
                receivable: "receivable",
                payable: "payable"
            )
        )
        let response = try await client.reports.partnerBalances(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtAging1() async throws -> Void {
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
        let expectedResponse = DebtAgingReportsResponse(
            asOf: "asOf",
            side: "side",
            rows: [
                DebtAgingReportsResponseRowsItem(
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
        let response = try await client.reports.debtAging(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func debtAging2() async throws -> Void {
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
        let expectedResponse = DebtAgingReportsResponse(
            asOf: "asOf",
            side: "side",
            rows: [
                DebtAgingReportsResponseRowsItem(
                    partnerId: "x",
                    partnerName: "partnerName",
                    current: "current",
                    d1To30: "d1to30",
                    d31To60: "d31to60",
                    d61To90: "d61to90",
                    over90: "over90",
                    total: "total"
                ),
                DebtAgingReportsResponseRowsItem(
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
        let response = try await client.reports.debtAging(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func monthlySummary1() async throws -> Void {
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
        let expectedResponse = MonthlySummaryReportsResponse(
            rows: [
                MonthlySummaryReportsResponseRowsItem(
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
        let response = try await client.reports.monthlySummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func monthlySummary2() async throws -> Void {
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
        let expectedResponse = MonthlySummaryReportsResponse(
            rows: [
                MonthlySummaryReportsResponseRowsItem(
                    year: 1000000,
                    month: 1000000,
                    receivables: "receivables",
                    payables: "payables",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                MonthlySummaryReportsResponseRowsItem(
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
        let response = try await client.reports.monthlySummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockBalance1() async throws -> Void {
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
        let expectedResponse = StockBalanceReportsResponse(
            asOf: "asOf",
            rows: [
                StockBalanceReportsResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    warehouseId: "warehouseId",
                    quantity: "quantity",
                    value: "value"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.stockBalance(
            request: .init(asOf: CalendarDate("2026-07-01")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockBalance2() async throws -> Void {
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
        let expectedResponse = StockBalanceReportsResponse(
            asOf: "asOf",
            rows: [
                StockBalanceReportsResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                ),
                StockBalanceReportsResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    quantity: "quantity",
                    value: "value"
                )
            ],
            totalValue: "totalValue"
        )
        let response = try await client.reports.stockBalance(
            request: .init(asOf: CalendarDate("2023-01-15")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockMovement1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = StockMovementReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                StockMovementReportsResponseRowsItem(
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
        let response = try await client.reports.stockMovement(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockMovement2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = StockMovementReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                StockMovementReportsResponseRowsItem(
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
                StockMovementReportsResponseRowsItem(
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
        let response = try await client.reports.stockMovement(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatSummary1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = VatSummaryReportsResponse(
            side: "side",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                VatSummaryReportsResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                )
            ],
            totals: VatSummaryReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.vatSummary(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatSummary2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = VatSummaryReportsResponse(
            side: "side",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                VatSummaryReportsResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                ),
                VatSummaryReportsResponseRowsItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    documents: 1000000
                )
            ],
            totals: VatSummaryReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.vatSummary(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cashFlow1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = CashFlowReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            openingCash: "openingCash",
            closingCash: "closingCash",
            netChange: "netChange",
            operating: CashFlowReportsResponseOperating(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            investing: CashFlowReportsResponseInvesting(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            financing: CashFlowReportsResponseFinancing(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            balanced: true
        )
        let response = try await client.reports.cashFlow(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cashFlow2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = CashFlowReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            openingCash: "openingCash",
            closingCash: "closingCash",
            netChange: "netChange",
            operating: CashFlowReportsResponseOperating(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    CashFlowReportsResponseOperatingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            investing: CashFlowReportsResponseInvesting(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    CashFlowReportsResponseInvestingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            financing: CashFlowReportsResponseFinancing(
                inflow: "inflow",
                outflow: "outflow",
                net: "net",
                rows: [
                    CashFlowReportsResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    ),
                    CashFlowReportsResponseFinancingRowsItem(
                        code: "code",
                        name: "name",
                        inflow: "inflow",
                        outflow: "outflow"
                    )
                ]
            ),
            balanced: true
        )
        let response = try await client.reports.cashFlow(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockAging1() async throws -> Void {
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
        let expectedResponse = StockAgingReportsResponse(
            asOf: "asOf",
            rows: [
                StockAgingReportsResponseRowsItem(
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
        let response = try await client.reports.stockAging(
            request: .init(asOf: CalendarDate("2026-07-01")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockAging2() async throws -> Void {
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
        let expectedResponse = StockAgingReportsResponse(
            asOf: "asOf",
            rows: [
                StockAgingReportsResponseRowsItem(
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
                StockAgingReportsResponseRowsItem(
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
        let response = try await client.reports.stockAging(
            request: .init(asOf: CalendarDate("2023-01-15")!),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockShortage1() async throws -> Void {
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
        let expectedResponse = StockShortageReportsResponse(
            rows: [
                StockShortageReportsResponseRowsItem(
                    itemId: "itemId",
                    itemName: "itemName",
                    warehouseId: "warehouseId",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                )
            ]
        )
        let response = try await client.reports.stockShortage(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stockShortage2() async throws -> Void {
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
        let expectedResponse = StockShortageReportsResponse(
            rows: [
                StockShortageReportsResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                ),
                StockShortageReportsResponseRowsItem(
                    itemId: "x",
                    itemName: "itemName",
                    warehouseId: "x",
                    onHand: "onHand",
                    reserved: "reserved",
                    shortage: "shortage"
                )
            ]
        )
        let response = try await client.reports.stockShortage(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sie1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "accounts": 1000000,
                  "vouchers": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = SieReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            accounts: 1000000,
            vouchers: 1000000,
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.reports.sie(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sie2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "accounts": 1000000,
                  "vouchers": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = SieReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            accounts: 1000000,
            vouchers: 1000000,
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.reports.sie(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func datev1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "bookings": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = DatevReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            bookings: 1000000,
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.reports.datev(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func datev2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "bookings": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = DatevReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            bookings: 1000000,
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.reports.datev(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func fec1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "rows": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
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
        let expectedResponse = FecReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            rows: 1000000,
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.reports.fec(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func fec2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "rows": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
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
        let expectedResponse = FecReportsResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            rows: 1000000,
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.reports.fec(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euPurchases1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = EuPurchasesReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                EuPurchasesReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: EuPurchasesReportsResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.euPurchases(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func euPurchases2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = EuPurchasesReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                EuPurchasesReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                ),
                EuPurchasesReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: EuPurchasesReportsResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.euPurchases(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatDetail1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "documentId": "documentId",
                      "documentNumber": "documentNumber",
                      "date": "2026-07-01",
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
        let expectedResponse = VatDetailReportsResponse(
            side: "side",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                VatDetailReportsResponseRowsItem(
                    documentId: "documentId",
                    documentNumber: "documentNumber",
                    date: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                )
            ],
            totals: VatDetailReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.vatDetail(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vatDetail2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "side": "side",
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "documentId": "x",
                      "documentNumber": "documentNumber",
                      "date": "2023-01-15",
                      "partnerName": "partnerName",
                      "vatRatePercent": "vatRatePercent",
                      "net": "net",
                      "vat": "vat",
                      "gross": "gross"
                    },
                    {
                      "documentId": "x",
                      "documentNumber": "documentNumber",
                      "date": "2023-01-15",
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
        let expectedResponse = VatDetailReportsResponse(
            side: "side",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                VatDetailReportsResponseRowsItem(
                    documentId: "x",
                    documentNumber: "documentNumber",
                    date: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                ),
                VatDetailReportsResponseRowsItem(
                    documentId: "x",
                    documentNumber: "documentNumber",
                    date: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    partnerName: "partnerName",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    gross: "gross"
                )
            ],
            totals: VatDetailReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross"
            )
        )
        let response = try await client.reports.vatDetail(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func posSales1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "reportId": "reportId",
                      "reportNumber": "reportNumber",
                      "date": "2026-07-01",
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
        let expectedResponse = PosSalesReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                PosSalesReportsResponseRowsItem(
                    reportId: "reportId",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2026-07-01")!,
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                )
            ],
            byRate: [
                PosSalesReportsResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                )
            ],
            totals: PosSalesReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross",
                cash: "cash",
                card: "card",
                cogs: "cogs"
            )
        )
        let response = try await client.reports.posSales(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func posSales2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "reportId": "x",
                      "reportNumber": "reportNumber",
                      "date": "2023-01-15",
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
                      "date": "2023-01-15",
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
        let expectedResponse = PosSalesReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                PosSalesReportsResponseRowsItem(
                    reportId: "x",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2023-01-15")!,
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                ),
                PosSalesReportsResponseRowsItem(
                    reportId: "x",
                    reportNumber: "reportNumber",
                    date: CalendarDate("2023-01-15")!,
                    net: "net",
                    vat: "vat",
                    gross: "gross",
                    cash: "cash",
                    card: "card",
                    cogs: Nullable<String>.value("cogs")
                )
            ],
            byRate: [
                PosSalesReportsResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                ),
                PosSalesReportsResponseByRateItem(
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat"
                )
            ],
            totals: PosSalesReportsResponseTotals(
                net: "net",
                vat: "vat",
                gross: "gross",
                cash: "cash",
                card: "card",
                cogs: "cogs"
            )
        )
        let response = try await client.reports.posSales(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func onlineSales1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "channel": "channel",
                      "currency": "currency",
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
        let expectedResponse = OnlineSalesReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                OnlineSalesReportsResponseRowsItem(
                    channel: "channel",
                    currency: "currency",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                )
            ]
        )
        let response = try await client.reports.onlineSales(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func onlineSales2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "channel": "channel",
                      "currency": "currency",
                      "orders": 1000000,
                      "fulfilled": 1000000,
                      "cancelled": 1000000,
                      "open": 1000000,
                      "net": "net",
                      "gross": "gross"
                    },
                    {
                      "channel": "channel",
                      "currency": "currency",
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
        let expectedResponse = OnlineSalesReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                OnlineSalesReportsResponseRowsItem(
                    channel: "channel",
                    currency: "currency",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                ),
                OnlineSalesReportsResponseRowsItem(
                    channel: "channel",
                    currency: "currency",
                    orders: 1000000,
                    fulfilled: 1000000,
                    cancelled: 1000000,
                    open: 1000000,
                    net: "net",
                    gross: "gross"
                )
            ]
        )
        let response = try await client.reports.onlineSales(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func oss1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = OssReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                OssReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: OssReportsResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.oss(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func oss2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = OssReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                OssReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                ),
                OssReportsResponseRowsItem(
                    countryCode: "countryCode",
                    vatRatePercent: "vatRatePercent",
                    net: "net",
                    vat: "vat",
                    documents: 1000000
                )
            ],
            totals: OssReportsResponseTotals(
                net: "net",
                vat: "vat"
            )
        )
        let response = try await client.reports.oss(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func advanceReconciliation1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
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
        let expectedResponse = AdvanceReconciliationReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                AdvanceReconciliationReportsResponseRowsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    closing: "closing"
                )
            ]
        )
        let response = try await client.reports.advanceReconciliation(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func advanceReconciliation2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
                      "closing": "closing"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "opening": "opening",
                      "issued": "issued",
                      "returned": "returned",
                      "settled": "settled",
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
        let expectedResponse = AdvanceReconciliationReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                AdvanceReconciliationReportsResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    closing: "closing"
                ),
                AdvanceReconciliationReportsResponseRowsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    opening: "opening",
                    issued: "issued",
                    returned: "returned",
                    settled: "settled",
                    closing: "closing"
                )
            ]
        )
        let response = try await client.reports.advanceReconciliation(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func writeOffActs1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "rows": [
                    {
                      "movementId": "movementId",
                      "date": "2026-07-01",
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
        let expectedResponse = WriteOffActsReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                WriteOffActsReportsResponseRowsItem(
                    movementId: "movementId",
                    date: CalendarDate("2026-07-01")!,
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
        let response = try await client.reports.writeOffActs(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func writeOffActs2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "rows": [
                    {
                      "movementId": "x",
                      "date": "2023-01-15",
                      "documentType": "documentType",
                      "itemName": "itemName",
                      "warehouseCode": "warehouseCode",
                      "quantity": "quantity",
                      "totalCost": "totalCost",
                      "notes": "notes"
                    },
                    {
                      "movementId": "x",
                      "date": "2023-01-15",
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
        let expectedResponse = WriteOffActsReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                WriteOffActsReportsResponseRowsItem(
                    movementId: "x",
                    date: CalendarDate("2023-01-15")!,
                    documentType: "documentType",
                    itemName: "itemName",
                    warehouseCode: "warehouseCode",
                    quantity: "quantity",
                    totalCost: "totalCost",
                    notes: Nullable<String>.value("notes")
                ),
                WriteOffActsReportsResponseRowsItem(
                    movementId: "x",
                    date: CalendarDate("2023-01-15")!,
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
        let response = try await client.reports.writeOffActs(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenters1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = CostCentersReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                CostCentersReportsResponseRowsItem(
                    costCenterId: "costCenterId",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                )
            ]
        )
        let response = try await client.reports.costCenters(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenters2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = CostCentersReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                CostCentersReportsResponseRowsItem(
                    costCenterId: "x",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                ),
                CostCentersReportsResponseRowsItem(
                    costCenterId: "x",
                    code: "code",
                    name: "name",
                    income: "income",
                    expenses: "expenses",
                    result: "result"
                )
            ]
        )
        let response = try await client.reports.costCenters(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterActivity1() async throws -> Void {
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
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = CostCenterActivityReportsResponse(
            costCenter: CostCenterActivityReportsResponseCostCenter(
                id: "id",
                code: "code",
                name: "name"
            ),
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                CostCenterActivityReportsResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.costCenterActivity(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!,
                costCenterId: "costCenterId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterActivity2() async throws -> Void {
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
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = CostCenterActivityReportsResponse(
            costCenter: CostCenterActivityReportsResponseCostCenter(
                id: "x",
                code: "code",
                name: "name"
            ),
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                CostCenterActivityReportsResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                ),
                CostCenterActivityReportsResponseRowsItem(
                    accountCode: "accountCode",
                    accountName: "accountName",
                    debit: "debit",
                    credit: "credit",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.costCenterActivity(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!,
                costCenterId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterItems1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
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
        let expectedResponse = CostCenterItemsReportsResponse(
            fromDate: CalendarDate("2026-07-01")!,
            toDate: CalendarDate("2026-07-01")!,
            rows: [
                CostCenterItemsReportsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.costCenterItems(
            request: .init(
                fromDate: CalendarDate("2026-07-01")!,
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func costCenterItems2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
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
        let expectedResponse = CostCenterItemsReportsResponse(
            fromDate: CalendarDate("2023-01-15")!,
            toDate: CalendarDate("2023-01-15")!,
            rows: [
                CostCenterItemsReportsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                ),
                CostCenterItemsReportsResponseRowsItem(
                    costCenterCode: "costCenterCode",
                    costCenterName: "costCenterName",
                    itemName: "itemName",
                    net: "net"
                )
            ]
        )
        let response = try await client.reports.costCenterItems(
            request: .init(
                fromDate: CalendarDate("2023-01-15")!,
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsCreate1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z",
                  "startedAt": "2026-07-01T09:30:00Z",
                  "finishedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JobsCreateReportsResponse(
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
            outputs: Nullable<[JobsCreateReportsResponseOutputsItem]>.value([
                JobsCreateReportsResponseOutputsItem(
                    format: "format",
                    fileId: "fileId",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            startedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            finishedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.reports.jobsCreate(
            request: .init(reportType: "reportType"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsCreate2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z",
                  "startedAt": "2024-01-15T09:30:00Z",
                  "finishedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JobsCreateReportsResponse(
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
            outputs: Nullable<[JobsCreateReportsResponseOutputsItem]>.value([
                JobsCreateReportsResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                ),
                JobsCreateReportsResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            startedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finishedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.reports.jobsCreate(
            request: .init(reportType: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsGet1() async throws -> Void {
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
                  "createdAt": "2026-07-01T09:30:00Z",
                  "startedAt": "2026-07-01T09:30:00Z",
                  "finishedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JobsGetReportsResponse(
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
            outputs: Nullable<[JobsGetReportsResponseOutputsItem]>.value([
                JobsGetReportsResponseOutputsItem(
                    format: "format",
                    fileId: "fileId",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            startedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            finishedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.reports.jobsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsGet2() async throws -> Void {
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
                  "createdAt": "2024-01-15T09:30:00Z",
                  "startedAt": "2024-01-15T09:30:00Z",
                  "finishedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = JobsGetReportsResponse(
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
            outputs: Nullable<[JobsGetReportsResponseOutputsItem]>.value([
                JobsGetReportsResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                ),
                JobsGetReportsResponseOutputsItem(
                    format: "format",
                    fileId: "x",
                    fileName: "fileName",
                    sizeBytes: 1000000
                )
            ]),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            startedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            finishedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
        )
        let response = try await client.reports.jobsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsList1() async throws -> Void {
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
                      "createdAt": "2026-07-01T09:30:00Z",
                      "startedAt": "2026-07-01T09:30:00Z",
                      "finishedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = JobsListReportsResponse(
            rows: [
                JobsListReportsResponseRowsItem(
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
                    outputs: Nullable<[JobsListReportsResponseRowsItemOutputsItem]>.value([
                        JobsListReportsResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "fileId",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    startedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    finishedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.reports.jobsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func jobsList2() async throws -> Void {
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
                      "createdAt": "2024-01-15T09:30:00Z",
                      "startedAt": "2024-01-15T09:30:00Z",
                      "finishedAt": "2024-01-15T09:30:00Z"
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
                      "createdAt": "2024-01-15T09:30:00Z",
                      "startedAt": "2024-01-15T09:30:00Z",
                      "finishedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = JobsListReportsResponse(
            rows: [
                JobsListReportsResponseRowsItem(
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
                    outputs: Nullable<[JobsListReportsResponseRowsItemOutputsItem]>.value([
                        JobsListReportsResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        ),
                        JobsListReportsResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    startedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finishedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                JobsListReportsResponseRowsItem(
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
                    outputs: Nullable<[JobsListReportsResponseRowsItemOutputsItem]>.value([
                        JobsListReportsResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        ),
                        JobsListReportsResponseRowsItemOutputsItem(
                            format: "format",
                            fileId: "x",
                            fileName: "fileName",
                            sizeBytes: 1000000
                        )
                    ]),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    startedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    finishedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
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
        let response = try await client.reports.jobsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
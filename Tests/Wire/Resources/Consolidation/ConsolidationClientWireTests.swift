import Foundation
import Testing
import Api

@Suite("ConsolidationClient Wire Tests") struct ConsolidationClientWireTests {
    @Test func postV1ConsolidationGroupsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsCreateResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsCreate(
            request: .init(name: "name"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsCreateResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsCreate(
            request: .init(name: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
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
        let expectedResponse = PostV1ConsolidationGroupsListResponse(
            rows: [
                PostV1ConsolidationGroupsListResponseRowsItem(
                    id: "id",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "presentationCurrency": "presentationCurrency",
                      "memberCount": 1000000,
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
        let expectedResponse = PostV1ConsolidationGroupsListResponse(
            rows: [
                PostV1ConsolidationGroupsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1ConsolidationGroupsListResponseRowsItem(
                    id: "x",
                    name: "name",
                    presentationCurrency: "presentationCurrency",
                    memberCount: 1000000,
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "members": [
                    {
                      "memberCompanyId": "memberCompanyId",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
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
        let expectedResponse = PostV1ConsolidationGroupsGetResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            members: [
                PostV1ConsolidationGroupsGetResponseMembersItem(
                    memberCompanyId: "memberCompanyId",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsGet(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
                  "members": [
                    {
                      "memberCompanyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
                    },
                    {
                      "memberCompanyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full"
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
        let expectedResponse = PostV1ConsolidationGroupsGetResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            members: [
                PostV1ConsolidationGroupsGetResponseMembersItem(
                    memberCompanyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                ),
                PostV1ConsolidationGroupsGetResponseMembersItem(
                    memberCompanyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsGet(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsUpdateResponse(
            id: "id",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsUpdate(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "presentationCurrency": "presentationCurrency",
                  "memberCount": 1000000,
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsUpdateResponse(
            id: "x",
            name: "name",
            presentationCurrency: "presentationCurrency",
            memberCount: 1000000,
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsUpdate(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsDeleteResponse(
            ok: true
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsDelete(
            request: .init(groupId: "groupId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationGroupsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationGroupsDeleteResponse(
            ok: true
        )
        let response = try await client.consolidation.postV1ConsolidationGroupsDelete(
            request: .init(groupId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationMembersAdd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "memberCompanyId": "memberCompanyId",
                  "name": "name",
                  "baseCurrency": "baseCurrency",
                  "ownershipPercent": "ownershipPercent",
                  "method": "full"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationMembersAddResponse(
            memberCompanyId: "memberCompanyId",
            name: "name",
            baseCurrency: "baseCurrency",
            ownershipPercent: "ownershipPercent",
            method: .full
        )
        let response = try await client.consolidation.postV1ConsolidationMembersAdd(
            request: .init(
                groupId: "groupId",
                memberCompanyId: "memberCompanyId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationMembersAdd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "memberCompanyId": "x",
                  "name": "name",
                  "baseCurrency": "baseCurrency",
                  "ownershipPercent": "ownershipPercent",
                  "method": "full"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationMembersAddResponse(
            memberCompanyId: "x",
            name: "name",
            baseCurrency: "baseCurrency",
            ownershipPercent: "ownershipPercent",
            method: .full
        )
        let response = try await client.consolidation.postV1ConsolidationMembersAdd(
            request: .init(
                groupId: "x",
                memberCompanyId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationMembersRemove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationMembersRemoveResponse(
            ok: true
        )
        let response = try await client.consolidation.postV1ConsolidationMembersRemove(
            request: .init(
                groupId: "groupId",
                memberCompanyId: "memberCompanyId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationMembersRemove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ok": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1ConsolidationMembersRemoveResponse(
            ok: true
        )
        let response = try await client.consolidation.postV1ConsolidationMembersRemove(
            request: .init(
                groupId: "x",
                memberCompanyId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationReport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "presentationCurrency": "presentationCurrency",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "category": "micro",
                  "statements": {
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
                    }
                  },
                  "trialBalance": [
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    }
                  ],
                  "nonControllingInterest": {
                    "equity": "equity",
                    "result": "result"
                  },
                  "equityMethod": {
                    "investmentsInAssociates": "investmentsInAssociates",
                    "shareOfAssociatesResult": "shareOfAssociatesResult"
                  },
                  "members": [
                    {
                      "companyId": "companyId",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    }
                  ],
                  "eliminations": {
                    "applied": [
                      {
                        "code": "code",
                        "amount": "amount"
                      }
                    ],
                    "balanced": true,
                    "net": "net"
                  },
                  "intercompanyCandidates": [
                    {
                      "memberCompanyId": "memberCompanyId",
                      "memberName": "memberName",
                      "partnerId": "partnerId",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "matchesCompanyId",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
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
        let expectedResponse = PostV1ConsolidationReportResponse(
            presentationCurrency: "presentationCurrency",
            fromDate: "fromDate",
            toDate: "toDate",
            category: .micro,
            statements: PostV1ConsolidationReportResponseStatements(
                category: .micro,
                layout: "layout",
                requiredStatements: [
                    "requiredStatements"
                ],
                asOf: "asOf",
                balanceSheet: PostV1ConsolidationReportResponseStatementsBalanceSheet(
                    nonCurrentAssets: "nonCurrentAssets",
                    currentAssets: "currentAssets",
                    totalAssets: "totalAssets",
                    equity: "equity",
                    ofWhichResult: "ofWhichResult",
                    liabilities: "liabilities",
                    totalEquityAndLiabilities: "totalEquityAndLiabilities",
                    balanced: true
                ),
                profitLoss: PostV1ConsolidationReportResponseStatementsProfitLoss(
                    fromDate: "fromDate",
                    toDate: "toDate",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                balanceSheetDetail: Optional(PostV1ConsolidationReportResponseStatementsBalanceSheetDetail(
                    nonCurrentAssets: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailNonCurrentAssets(
                        intangible: "intangible",
                        tangible: "tangible",
                        financial: "financial",
                        other: "other",
                        total: "total"
                    ),
                    currentAssets: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailCurrentAssets(
                        inventories: "inventories",
                        receivables: "receivables",
                        otherCurrent: "otherCurrent",
                        cash: "cash",
                        total: "total"
                    ),
                    equity: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailEquity(
                        capital: "capital",
                        reserves: "reserves",
                        retainedEarnings: "retainedEarnings",
                        otherEquity: "otherEquity",
                        periodResult: "periodResult",
                        total: "total"
                    ),
                    liabilities: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailLiabilities(
                        nonCurrent: "nonCurrent",
                        current: "current",
                        other: "other",
                        total: "total"
                    )
                )),
                profitLossDetail: Optional(PostV1ConsolidationReportResponseStatementsProfitLossDetail(
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
                ))
            ),
            trialBalance: [
                PostV1ConsolidationReportResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                )
            ],
            nonControllingInterest: PostV1ConsolidationReportResponseNonControllingInterest(
                equity: "equity",
                result: "result"
            ),
            equityMethod: PostV1ConsolidationReportResponseEquityMethod(
                investmentsInAssociates: "investmentsInAssociates",
                shareOfAssociatesResult: "shareOfAssociatesResult"
            ),
            members: [
                PostV1ConsolidationReportResponseMembersItem(
                    companyId: "companyId",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                )
            ],
            eliminations: PostV1ConsolidationReportResponseEliminations(
                applied: [
                    PostV1ConsolidationReportResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount"
                    )
                ],
                balanced: true,
                net: "net"
            ),
            intercompanyCandidates: [
                PostV1ConsolidationReportResponseIntercompanyCandidatesItem(
                    memberCompanyId: "memberCompanyId",
                    memberName: "memberName",
                    partnerId: "partnerId",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "matchesCompanyId",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationReport(
            request: .init(
                groupId: "groupId",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1ConsolidationReport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "presentationCurrency": "presentationCurrency",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "category": "micro",
                  "statements": {
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
                    }
                  },
                  "trialBalance": [
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    },
                    {
                      "code": "code",
                      "type": "type",
                      "closing": "closing",
                      "period": "period"
                    }
                  ],
                  "nonControllingInterest": {
                    "equity": "equity",
                    "result": "result"
                  },
                  "equityMethod": {
                    "investmentsInAssociates": "investmentsInAssociates",
                    "shareOfAssociatesResult": "shareOfAssociatesResult"
                  },
                  "members": [
                    {
                      "companyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    },
                    {
                      "companyId": "x",
                      "name": "name",
                      "baseCurrency": "baseCurrency",
                      "ownershipPercent": "ownershipPercent",
                      "method": "full",
                      "fxFactor": "fxFactor",
                      "rateFrom": "rateFrom",
                      "rateTo": "rateTo",
                      "totalAssets": "totalAssets",
                      "netEquity": "netEquity",
                      "periodResult": "periodResult"
                    }
                  ],
                  "eliminations": {
                    "applied": [
                      {
                        "code": "code",
                        "amount": "amount",
                        "note": "note"
                      },
                      {
                        "code": "code",
                        "amount": "amount",
                        "note": "note"
                      }
                    ],
                    "balanced": true,
                    "net": "net"
                  },
                  "intercompanyCandidates": [
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
                    },
                    {
                      "memberCompanyId": "x",
                      "memberName": "memberName",
                      "partnerId": "x",
                      "partnerName": "partnerName",
                      "partnerCode": "partnerCode",
                      "matchesCompanyId": "x",
                      "matchesCompanyName": "matchesCompanyName",
                      "matchedOn": "code"
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
        let expectedResponse = PostV1ConsolidationReportResponse(
            presentationCurrency: "presentationCurrency",
            fromDate: "fromDate",
            toDate: "toDate",
            category: .micro,
            statements: PostV1ConsolidationReportResponseStatements(
                category: .micro,
                layout: "layout",
                requiredStatements: [
                    "requiredStatements",
                    "requiredStatements"
                ],
                asOf: "asOf",
                balanceSheet: PostV1ConsolidationReportResponseStatementsBalanceSheet(
                    nonCurrentAssets: "nonCurrentAssets",
                    currentAssets: "currentAssets",
                    totalAssets: "totalAssets",
                    equity: "equity",
                    ofWhichResult: "ofWhichResult",
                    liabilities: "liabilities",
                    totalEquityAndLiabilities: "totalEquityAndLiabilities",
                    balanced: true
                ),
                profitLoss: PostV1ConsolidationReportResponseStatementsProfitLoss(
                    fromDate: "fromDate",
                    toDate: "toDate",
                    revenue: "revenue",
                    expenses: "expenses",
                    netResult: "netResult"
                ),
                balanceSheetDetail: Optional(PostV1ConsolidationReportResponseStatementsBalanceSheetDetail(
                    nonCurrentAssets: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailNonCurrentAssets(
                        intangible: "intangible",
                        tangible: "tangible",
                        financial: "financial",
                        other: "other",
                        total: "total"
                    ),
                    currentAssets: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailCurrentAssets(
                        inventories: "inventories",
                        receivables: "receivables",
                        otherCurrent: "otherCurrent",
                        cash: "cash",
                        total: "total"
                    ),
                    equity: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailEquity(
                        capital: "capital",
                        reserves: "reserves",
                        retainedEarnings: "retainedEarnings",
                        otherEquity: "otherEquity",
                        periodResult: "periodResult",
                        total: "total"
                    ),
                    liabilities: PostV1ConsolidationReportResponseStatementsBalanceSheetDetailLiabilities(
                        nonCurrent: "nonCurrent",
                        current: "current",
                        other: "other",
                        total: "total"
                    )
                )),
                profitLossDetail: Optional(PostV1ConsolidationReportResponseStatementsProfitLossDetail(
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
                ))
            ),
            trialBalance: [
                PostV1ConsolidationReportResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                ),
                PostV1ConsolidationReportResponseTrialBalanceItem(
                    code: "code",
                    type: "type",
                    closing: "closing",
                    period: "period"
                )
            ],
            nonControllingInterest: PostV1ConsolidationReportResponseNonControllingInterest(
                equity: "equity",
                result: "result"
            ),
            equityMethod: PostV1ConsolidationReportResponseEquityMethod(
                investmentsInAssociates: "investmentsInAssociates",
                shareOfAssociatesResult: "shareOfAssociatesResult"
            ),
            members: [
                PostV1ConsolidationReportResponseMembersItem(
                    companyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                ),
                PostV1ConsolidationReportResponseMembersItem(
                    companyId: "x",
                    name: "name",
                    baseCurrency: "baseCurrency",
                    ownershipPercent: "ownershipPercent",
                    method: .full,
                    fxFactor: "fxFactor",
                    rateFrom: "rateFrom",
                    rateTo: "rateTo",
                    totalAssets: "totalAssets",
                    netEquity: "netEquity",
                    periodResult: "periodResult"
                )
            ],
            eliminations: PostV1ConsolidationReportResponseEliminations(
                applied: [
                    PostV1ConsolidationReportResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount",
                        note: Optional("note")
                    ),
                    PostV1ConsolidationReportResponseEliminationsAppliedItem(
                        code: "code",
                        amount: "amount",
                        note: Optional("note")
                    )
                ],
                balanced: true,
                net: "net"
            ),
            intercompanyCandidates: [
                PostV1ConsolidationReportResponseIntercompanyCandidatesItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                ),
                PostV1ConsolidationReportResponseIntercompanyCandidatesItem(
                    memberCompanyId: "x",
                    memberName: "memberName",
                    partnerId: "x",
                    partnerName: "partnerName",
                    partnerCode: Nullable<String>.value("partnerCode"),
                    matchesCompanyId: "x",
                    matchesCompanyName: "matchesCompanyName",
                    matchedOn: .code
                )
            ]
        )
        let response = try await client.consolidation.postV1ConsolidationReport(
            request: .init(
                groupId: "x",
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
import Foundation
import Testing
import Api

@Suite("BillingClient Wire Tests") struct BillingClientWireTests {
    @Test func postV1BillingAccountGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "trialEndsAt",
                  "firstTopUpAt": "firstTopUpAt",
                  "lastChargedDate": "lastChargedDate",
                  "paymentsConfigured": true,
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedRequests": 1000000,
                      "requestOverageEur": "requestOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "trialDays": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingAccountGetResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<String>.value("trialEndsAt"),
            firstTopUpAt: Nullable<String>.value("firstTopUpAt"),
            lastChargedDate: Nullable<String>.value("lastChargedDate"),
            paymentsConfigured: true,
            monthToDate: PostV1BillingAccountGetResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": PostV1BillingAccountGetResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: PostV1BillingAccountGetResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.postV1BillingAccountGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingAccountGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "trialEndsAt",
                  "firstTopUpAt": "firstTopUpAt",
                  "lastChargedDate": "lastChargedDate",
                  "paymentsConfigured": true,
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedRequests": 1000000,
                      "requestOverageEur": "requestOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "trialDays": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingAccountGetResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<String>.value("trialEndsAt"),
            firstTopUpAt: Nullable<String>.value("firstTopUpAt"),
            lastChargedDate: Nullable<String>.value("lastChargedDate"),
            paymentsConfigured: true,
            monthToDate: PostV1BillingAccountGetResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": PostV1BillingAccountGetResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: PostV1BillingAccountGetResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.postV1BillingAccountGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingAccountSetPlan1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "trialEndsAt",
                  "firstTopUpAt": "firstTopUpAt",
                  "lastChargedDate": "lastChargedDate",
                  "paymentsConfigured": true,
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedRequests": 1000000,
                      "requestOverageEur": "requestOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "trialDays": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingAccountSetPlanResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<String>.value("trialEndsAt"),
            firstTopUpAt: Nullable<String>.value("firstTopUpAt"),
            lastChargedDate: Nullable<String>.value("lastChargedDate"),
            paymentsConfigured: true,
            monthToDate: PostV1BillingAccountSetPlanResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": PostV1BillingAccountSetPlanResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: PostV1BillingAccountSetPlanResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.postV1BillingAccountSetPlan(
            request: .init(plan: .starter),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingAccountSetPlan2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "trialEndsAt",
                  "firstTopUpAt": "firstTopUpAt",
                  "lastChargedDate": "lastChargedDate",
                  "paymentsConfigured": true,
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedRequests": 1000000,
                      "requestOverageEur": "requestOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "trialDays": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingAccountSetPlanResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<String>.value("trialEndsAt"),
            firstTopUpAt: Nullable<String>.value("firstTopUpAt"),
            lastChargedDate: Nullable<String>.value("lastChargedDate"),
            paymentsConfigured: true,
            monthToDate: PostV1BillingAccountSetPlanResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": PostV1BillingAccountSetPlanResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: PostV1BillingAccountSetPlanResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.postV1BillingAccountSetPlan(
            request: .init(plan: .starter),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingTopupCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "sessionId": "sessionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingTopupCreateResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.postV1BillingTopupCreate(
            request: .init(amountCents: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingTopupCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "sessionId": "sessionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1BillingTopupCreateResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.postV1BillingTopupCreate(
            request: .init(amountCents: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingTransactionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "usageDate",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1BillingTransactionsListResponse(
            rows: [
                PostV1BillingTransactionsListResponseRowsItem(
                    id: "id",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<String>.value("usageDate"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.billing.postV1BillingTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingTransactionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "usageDate",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "usageDate",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1BillingTransactionsListResponse(
            rows: [
                PostV1BillingTransactionsListResponseRowsItem(
                    id: "x",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<String>.value("usageDate"),
                    createdAt: "createdAt"
                ),
                PostV1BillingTransactionsListResponseRowsItem(
                    id: "x",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<String>.value("usageDate"),
                    createdAt: "createdAt"
                )
            ]
        )
        let response = try await client.billing.postV1BillingTransactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingUsageList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "companyId": "companyId",
                      "date": "date",
                      "metric": "api_request",
                      "quantity": 1.1
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
        let expectedResponse = PostV1BillingUsageListResponse(
            rows: [
                PostV1BillingUsageListResponseRowsItem(
                    companyId: "companyId",
                    date: "date",
                    metric: .apiRequest,
                    quantity: 1.1
                )
            ]
        )
        let response = try await client.billing.postV1BillingUsageList(
            request: .init(
                from: "from",
                to: "to"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1BillingUsageList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "companyId": "x",
                      "date": "date",
                      "metric": "api_request",
                      "quantity": 1.1
                    },
                    {
                      "companyId": "x",
                      "date": "date",
                      "metric": "api_request",
                      "quantity": 1.1
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
        let expectedResponse = PostV1BillingUsageListResponse(
            rows: [
                PostV1BillingUsageListResponseRowsItem(
                    companyId: "x",
                    date: "date",
                    metric: .apiRequest,
                    quantity: 1.1
                ),
                PostV1BillingUsageListResponseRowsItem(
                    companyId: "x",
                    date: "date",
                    metric: .apiRequest,
                    quantity: 1.1
                )
            ]
        )
        let response = try await client.billing.postV1BillingUsageList(
            request: .init(
                from: "from",
                to: "to"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
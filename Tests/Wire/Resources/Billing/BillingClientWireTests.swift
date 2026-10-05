import Foundation
import Testing
import Api

@Suite("BillingClient Wire Tests") struct BillingClientWireTests {
    @Test func accountGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
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
        let expectedResponse = AccountGetBillingResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountGetBillingResponseMonthToDate(
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
                "key": AccountGetBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: AccountGetBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.accountGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
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
        let expectedResponse = AccountGetBillingResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountGetBillingResponseMonthToDate(
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
                "plans": AccountGetBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: AccountGetBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.accountGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetPlan1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
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
        let expectedResponse = AccountSetPlanBillingResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetPlanBillingResponseMonthToDate(
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
                "key": AccountSetPlanBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: AccountSetPlanBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetPlan(
            request: .init(plan: .starter),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetPlan2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
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
        let expectedResponse = AccountSetPlanBillingResponse(
            plan: .starter,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetPlanBillingResponseMonthToDate(
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
                "plans": AccountSetPlanBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedRequests: 1000000,
                    requestOverageEur: "requestOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            topUp: AccountSetPlanBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetPlan(
            request: .init(plan: .starter),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func topupCreate1() async throws -> Void {
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
        let expectedResponse = TopupCreateBillingResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.topupCreate(
            request: .init(amountCents: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func topupCreate2() async throws -> Void {
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
        let expectedResponse = TopupCreateBillingResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.topupCreate(
            request: .init(amountCents: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func portalCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PortalCreateBillingResponse(
            url: "url"
        )
        let response = try await client.billing.portalCreate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func portalCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PortalCreateBillingResponse(
            url: "url"
        )
        let response = try await client.billing.portalCreate(
            request: .init(),
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
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "2026-07-01",
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
        let expectedResponse = TransactionsListBillingResponse(
            rows: [
                TransactionsListBillingResponseRowsItem(
                    id: "id",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.billing.transactionsList(
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
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "2023-01-15",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "type": "trial_grant",
                      "amountCents": 1000000,
                      "balanceAfterCents": 1000000,
                      "description": "description",
                      "reference": "reference",
                      "usageDate": "2023-01-15",
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
        let expectedResponse = TransactionsListBillingResponse(
            rows: [
                TransactionsListBillingResponseRowsItem(
                    id: "x",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                TransactionsListBillingResponseRowsItem(
                    id: "x",
                    type: .trialGrant,
                    amountCents: 1000000,
                    balanceAfterCents: 1000000,
                    description: "description",
                    reference: Nullable<String>.value("reference"),
                    usageDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ]
        )
        let response = try await client.billing.transactionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func usageList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "companyId": "companyId",
                      "date": "2026-07-01",
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
        let expectedResponse = UsageListBillingResponse(
            rows: [
                UsageListBillingResponseRowsItem(
                    companyId: "companyId",
                    date: CalendarDate("2026-07-01")!,
                    metric: .apiRequest,
                    quantity: 1.1
                )
            ]
        )
        let response = try await client.billing.usageList(
            request: .init(
                from: CalendarDate("2026-07-01")!,
                to: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func usageList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "companyId": "x",
                      "date": "2023-01-15",
                      "metric": "api_request",
                      "quantity": 1.1
                    },
                    {
                      "companyId": "x",
                      "date": "2023-01-15",
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
        let expectedResponse = UsageListBillingResponse(
            rows: [
                UsageListBillingResponseRowsItem(
                    companyId: "x",
                    date: CalendarDate("2023-01-15")!,
                    metric: .apiRequest,
                    quantity: 1.1
                ),
                UsageListBillingResponseRowsItem(
                    companyId: "x",
                    date: CalendarDate("2023-01-15")!,
                    metric: .apiRequest,
                    quantity: 1.1
                )
            ]
        )
        let response = try await client.billing.usageList(
            request: .init(
                from: CalendarDate("2023-01-15")!,
                to: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
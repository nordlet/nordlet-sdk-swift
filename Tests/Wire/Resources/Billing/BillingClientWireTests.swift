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
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountGetBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": AccountGetBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountGetBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountGetBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
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
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountGetBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": AccountGetBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountGetBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountGetBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
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
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetPlanBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": AccountSetPlanBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetPlanBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetPlanBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
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
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetPlanBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": AccountSetPlanBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetPlanBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetPlanBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetPlan(
            request: .init(plan: .starter),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetAccountType1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetAccountTypeBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetAccountTypeBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": AccountSetAccountTypeBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetAccountTypeBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetAccountTypeBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetAccountType(
            request: .init(accountType: .flatRate),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetAccountType2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetAccountTypeBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetAccountTypeBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": AccountSetAccountTypeBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetAccountTypeBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetAccountTypeBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetAccountType(
            request: .init(accountType: .flatRate),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetAutoTopUp1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetAutoTopUpBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetAutoTopUpBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": AccountSetAutoTopUpBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetAutoTopUpBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetAutoTopUpBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetAutoTopUp(
            request: .init(
                enabled: true,
                amountCents: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetAutoTopUp2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetAutoTopUpBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetAutoTopUpBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": AccountSetAutoTopUpBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetAutoTopUpBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetAutoTopUpBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetAutoTopUp(
            request: .init(
                enabled: true,
                amountCents: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetOverdraftCap1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetOverdraftCapBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetOverdraftCapBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": AccountSetOverdraftCapBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetOverdraftCapBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetOverdraftCapBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetOverdraftCap(
            request: .init(capCents: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func accountSetOverdraftCap2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = AccountSetOverdraftCapBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: AccountSetOverdraftCapBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": AccountSetOverdraftCapBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: AccountSetOverdraftCapBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: AccountSetOverdraftCapBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.accountSetOverdraftCap(
            request: .init(capCents: 1000000),
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

    @Test func topupConfirm1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = TopupConfirmBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: TopupConfirmBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": TopupConfirmBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: TopupConfirmBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: TopupConfirmBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.topupConfirm(
            request: .init(sessionId: "sessionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func topupConfirm2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = TopupConfirmBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: TopupConfirmBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": TopupConfirmBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: TopupConfirmBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: TopupConfirmBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.topupConfirm(
            request: .init(sessionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flatRateCreate1() async throws -> Void {
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
        let expectedResponse = FlatRateCreateBillingResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.flatRateCreate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flatRateCreate2() async throws -> Void {
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
        let expectedResponse = FlatRateCreateBillingResponse(
            url: "url",
            sessionId: "sessionId"
        )
        let response = try await client.billing.flatRateCreate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flatRateConfirm1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = FlatRateConfirmBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: FlatRateConfirmBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": FlatRateConfirmBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: FlatRateConfirmBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: FlatRateConfirmBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.flatRateConfirm(
            request: .init(sessionId: "sessionId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func flatRateConfirm2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = FlatRateConfirmBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: FlatRateConfirmBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": FlatRateConfirmBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: FlatRateConfirmBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: FlatRateConfirmBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.flatRateConfirm(
            request: .init(sessionId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2026-07-01T09:30:00Z",
                  "firstTopUpAt": "2026-07-01T09:30:00Z",
                  "lastChargedDate": "2026-07-01",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2026-07-01T09:30:00Z",
                  "paymentFailedAt": "2026-07-01T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "key": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = SubscriptionCancelBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: SubscriptionCancelBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "key": SubscriptionCancelBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: SubscriptionCancelBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: SubscriptionCancelBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.subscriptionCancel(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscriptionCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "plan": "starter",
                  "accountType": "flat_rate",
                  "status": "trial",
                  "balanceCents": 1000000,
                  "trialEndsAt": "2024-01-15T09:30:00Z",
                  "firstTopUpAt": "2024-01-15T09:30:00Z",
                  "lastChargedDate": "2023-01-15",
                  "paymentsConfigured": true,
                  "hasPaymentAccount": true,
                  "hasSubscription": true,
                  "subscriptionCancelAt": "2024-01-15T09:30:00Z",
                  "paymentFailedAt": "2024-01-15T09:30:00Z",
                  "paymentFailedInvoiceUrl": "paymentFailedInvoiceUrl",
                  "monthToDate": {
                    "from": "from",
                    "to": "to",
                    "apiRequests": 1000000,
                    "saleInvoices": 1000000,
                    "ocrPages": 1000000,
                    "fileBytes": 1.1,
                    "databaseBytes": 1.1,
                    "archivedCompanies": 1000000,
                    "estimatedTodayCents": 1000000
                  },
                  "plans": {
                    "plans": {
                      "monthlyFeeEur": "monthlyFeeEur",
                      "includedInvoices": 1000000,
                      "invoiceOverageEur": "invoiceOverageEur",
                      "includedDatabaseBytes": 1.1,
                      "includedFileBytes": 1.1
                    }
                  },
                  "apiRequestEur": "apiRequestEur",
                  "topUp": {
                    "minCents": 1000000,
                    "maxCents": 1000000
                  },
                  "autoTopUp": {
                    "enabled": true,
                    "amountCents": 1000000,
                    "pending": true
                  },
                  "overdraftCapCents": 1000000,
                  "overdraftCapMaxCents": 1000000,
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
        let expectedResponse = SubscriptionCancelBillingResponse(
            plan: .starter,
            accountType: .flatRate,
            status: .trial,
            balanceCents: 1000000,
            trialEndsAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            firstTopUpAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lastChargedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            paymentsConfigured: true,
            hasPaymentAccount: true,
            hasSubscription: true,
            subscriptionCancelAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            paymentFailedInvoiceUrl: Nullable<String>.value("paymentFailedInvoiceUrl"),
            monthToDate: SubscriptionCancelBillingResponseMonthToDate(
                from: "from",
                to: "to",
                apiRequests: 1000000,
                saleInvoices: 1000000,
                ocrPages: 1000000,
                fileBytes: 1.1,
                databaseBytes: 1.1,
                archivedCompanies: 1000000,
                estimatedTodayCents: 1000000
            ),
            plans: [
                "plans": SubscriptionCancelBillingResponsePlansValue(
                    monthlyFeeEur: "monthlyFeeEur",
                    includedInvoices: 1000000,
                    invoiceOverageEur: "invoiceOverageEur",
                    includedDatabaseBytes: 1.1,
                    includedFileBytes: 1.1
                )
            ],
            apiRequestEur: "apiRequestEur",
            topUp: SubscriptionCancelBillingResponseTopUp(
                minCents: 1000000,
                maxCents: 1000000
            ),
            autoTopUp: SubscriptionCancelBillingResponseAutoTopUp(
                enabled: true,
                amountCents: 1000000,
                pending: true
            ),
            overdraftCapCents: 1000000,
            overdraftCapMaxCents: 1000000,
            trialDays: 1000000
        )
        let response = try await client.billing.subscriptionCancel(
            request: .init(),
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
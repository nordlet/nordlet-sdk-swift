import Foundation
import Testing
import Api

@Suite("PublicClient Wire Tests") struct PublicClientWireTests {
    @Test func integrationRequests1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "received": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntegrationRequestsPublicResponse(
            received: true
        )
        let response = try await client.public.integrationRequests(
            request: .init(
                integration: "integration",
                name: "name",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func integrationRequests2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "received": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = IntegrationRequestsPublicResponse(
            received: true
        )
        let response = try await client.public.integrationRequests(
            request: .init(
                integration: "x",
                name: "x",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "number": "number",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "salesTaxPercent": "salesTaxPercent",
                  "salesTaxTotal": "salesTaxTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "paidOn": "paidOn",
                  "notes": "notes",
                  "payUrl": "payUrl",
                  "seller": {
                    "name": "name",
                    "vatCode": "vatCode",
                    "countryCode": "countryCode",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "email": "email",
                    "iban": "iban",
                    "bankName": "bankName",
                    "bankBic": "bankBic",
                    "bankCode": "bankCode",
                    "bankBranchCode": "bankBranchCode",
                    "bankAccountNumber": "bankAccountNumber"
                  },
                  "buyer": {
                    "name": "name",
                    "vatCode": "vatCode",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "email": "email"
                  },
                  "lines": [
                    {
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent",
                      "lineNet": "lineNet"
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
        let expectedResponse = InvoicesGetPublicResponse(
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            number: Nullable<String>.value("number"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            salesTaxPercent: Nullable<String>.value("salesTaxPercent"),
            salesTaxTotal: "salesTaxTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            paidOn: Nullable<String>.value("paidOn"),
            notes: Nullable<String>.value("notes"),
            payUrl: Nullable<String>.value("payUrl"),
            seller: InvoicesGetPublicResponseSeller(
                name: "name",
                vatCode: Nullable<String>.value("vatCode"),
                countryCode: Nullable<String>.value("countryCode"),
                address: InvoicesGetPublicResponseSellerAddress(
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode")
                ),
                email: Nullable<String>.value("email"),
                iban: Nullable<String>.value("iban"),
                bankName: Nullable<String>.value("bankName"),
                bankBic: Nullable<String>.value("bankBic"),
                bankCode: Nullable<String>.value("bankCode"),
                bankBranchCode: Nullable<String>.value("bankBranchCode"),
                bankAccountNumber: Nullable<String>.value("bankAccountNumber")
            ),
            buyer: InvoicesGetPublicResponseBuyer(
                name: "name",
                vatCode: Nullable<String>.value("vatCode"),
                address: InvoicesGetPublicResponseBuyerAddress(
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode")
                ),
                email: Nullable<String>.value("email")
            ),
            lines: [
                InvoicesGetPublicResponseLinesItem(
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: "vatRatePercent",
                    lineNet: "lineNet"
                )
            ]
        )
        let response = try await client.public.invoicesGet(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "number": "number",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "salesTaxPercent": "salesTaxPercent",
                  "salesTaxTotal": "salesTaxTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "paidOn": "paidOn",
                  "notes": "notes",
                  "payUrl": "payUrl",
                  "seller": {
                    "name": "name",
                    "vatCode": "vatCode",
                    "countryCode": "countryCode",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "email": "email",
                    "iban": "iban",
                    "bankName": "bankName",
                    "bankBic": "bankBic",
                    "bankCode": "bankCode",
                    "bankBranchCode": "bankBranchCode",
                    "bankAccountNumber": "bankAccountNumber"
                  },
                  "buyer": {
                    "name": "name",
                    "vatCode": "vatCode",
                    "address": {
                      "street": "street",
                      "city": "city",
                      "postalCode": "postalCode",
                      "countryCode": "countryCode"
                    },
                    "email": "email"
                  },
                  "lines": [
                    {
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent",
                      "lineNet": "lineNet"
                    },
                    {
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPrice": "unitPrice",
                      "vatRatePercent": "vatRatePercent",
                      "lineNet": "lineNet"
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
        let expectedResponse = InvoicesGetPublicResponse(
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            number: Nullable<String>.value("number"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            salesTaxPercent: Nullable<String>.value("salesTaxPercent"),
            salesTaxTotal: "salesTaxTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            paidOn: Nullable<String>.value("paidOn"),
            notes: Nullable<String>.value("notes"),
            payUrl: Nullable<String>.value("payUrl"),
            seller: InvoicesGetPublicResponseSeller(
                name: "name",
                vatCode: Nullable<String>.value("vatCode"),
                countryCode: Nullable<String>.value("countryCode"),
                address: InvoicesGetPublicResponseSellerAddress(
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode")
                ),
                email: Nullable<String>.value("email"),
                iban: Nullable<String>.value("iban"),
                bankName: Nullable<String>.value("bankName"),
                bankBic: Nullable<String>.value("bankBic"),
                bankCode: Nullable<String>.value("bankCode"),
                bankBranchCode: Nullable<String>.value("bankBranchCode"),
                bankAccountNumber: Nullable<String>.value("bankAccountNumber")
            ),
            buyer: InvoicesGetPublicResponseBuyer(
                name: "name",
                vatCode: Nullable<String>.value("vatCode"),
                address: InvoicesGetPublicResponseBuyerAddress(
                    street: Nullable<String>.value("street"),
                    city: Nullable<String>.value("city"),
                    postalCode: Nullable<String>.value("postalCode"),
                    countryCode: Nullable<String>.value("countryCode")
                ),
                email: Nullable<String>.value("email")
            ),
            lines: [
                InvoicesGetPublicResponseLinesItem(
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: "vatRatePercent",
                    lineNet: "lineNet"
                ),
                InvoicesGetPublicResponseLinesItem(
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPrice: Nullable<String>.value("unitPrice"),
                    vatRatePercent: "vatRatePercent",
                    lineNet: "lineNet"
                )
            ]
        )
        let response = try await client.public.invoicesGet(
            request: .init(token: "blackcurrant...."),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesCheckout1() async throws -> Void {
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
        let expectedResponse = InvoicesCheckoutPublicResponse(
            url: "url"
        )
        let response = try await client.public.invoicesCheckout(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesCheckout2() async throws -> Void {
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
        let expectedResponse = InvoicesCheckoutPublicResponse(
            url: "url"
        )
        let response = try await client.public.invoicesCheckout(
            request: .init(token: "blackcurrant...."),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPdf1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPdfPublicResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.public.invoicesPdf(
            request: .init(token: "token"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPdf2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPdfPublicResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.public.invoicesPdf(
            request: .init(token: "blackcurrant...."),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
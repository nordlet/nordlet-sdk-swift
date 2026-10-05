import Foundation
import Testing
import Api

@Suite("PurchasesClient Wire Tests") struct PurchasesClientWireTests {
    @Test func invoicesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "registrationDate": "2026-07-01",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "purchaseOrderId": "purchaseOrderId",
                  "operationTypeId": "operationTypeId",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesCreatePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2026-07-01")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesCreatePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesCreate(
            request: .init(
                partnerId: "partnerId",
                documentNumber: "documentNumber",
                documentDate: CalendarDate("2026-07-01")!,
                lines: [
                    InvoicesCreatePurchasesRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "registrationDate": "2023-01-15",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "purchaseOrderId": "x",
                  "operationTypeId": "x",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesCreatePurchasesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2023-01-15")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            purchaseOrderId: Nullable<String>.value("x"),
            operationTypeId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesCreatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                InvoicesCreatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesCreate(
            request: .init(
                partnerId: "x",
                documentNumber: "x",
                documentDate: CalendarDate("2023-01-15")!,
                lines: [
                    InvoicesCreatePurchasesRequestLinesItem(

                    ),
                    InvoicesCreatePurchasesRequestLinesItem(

                    )
                ]
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
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "registrationDate": "2026-07-01",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "purchaseOrderId": "purchaseOrderId",
                  "operationTypeId": "operationTypeId",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesGetPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2026-07-01")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesGetPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesGet(
            request: .init(id: "id"),
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
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "registrationDate": "2023-01-15",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "purchaseOrderId": "x",
                  "operationTypeId": "x",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesGetPurchasesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2023-01-15")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            purchaseOrderId: Nullable<String>.value("x"),
            operationTypeId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesGetPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                InvoicesGetPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "registrationDate": "2026-07-01",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "purchaseOrderId": "purchaseOrderId",
                  "operationTypeId": "operationTypeId",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesUpdatePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2026-07-01")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUpdatePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "registrationDate": "2023-01-15",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "purchaseOrderId": "x",
                  "operationTypeId": "x",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesUpdatePurchasesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2023-01-15")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            purchaseOrderId: Nullable<String>.value("x"),
            operationTypeId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUpdatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                InvoicesUpdatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesDeletePurchasesResponse(
            id: "id"
        )
        let response = try await client.purchases.invoicesDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesDeletePurchasesResponse(
            id: "x"
        )
        let response = try await client.purchases.invoicesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesRegister1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "registrationDate": "2026-07-01",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "purchaseOrderId": "purchaseOrderId",
                  "operationTypeId": "operationTypeId",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesRegisterPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2026-07-01")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesRegisterPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesRegister(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesRegister2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "invoice",
                  "status": "draft",
                  "paymentStatus": "unpaid",
                  "documentNumber": "documentNumber",
                  "documentDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "registrationDate": "2023-01-15",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "creditedInvoiceId": "x",
                  "purchaseOrderId": "x",
                  "operationTypeId": "x",
                  "notes": "notes",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "einvoiceNumber": "einvoiceNumber",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = InvoicesRegisterPurchasesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            documentNumber: "documentNumber",
            documentDate: CalendarDate("2023-01-15")!,
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            purchaseOrderId: Nullable<String>.value("x"),
            operationTypeId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesRegisterPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                InvoicesRegisterPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.invoicesRegister(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "2026-07-01",
                      "dueDate": "2026-07-01",
                      "registrationDate": "2026-07-01",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "creditedInvoiceId": "creditedInvoiceId",
                      "purchaseOrderId": "purchaseOrderId",
                      "operationTypeId": "operationTypeId",
                      "notes": "notes",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "einvoiceNumber": "einvoiceNumber",
                      "documentRef": "documentRef",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z",
                      "partnerName": "partnerName"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = InvoicesListPurchasesResponse(
            rows: [
                InvoicesListPurchasesResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: CalendarDate("2026-07-01")!,
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    registrationDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                    purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
                    operationTypeId: Nullable<String>.value("operationTypeId"),
                    notes: Nullable<String>.value("notes"),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.purchases.invoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "registrationDate": "2023-01-15",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "creditedInvoiceId": "x",
                      "purchaseOrderId": "x",
                      "operationTypeId": "x",
                      "notes": "notes",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "einvoiceNumber": "einvoiceNumber",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "invoice",
                      "status": "draft",
                      "paymentStatus": "unpaid",
                      "documentNumber": "documentNumber",
                      "documentDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "registrationDate": "2023-01-15",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "creditedInvoiceId": "x",
                      "purchaseOrderId": "x",
                      "operationTypeId": "x",
                      "notes": "notes",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "einvoiceNumber": "einvoiceNumber",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = InvoicesListPurchasesResponse(
            rows: [
                InvoicesListPurchasesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: CalendarDate("2023-01-15")!,
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    purchaseOrderId: Nullable<String>.value("x"),
                    operationTypeId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                ),
                InvoicesListPurchasesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    documentNumber: "documentNumber",
                    documentDate: CalendarDate("2023-01-15")!,
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    registrationDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    purchaseOrderId: Nullable<String>.value("x"),
                    operationTypeId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.purchases.invoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersCreatePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCreatePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersCreate(
            request: .init(
                partnerId: "partnerId",
                orderDate: CalendarDate("2026-07-01")!,
                lines: [
                    OrdersCreatePurchasesRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersCreatePurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCreatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersCreatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersCreate(
            request: .init(
                partnerId: "x",
                orderDate: CalendarDate("2023-01-15")!,
                lines: [
                    OrdersCreatePurchasesRequestLinesItem(

                    ),
                    OrdersCreatePurchasesRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersUpdatePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersUpdatePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersUpdatePurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersUpdatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersUpdatePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersGetPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersGetPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersGetPurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersGetPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersGetPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "2026-07-01",
                      "expectedDate": "2026-07-01",
                      "warehouseId": "warehouseId",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "2026-07-01T09:30:00Z",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z",
                      "partnerName": "partnerName"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = OrdersListPurchasesResponse(
            rows: [
                OrdersListPurchasesResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: CalendarDate("2026-07-01")!,
                    expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.purchases.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "2023-01-15",
                      "expectedDate": "2023-01-15",
                      "warehouseId": "x",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "status": "draft",
                      "orderNumber": "orderNumber",
                      "orderDate": "2023-01-15",
                      "expectedDate": "2023-01-15",
                      "warehouseId": "x",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "approvedBy": "approvedBy",
                      "approvedAt": "2024-01-15T09:30:00Z",
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "partnerName": "partnerName"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = OrdersListPurchasesResponse(
            rows: [
                OrdersListPurchasesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: CalendarDate("2023-01-15")!,
                    expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                ),
                OrdersListPurchasesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    status: .draft,
                    orderNumber: "orderNumber",
                    orderDate: CalendarDate("2023-01-15")!,
                    expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    warehouseId: Nullable<String>.value("x"),
                    currency: "currency",
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    approvedBy: Nullable<String>.value("approvedBy"),
                    approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.purchases.ordersList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersSubmit1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersSubmitPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersSubmitPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersSubmit(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersSubmit2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersSubmitPurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersSubmitPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersSubmitPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersSubmit(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersApprove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersApprovePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersApprovePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersApprove(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersApprove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersApprovePurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersApprovePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersApprovePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersApprove(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersReject1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersRejectPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersRejectPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersReject(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersReject2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersRejectPurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersRejectPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersRejectPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersReject(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersCancelPurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCancelPurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersCancelPurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersCancelPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersCancelPurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersClose1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2026-07-01",
                  "expectedDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "itemId": "itemId",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersClosePurchasesResponse(
            id: "id",
            partnerId: "partnerId",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2026-07-01")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            warehouseId: Nullable<String>.value("warehouseId"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersClosePurchasesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersClose(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersClose2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "status": "draft",
                  "orderNumber": "orderNumber",
                  "orderDate": "2023-01-15",
                  "expectedDate": "2023-01-15",
                  "warehouseId": "x",
                  "currency": "currency",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "approvedBy": "approvedBy",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "receivedQty": "receivedQty",
                      "remainingQty": "remainingQty",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "unitPriceInclVat": "unitPriceInclVat",
                      "vatRatePercent": "vatRatePercent",
                      "vatClassifierCode": "vatClassifierCode",
                      "costCenterId": "x",
                      "projectId": "x",
                      "accountCode": "accountCode",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000
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
        let expectedResponse = OrdersClosePurchasesResponse(
            id: "x",
            partnerId: "x",
            status: .draft,
            orderNumber: "orderNumber",
            orderDate: CalendarDate("2023-01-15")!,
            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            warehouseId: Nullable<String>.value("x"),
            currency: "currency",
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            approvedBy: Nullable<String>.value("approvedBy"),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                OrdersClosePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                ),
                OrdersClosePurchasesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    receivedQty: "receivedQty",
                    remainingQty: "remainingQty",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    accountCode: Nullable<String>.value("accountCode"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.purchases.ordersClose(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersDeletePurchasesResponse(
            id: "id"
        )
        let response = try await client.purchases.ordersDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ordersDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = OrdersDeletePurchasesResponse(
            id: "x"
        )
        let response = try await client.purchases.ordersDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "orderLineId": "orderLineId",
                      "itemId": "itemId",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "stockMovementId"
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
        let expectedResponse = ReceiptsCreatePurchasesResponse(
            id: "id",
            orderId: "orderId",
            receiptNumber: "receiptNumber",
            receiptDate: CalendarDate("2026-07-01")!,
            warehouseId: "warehouseId",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsCreatePurchasesResponseLinesItem(
                    id: "id",
                    orderLineId: "orderLineId",
                    itemId: Nullable<String>.value("itemId"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("stockMovementId")
                )
            ]
        )
        let response = try await client.purchases.receiptsCreate(
            request: .init(
                orderId: "orderId",
                receiptDate: CalendarDate("2026-07-01")!,
                lines: [
                    ReceiptsCreatePurchasesRequestLinesItem(
                        orderLineId: "orderLineId",
                        quantity: "121.0000"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "2023-01-15",
                  "warehouseId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
                    },
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
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
        let expectedResponse = ReceiptsCreatePurchasesResponse(
            id: "x",
            orderId: "x",
            receiptNumber: "receiptNumber",
            receiptDate: CalendarDate("2023-01-15")!,
            warehouseId: "x",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsCreatePurchasesResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                ),
                ReceiptsCreatePurchasesResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.purchases.receiptsCreate(
            request: .init(
                orderId: "x",
                receiptDate: CalendarDate("2023-01-15")!,
                lines: [
                    ReceiptsCreatePurchasesRequestLinesItem(
                        orderLineId: "x",
                        quantity: "quantity"
                    ),
                    ReceiptsCreatePurchasesRequestLinesItem(
                        orderLineId: "x",
                        quantity: "quantity"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "orderId": "orderId",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "2026-07-01",
                  "warehouseId": "warehouseId",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "lines": [
                    {
                      "id": "id",
                      "orderLineId": "orderLineId",
                      "itemId": "itemId",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "stockMovementId"
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
        let expectedResponse = ReceiptsGetPurchasesResponse(
            id: "id",
            orderId: "orderId",
            receiptNumber: "receiptNumber",
            receiptDate: CalendarDate("2026-07-01")!,
            warehouseId: "warehouseId",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsGetPurchasesResponseLinesItem(
                    id: "id",
                    orderLineId: "orderLineId",
                    itemId: Nullable<String>.value("itemId"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("stockMovementId")
                )
            ]
        )
        let response = try await client.purchases.receiptsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "orderId": "x",
                  "receiptNumber": "receiptNumber",
                  "receiptDate": "2023-01-15",
                  "warehouseId": "x",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "lines": [
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
                    },
                    {
                      "id": "x",
                      "orderLineId": "x",
                      "itemId": "x",
                      "quantity": "quantity",
                      "unitCost": "unitCost",
                      "stockMovementId": "x"
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
        let expectedResponse = ReceiptsGetPurchasesResponse(
            id: "x",
            orderId: "x",
            receiptNumber: "receiptNumber",
            receiptDate: CalendarDate("2023-01-15")!,
            warehouseId: "x",
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ReceiptsGetPurchasesResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                ),
                ReceiptsGetPurchasesResponseLinesItem(
                    id: "x",
                    orderLineId: "x",
                    itemId: Nullable<String>.value("x"),
                    quantity: "quantity",
                    unitCost: Nullable<String>.value("unitCost"),
                    stockMovementId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.purchases.receiptsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "orderId": "orderId",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "2026-07-01",
                      "warehouseId": "warehouseId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "key": "value"
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
        let expectedResponse = ReceiptsListPurchasesResponse(
            rows: [
                ReceiptsListPurchasesResponseRowsItem(
                    id: "id",
                    orderId: "orderId",
                    receiptNumber: "receiptNumber",
                    receiptDate: CalendarDate("2026-07-01")!,
                    warehouseId: "warehouseId",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.purchases.receiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func receiptsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "orderId": "x",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "2023-01-15",
                      "warehouseId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "orderId": "x",
                      "receiptNumber": "receiptNumber",
                      "receiptDate": "2023-01-15",
                      "warehouseId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    }
                  ],
                  "page": 1000000,
                  "pageSize": 1000000,
                  "total": 1000000,
                  "totals": {
                    "totals": "totals"
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
        let expectedResponse = ReceiptsListPurchasesResponse(
            rows: [
                ReceiptsListPurchasesResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    receiptNumber: "receiptNumber",
                    receiptDate: CalendarDate("2023-01-15")!,
                    warehouseId: "x",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ReceiptsListPurchasesResponseRowsItem(
                    id: "x",
                    orderId: "x",
                    receiptNumber: "receiptNumber",
                    receiptDate: CalendarDate("2023-01-15")!,
                    warehouseId: "x",
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.purchases.receiptsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesMatch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "orderId": "orderId",
                  "status": "matched",
                  "rows": [
                    {
                      "itemId": "itemId",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
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
        let expectedResponse = InvoicesMatchPurchasesResponse(
            invoiceId: "invoiceId",
            orderId: "orderId",
            status: .matched,
            rows: [
                InvoicesMatchPurchasesResponseRowsItem(
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                )
            ]
        )
        let response = try await client.purchases.invoicesMatch(
            request: .init(invoiceId: "invoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesMatch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "orderId": "x",
                  "status": "matched",
                  "rows": [
                    {
                      "itemId": "x",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
                    },
                    {
                      "itemId": "x",
                      "description": "description",
                      "orderedQty": "orderedQty",
                      "receivedQty": "receivedQty",
                      "invoicedQty": "invoicedQty",
                      "orderedUnitPrice": "orderedUnitPrice",
                      "invoicedUnitPrice": "invoicedUnitPrice",
                      "priceVariancePercent": "priceVariancePercent",
                      "status": "matched"
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
        let expectedResponse = InvoicesMatchPurchasesResponse(
            invoiceId: "x",
            orderId: "x",
            status: .matched,
            rows: [
                InvoicesMatchPurchasesResponseRowsItem(
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                ),
                InvoicesMatchPurchasesResponseRowsItem(
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    orderedQty: "orderedQty",
                    receivedQty: "receivedQty",
                    invoicedQty: "invoicedQty",
                    orderedUnitPrice: Nullable<String>.value("orderedUnitPrice"),
                    invoicedUnitPrice: Nullable<String>.value("invoicedUnitPrice"),
                    priceVariancePercent: Nullable<String>.value("priceVariancePercent"),
                    status: .matched
                )
            ]
        )
        let response = try await client.purchases.invoicesMatch(
            request: .init(invoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
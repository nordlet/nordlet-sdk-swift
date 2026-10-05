import Foundation
import Testing
import Api

@Suite("CaptureClient Wire Tests") struct CaptureClientWireTests {
    @Test func settingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsGetCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsGetCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsUpdateCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsUpdateCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsUpdate(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsRegenerateIntake1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsRegenerateIntakeCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsRegenerateIntake(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func settingsRegenerateIntake2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "intakeEnabled": true,
                  "captureAutoExtract": true,
                  "intakeAddress": "intakeAddress",
                  "ocrConfigured": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SettingsRegenerateIntakeCaptureResponse(
            intakeEnabled: true,
            captureAutoExtract: true,
            intakeAddress: Nullable<String>.value("intakeAddress"),
            ocrConfigured: true
        )
        let response = try await client.capture.settingsRegenerateIntake(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inboundEmail1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "accepted": 1000000,
                  "skipped": 1000000,
                  "captureIds": [
                    "captureIds"
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
        let expectedResponse = InboundEmailCaptureResponse(
            accepted: 1000000,
            skipped: 1000000,
            captureIds: [
                "captureIds"
            ]
        )
        let response = try await client.capture.inboundEmail(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func inboundEmail2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "accepted": 1000000,
                  "skipped": 1000000,
                  "captureIds": [
                    "captureIds",
                    "captureIds"
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
        let expectedResponse = InboundEmailCaptureResponse(
            accepted: 1000000,
            skipped: 1000000,
            captureIds: [
                "captureIds",
                "captureIds"
            ]
        )
        let response = try await client.capture.inboundEmail(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsUpload1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2026-07-01",
                    "dueDate": "2026-07-01",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": null,
                        "unitPriceExclVat": null,
                        "vatRatePercent": null,
                        "lineNet": null,
                        "lineVat": null,
                        "lineGross": null
                      }
                    ]
                  },
                  "matchedPartnerId": "matchedPartnerId",
                  "purchaseInvoiceId": "purchaseInvoiceId",
                  "error": "error",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsUploadCaptureResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsUploadCaptureResponseExtraction>.value(DocumentsUploadCaptureResponseExtraction(
                supplier: DocumentsUploadCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsUploadCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: .null,
                        unitPriceExclVat: .null,
                        vatRatePercent: .null,
                        lineNet: .null,
                        lineVat: .null,
                        lineGross: .null
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("matchedPartnerId"),
            purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsUpload(
            request: .init(
                fileName: "fileName",
                mimeType: "mimeType",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsUpload2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "fileId": "x",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2023-01-15",
                    "dueDate": "2023-01-15",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      },
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      }
                    ]
                  },
                  "matchedPartnerId": "x",
                  "purchaseInvoiceId": "x",
                  "error": "error",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsUploadCaptureResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsUploadCaptureResponseExtraction>.value(DocumentsUploadCaptureResponseExtraction(
                supplier: DocumentsUploadCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsUploadCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    DocumentsUploadCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("x"),
            purchaseInvoiceId: Nullable<String>.value("x"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsUpload(
            request: .init(
                fileName: "x",
                mimeType: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsExtract1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2026-07-01",
                    "dueDate": "2026-07-01",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": null,
                        "unitPriceExclVat": null,
                        "vatRatePercent": null,
                        "lineNet": null,
                        "lineVat": null,
                        "lineGross": null
                      }
                    ]
                  },
                  "matchedPartnerId": "matchedPartnerId",
                  "purchaseInvoiceId": "purchaseInvoiceId",
                  "error": "error",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsExtractCaptureResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsExtractCaptureResponseExtraction>.value(DocumentsExtractCaptureResponseExtraction(
                supplier: DocumentsExtractCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsExtractCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: .null,
                        unitPriceExclVat: .null,
                        vatRatePercent: .null,
                        lineNet: .null,
                        lineVat: .null,
                        lineGross: .null
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("matchedPartnerId"),
            purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsExtract(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsExtract2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "fileId": "x",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2023-01-15",
                    "dueDate": "2023-01-15",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      },
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      }
                    ]
                  },
                  "matchedPartnerId": "x",
                  "purchaseInvoiceId": "x",
                  "error": "error",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsExtractCaptureResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsExtractCaptureResponseExtraction>.value(DocumentsExtractCaptureResponseExtraction(
                supplier: DocumentsExtractCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsExtractCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    DocumentsExtractCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("x"),
            purchaseInvoiceId: Nullable<String>.value("x"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsExtract(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2026-07-01",
                    "dueDate": "2026-07-01",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": null,
                        "unitPriceExclVat": null,
                        "vatRatePercent": null,
                        "lineNet": null,
                        "lineVat": null,
                        "lineGross": null
                      }
                    ]
                  },
                  "matchedPartnerId": "matchedPartnerId",
                  "purchaseInvoiceId": "purchaseInvoiceId",
                  "error": "error",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsGetCaptureResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsGetCaptureResponseExtraction>.value(DocumentsGetCaptureResponseExtraction(
                supplier: DocumentsGetCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsGetCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: .null,
                        unitPriceExclVat: .null,
                        vatRatePercent: .null,
                        lineNet: .null,
                        lineVat: .null,
                        lineGross: .null
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("matchedPartnerId"),
            purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "fileId": "x",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "status": "pending",
                  "provider": "provider",
                  "model": "model",
                  "pagesProcessed": 1000000,
                  "extraction": {
                    "supplier": {
                      "name": "name",
                      "code": "code",
                      "vatCode": "vatCode",
                      "countryCode": "countryCode",
                      "iban": "iban"
                    },
                    "documentNumber": "documentNumber",
                    "documentDate": "2023-01-15",
                    "dueDate": "2023-01-15",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "notes": "notes",
                    "lines": [
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      },
                      {
                        "description": "description",
                        "quantity": "quantity",
                        "unit": "unit",
                        "unitPriceExclVat": "unitPriceExclVat",
                        "vatRatePercent": "vatRatePercent",
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross"
                      }
                    ]
                  },
                  "matchedPartnerId": "x",
                  "purchaseInvoiceId": "x",
                  "error": "error",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z",
                  "rawText": "rawText"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsGetCaptureResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<DocumentsGetCaptureResponseExtraction>.value(DocumentsGetCaptureResponseExtraction(
                supplier: DocumentsGetCaptureResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    DocumentsGetCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    DocumentsGetCaptureResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    )
                ]
            )),
            matchedPartnerId: Nullable<String>.value("x"),
            purchaseInvoiceId: Nullable<String>.value("x"),
            error: Nullable<String>.value("error"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.documentsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "fileId": "fileId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "status": "pending",
                      "provider": "provider",
                      "model": "model",
                      "pagesProcessed": 1000000,
                      "extraction": {
                        "supplier": {
                          "name": null,
                          "code": null,
                          "vatCode": null,
                          "countryCode": null,
                          "iban": null
                        },
                        "documentNumber": null,
                        "documentDate": "2026-07-01",
                        "dueDate": "2026-07-01",
                        "currency": null,
                        "netTotal": null,
                        "vatTotal": null,
                        "grossTotal": null,
                        "notes": null,
                        "lines": [
                          {
                            "description": "description",
                            "quantity": "quantity",
                            "unit": null,
                            "unitPriceExclVat": null,
                            "vatRatePercent": null,
                            "lineNet": null,
                            "lineVat": null,
                            "lineGross": null
                          }
                        ]
                      },
                      "matchedPartnerId": "matchedPartnerId",
                      "purchaseInvoiceId": "purchaseInvoiceId",
                      "error": "error",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = DocumentsListCaptureResponse(
            rows: [
                DocumentsListCaptureResponseRowsItem(
                    id: "id",
                    fileId: "fileId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<DocumentsListCaptureResponseRowsItemExtraction>.value(DocumentsListCaptureResponseRowsItemExtraction(
                        supplier: DocumentsListCaptureResponseRowsItemExtractionSupplier(
                            name: .null,
                            code: .null,
                            vatCode: .null,
                            countryCode: .null,
                            iban: .null
                        ),
                        documentNumber: .null,
                        documentDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                        dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                        currency: .null,
                        netTotal: .null,
                        vatTotal: .null,
                        grossTotal: .null,
                        notes: .null,
                        lines: [
                            DocumentsListCaptureResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: .null,
                                unitPriceExclVat: .null,
                                vatRatePercent: .null,
                                lineNet: .null,
                                lineVat: .null,
                                lineGross: .null
                            )
                        ]
                    )),
                    matchedPartnerId: Nullable<String>.value("matchedPartnerId"),
                    purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
                    error: Nullable<String>.value("error"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.capture.documentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "status": "pending",
                      "provider": "provider",
                      "model": "model",
                      "pagesProcessed": 1000000,
                      "extraction": {
                        "supplier": {
                          "name": "name",
                          "code": "code",
                          "vatCode": "vatCode",
                          "countryCode": "countryCode",
                          "iban": "iban"
                        },
                        "documentNumber": "documentNumber",
                        "documentDate": "2023-01-15",
                        "dueDate": "2023-01-15",
                        "currency": "currency",
                        "netTotal": "netTotal",
                        "vatTotal": "vatTotal",
                        "grossTotal": "grossTotal",
                        "notes": "notes",
                        "lines": [
                          {
                            "description": "description",
                            "quantity": "quantity",
                            "unit": "unit",
                            "unitPriceExclVat": "unitPriceExclVat",
                            "vatRatePercent": "vatRatePercent",
                            "lineNet": "lineNet",
                            "lineVat": "lineVat",
                            "lineGross": "lineGross"
                          },
                          {
                            "description": "description",
                            "quantity": "quantity",
                            "unit": "unit",
                            "unitPriceExclVat": "unitPriceExclVat",
                            "vatRatePercent": "vatRatePercent",
                            "lineNet": "lineNet",
                            "lineVat": "lineVat",
                            "lineGross": "lineGross"
                          }
                        ]
                      },
                      "matchedPartnerId": "x",
                      "purchaseInvoiceId": "x",
                      "error": "error",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "status": "pending",
                      "provider": "provider",
                      "model": "model",
                      "pagesProcessed": 1000000,
                      "extraction": {
                        "supplier": {
                          "name": "name",
                          "code": "code",
                          "vatCode": "vatCode",
                          "countryCode": "countryCode",
                          "iban": "iban"
                        },
                        "documentNumber": "documentNumber",
                        "documentDate": "2023-01-15",
                        "dueDate": "2023-01-15",
                        "currency": "currency",
                        "netTotal": "netTotal",
                        "vatTotal": "vatTotal",
                        "grossTotal": "grossTotal",
                        "notes": "notes",
                        "lines": [
                          {
                            "description": "description",
                            "quantity": "quantity",
                            "unit": "unit",
                            "unitPriceExclVat": "unitPriceExclVat",
                            "vatRatePercent": "vatRatePercent",
                            "lineNet": "lineNet",
                            "lineVat": "lineVat",
                            "lineGross": "lineGross"
                          },
                          {
                            "description": "description",
                            "quantity": "quantity",
                            "unit": "unit",
                            "unitPriceExclVat": "unitPriceExclVat",
                            "vatRatePercent": "vatRatePercent",
                            "lineNet": "lineNet",
                            "lineVat": "lineVat",
                            "lineGross": "lineGross"
                          }
                        ]
                      },
                      "matchedPartnerId": "x",
                      "purchaseInvoiceId": "x",
                      "error": "error",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = DocumentsListCaptureResponse(
            rows: [
                DocumentsListCaptureResponseRowsItem(
                    id: "x",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<DocumentsListCaptureResponseRowsItemExtraction>.value(DocumentsListCaptureResponseRowsItemExtraction(
                        supplier: DocumentsListCaptureResponseRowsItemExtractionSupplier(
                            name: Nullable<String>.value("name"),
                            code: Nullable<String>.value("code"),
                            vatCode: Nullable<String>.value("vatCode"),
                            countryCode: Nullable<String>.value("countryCode"),
                            iban: Nullable<String>.value("iban")
                        ),
                        documentNumber: Nullable<String>.value("documentNumber"),
                        documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                        dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                        currency: Nullable<String>.value("currency"),
                        netTotal: Nullable<String>.value("netTotal"),
                        vatTotal: Nullable<String>.value("vatTotal"),
                        grossTotal: Nullable<String>.value("grossTotal"),
                        notes: Nullable<String>.value("notes"),
                        lines: [
                            DocumentsListCaptureResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            ),
                            DocumentsListCaptureResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            )
                        ]
                    )),
                    matchedPartnerId: Nullable<String>.value("x"),
                    purchaseInvoiceId: Nullable<String>.value("x"),
                    error: Nullable<String>.value("error"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                DocumentsListCaptureResponseRowsItem(
                    id: "x",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<DocumentsListCaptureResponseRowsItemExtraction>.value(DocumentsListCaptureResponseRowsItemExtraction(
                        supplier: DocumentsListCaptureResponseRowsItemExtractionSupplier(
                            name: Nullable<String>.value("name"),
                            code: Nullable<String>.value("code"),
                            vatCode: Nullable<String>.value("vatCode"),
                            countryCode: Nullable<String>.value("countryCode"),
                            iban: Nullable<String>.value("iban")
                        ),
                        documentNumber: Nullable<String>.value("documentNumber"),
                        documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                        dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                        currency: Nullable<String>.value("currency"),
                        netTotal: Nullable<String>.value("netTotal"),
                        vatTotal: Nullable<String>.value("vatTotal"),
                        grossTotal: Nullable<String>.value("grossTotal"),
                        notes: Nullable<String>.value("notes"),
                        lines: [
                            DocumentsListCaptureResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            ),
                            DocumentsListCaptureResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            )
                        ]
                    )),
                    matchedPartnerId: Nullable<String>.value("x"),
                    purchaseInvoiceId: Nullable<String>.value("x"),
                    error: Nullable<String>.value("error"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.capture.documentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsDeleteCaptureResponse(
            deleted: true
        )
        let response = try await client.capture.documentsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "deleted": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsDeleteCaptureResponse(
            deleted: true
        )
        let response = try await client.capture.documentsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsConfirm1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capture": {
                    "id": "id",
                    "fileId": "fileId",
                    "fileName": "fileName",
                    "mimeType": "mimeType",
                    "sizeBytes": 1000000,
                    "status": "pending",
                    "provider": "provider",
                    "model": "model",
                    "pagesProcessed": 1000000,
                    "extraction": {
                      "supplier": {
                        "name": null,
                        "code": null,
                        "vatCode": null,
                        "countryCode": null,
                        "iban": null
                      },
                      "documentNumber": "documentNumber",
                      "documentDate": "2026-07-01",
                      "dueDate": "2026-07-01",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "notes": "notes",
                      "lines": [
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": null,
                          "unitPriceExclVat": null,
                          "vatRatePercent": null,
                          "lineNet": null,
                          "lineVat": null,
                          "lineGross": null
                        }
                      ]
                    },
                    "matchedPartnerId": "matchedPartnerId",
                    "purchaseInvoiceId": "purchaseInvoiceId",
                    "error": "error",
                    "createdAt": "2026-07-01T09:30:00Z",
                    "updatedAt": "2026-07-01T09:30:00Z"
                  },
                  "invoice": {
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
                        "itemId": null,
                        "description": "description",
                        "unit": "unit",
                        "quantity": "quantity",
                        "unitPriceExclVat": null,
                        "unitPriceInclVat": null,
                        "vatRatePercent": "vatRatePercent",
                        "vatClassifierCode": null,
                        "costCenterId": null,
                        "projectId": null,
                        "accountCode": null,
                        "lineNet": "lineNet",
                        "lineVat": "lineVat",
                        "lineGross": "lineGross",
                        "sortOrder": 1000000
                      }
                    ]
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
        let expectedResponse = DocumentsConfirmCaptureResponse(
            capture: DocumentsConfirmCaptureResponseCapture(
                id: "id",
                fileId: "fileId",
                fileName: "fileName",
                mimeType: "mimeType",
                sizeBytes: 1000000,
                status: .pending,
                provider: Nullable<String>.value("provider"),
                model: Nullable<String>.value("model"),
                pagesProcessed: Nullable<Int64>.value(1000000),
                extraction: Nullable<DocumentsConfirmCaptureResponseCaptureExtraction>.value(DocumentsConfirmCaptureResponseCaptureExtraction(
                    supplier: DocumentsConfirmCaptureResponseCaptureExtractionSupplier(
                        name: .null,
                        code: .null,
                        vatCode: .null,
                        countryCode: .null,
                        iban: .null
                    ),
                    documentNumber: Nullable<String>.value("documentNumber"),
                    documentDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    currency: Nullable<String>.value("currency"),
                    netTotal: Nullable<String>.value("netTotal"),
                    vatTotal: Nullable<String>.value("vatTotal"),
                    grossTotal: Nullable<String>.value("grossTotal"),
                    notes: Nullable<String>.value("notes"),
                    lines: [
                        DocumentsConfirmCaptureResponseCaptureExtractionLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: .null,
                            unitPriceExclVat: .null,
                            vatRatePercent: .null,
                            lineNet: .null,
                            lineVat: .null,
                            lineGross: .null
                        )
                    ]
                )),
                matchedPartnerId: Nullable<String>.value("matchedPartnerId"),
                purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId"),
                error: Nullable<String>.value("error"),
                createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
            ),
            invoice: DocumentsConfirmCaptureResponseInvoice(
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
                    DocumentsConfirmCaptureResponseInvoiceLinesItem(
                        id: "id",
                        itemId: .null,
                        description: "description",
                        unit: "unit",
                        quantity: "quantity",
                        unitPriceExclVat: .null,
                        unitPriceInclVat: .null,
                        vatRatePercent: "vatRatePercent",
                        vatClassifierCode: .null,
                        costCenterId: .null,
                        projectId: .null,
                        accountCode: .null,
                        lineNet: "lineNet",
                        lineVat: "lineVat",
                        lineGross: "lineGross",
                        sortOrder: 1000000
                    )
                ]
            )
        )
        let response = try await client.capture.documentsConfirm(
            request: .init(
                id: "id",
                documentNumber: "documentNumber",
                documentDate: CalendarDate("2026-07-01")!,
                lines: [
                    DocumentsConfirmCaptureRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func documentsConfirm2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capture": {
                    "id": "x",
                    "fileId": "x",
                    "fileName": "fileName",
                    "mimeType": "mimeType",
                    "sizeBytes": 1000000,
                    "status": "pending",
                    "provider": "provider",
                    "model": "model",
                    "pagesProcessed": 1000000,
                    "extraction": {
                      "supplier": {
                        "name": "name",
                        "code": "code",
                        "vatCode": "vatCode",
                        "countryCode": "countryCode",
                        "iban": "iban"
                      },
                      "documentNumber": "documentNumber",
                      "documentDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "currency": "currency",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "notes": "notes",
                      "lines": [
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPriceExclVat": "unitPriceExclVat",
                          "vatRatePercent": "vatRatePercent",
                          "lineNet": "lineNet",
                          "lineVat": "lineVat",
                          "lineGross": "lineGross"
                        },
                        {
                          "description": "description",
                          "quantity": "quantity",
                          "unit": "unit",
                          "unitPriceExclVat": "unitPriceExclVat",
                          "vatRatePercent": "vatRatePercent",
                          "lineNet": "lineNet",
                          "lineVat": "lineVat",
                          "lineGross": "lineGross"
                        }
                      ]
                    },
                    "matchedPartnerId": "x",
                    "purchaseInvoiceId": "x",
                    "error": "error",
                    "createdAt": "2024-01-15T09:30:00Z",
                    "updatedAt": "2024-01-15T09:30:00Z"
                  },
                  "invoice": {
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
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = DocumentsConfirmCaptureResponse(
            capture: DocumentsConfirmCaptureResponseCapture(
                id: "x",
                fileId: "x",
                fileName: "fileName",
                mimeType: "mimeType",
                sizeBytes: 1000000,
                status: .pending,
                provider: Nullable<String>.value("provider"),
                model: Nullable<String>.value("model"),
                pagesProcessed: Nullable<Int64>.value(1000000),
                extraction: Nullable<DocumentsConfirmCaptureResponseCaptureExtraction>.value(DocumentsConfirmCaptureResponseCaptureExtraction(
                    supplier: DocumentsConfirmCaptureResponseCaptureExtractionSupplier(
                        name: Nullable<String>.value("name"),
                        code: Nullable<String>.value("code"),
                        vatCode: Nullable<String>.value("vatCode"),
                        countryCode: Nullable<String>.value("countryCode"),
                        iban: Nullable<String>.value("iban")
                    ),
                    documentNumber: Nullable<String>.value("documentNumber"),
                    documentDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: Nullable<String>.value("currency"),
                    netTotal: Nullable<String>.value("netTotal"),
                    vatTotal: Nullable<String>.value("vatTotal"),
                    grossTotal: Nullable<String>.value("grossTotal"),
                    notes: Nullable<String>.value("notes"),
                    lines: [
                        DocumentsConfirmCaptureResponseCaptureExtractionLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: Nullable<String>.value("unit"),
                            unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                            vatRatePercent: Nullable<String>.value("vatRatePercent"),
                            lineNet: Nullable<String>.value("lineNet"),
                            lineVat: Nullable<String>.value("lineVat"),
                            lineGross: Nullable<String>.value("lineGross")
                        ),
                        DocumentsConfirmCaptureResponseCaptureExtractionLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: Nullable<String>.value("unit"),
                            unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                            vatRatePercent: Nullable<String>.value("vatRatePercent"),
                            lineNet: Nullable<String>.value("lineNet"),
                            lineVat: Nullable<String>.value("lineVat"),
                            lineGross: Nullable<String>.value("lineGross")
                        )
                    ]
                )),
                matchedPartnerId: Nullable<String>.value("x"),
                purchaseInvoiceId: Nullable<String>.value("x"),
                error: Nullable<String>.value("error"),
                createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            invoice: DocumentsConfirmCaptureResponseInvoice(
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
                    DocumentsConfirmCaptureResponseInvoiceLinesItem(
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
                    DocumentsConfirmCaptureResponseInvoiceLinesItem(
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
        )
        let response = try await client.capture.documentsConfirm(
            request: .init(
                id: "x",
                documentNumber: "x",
                documentDate: CalendarDate("2023-01-15")!,
                lines: [
                    DocumentsConfirmCaptureRequestLinesItem(

                    ),
                    DocumentsConfirmCaptureRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
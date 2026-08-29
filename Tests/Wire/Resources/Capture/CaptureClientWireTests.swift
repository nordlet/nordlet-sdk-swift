import Foundation
import Testing
import Api

@Suite("CaptureClient Wire Tests") struct CaptureClientWireTests {
    @Test func readAVendorBillOrReceiptAndReturnAnEditablePurchaseInvoiceDraft1() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsUploadResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsUploadResponseExtraction>.value(PostV1CaptureDocumentsUploadResponseExtraction(
                supplier: PostV1CaptureDocumentsUploadResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsUploadResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.readAVendorBillOrReceiptAndReturnAnEditablePurchaseInvoiceDraft(
            request: .init(
                fileName: "fileName",
                mimeType: "mimeType",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func readAVendorBillOrReceiptAndReturnAnEditablePurchaseInvoiceDraft2() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsUploadResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsUploadResponseExtraction>.value(PostV1CaptureDocumentsUploadResponseExtraction(
                supplier: PostV1CaptureDocumentsUploadResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsUploadResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    PostV1CaptureDocumentsUploadResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.readAVendorBillOrReceiptAndReturnAnEditablePurchaseInvoiceDraft(
            request: .init(
                fileName: "x",
                mimeType: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reReadAStoredCaptureReplacingThePreviousDraft1() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsExtractResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsExtractResponseExtraction>.value(PostV1CaptureDocumentsExtractResponseExtraction(
                supplier: PostV1CaptureDocumentsExtractResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsExtractResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.reReadAStoredCaptureReplacingThePreviousDraft(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reReadAStoredCaptureReplacingThePreviousDraft2() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsExtractResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsExtractResponseExtraction>.value(PostV1CaptureDocumentsExtractResponseExtraction(
                supplier: PostV1CaptureDocumentsExtractResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsExtractResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    PostV1CaptureDocumentsExtractResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.reReadAStoredCaptureReplacingThePreviousDraft(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsGet1() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsGetResponse(
            id: "id",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsGetResponseExtraction>.value(PostV1CaptureDocumentsGetResponseExtraction(
                supplier: PostV1CaptureDocumentsGetResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsGetResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.postV1CaptureDocumentsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsGet2() async throws -> Void {
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
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsGetResponse(
            id: "x",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            status: .pending,
            provider: Nullable<String>.value("provider"),
            model: Nullable<String>.value("model"),
            pagesProcessed: Nullable<Int64>.value(1000000),
            extraction: Nullable<PostV1CaptureDocumentsGetResponseExtraction>.value(PostV1CaptureDocumentsGetResponseExtraction(
                supplier: PostV1CaptureDocumentsGetResponseExtractionSupplier(
                    name: Nullable<String>.value("name"),
                    code: Nullable<String>.value("code"),
                    vatCode: Nullable<String>.value("vatCode"),
                    countryCode: Nullable<String>.value("countryCode"),
                    iban: Nullable<String>.value("iban")
                ),
                documentNumber: Nullable<String>.value("documentNumber"),
                documentDate: Nullable<String>.value("documentDate"),
                dueDate: Nullable<String>.value("dueDate"),
                currency: Nullable<String>.value("currency"),
                netTotal: Nullable<String>.value("netTotal"),
                vatTotal: Nullable<String>.value("vatTotal"),
                grossTotal: Nullable<String>.value("grossTotal"),
                notes: Nullable<String>.value("notes"),
                lines: [
                    PostV1CaptureDocumentsGetResponseExtractionLinesItem(
                        description: "description",
                        quantity: "quantity",
                        unit: Nullable<String>.value("unit"),
                        unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                        vatRatePercent: Nullable<String>.value("vatRatePercent"),
                        lineNet: Nullable<String>.value("lineNet"),
                        lineVat: Nullable<String>.value("lineVat"),
                        lineGross: Nullable<String>.value("lineGross")
                    ),
                    PostV1CaptureDocumentsGetResponseExtractionLinesItem(
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            rawText: Nullable<String>.value("rawText")
        )
        let response = try await client.capture.postV1CaptureDocumentsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsList1() async throws -> Void {
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
                        "documentDate": null,
                        "dueDate": null,
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1CaptureDocumentsListResponse(
            rows: [
                PostV1CaptureDocumentsListResponseRowsItem(
                    id: "id",
                    fileId: "fileId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<PostV1CaptureDocumentsListResponseRowsItemExtraction>.value(PostV1CaptureDocumentsListResponseRowsItemExtraction(
                        supplier: PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier(
                            name: .null,
                            code: .null,
                            vatCode: .null,
                            countryCode: .null,
                            iban: .null
                        ),
                        documentNumber: .null,
                        documentDate: .null,
                        dueDate: .null,
                        currency: .null,
                        netTotal: .null,
                        vatTotal: .null,
                        grossTotal: .null,
                        notes: .null,
                        lines: [
                            PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.capture.postV1CaptureDocumentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsList2() async throws -> Void {
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
                        "documentDate": "documentDate",
                        "dueDate": "dueDate",
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
                        "documentDate": "documentDate",
                        "dueDate": "dueDate",
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1CaptureDocumentsListResponse(
            rows: [
                PostV1CaptureDocumentsListResponseRowsItem(
                    id: "x",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<PostV1CaptureDocumentsListResponseRowsItemExtraction>.value(PostV1CaptureDocumentsListResponseRowsItemExtraction(
                        supplier: PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier(
                            name: Nullable<String>.value("name"),
                            code: Nullable<String>.value("code"),
                            vatCode: Nullable<String>.value("vatCode"),
                            countryCode: Nullable<String>.value("countryCode"),
                            iban: Nullable<String>.value("iban")
                        ),
                        documentNumber: Nullable<String>.value("documentNumber"),
                        documentDate: Nullable<String>.value("documentDate"),
                        dueDate: Nullable<String>.value("dueDate"),
                        currency: Nullable<String>.value("currency"),
                        netTotal: Nullable<String>.value("netTotal"),
                        vatTotal: Nullable<String>.value("vatTotal"),
                        grossTotal: Nullable<String>.value("grossTotal"),
                        notes: Nullable<String>.value("notes"),
                        lines: [
                            PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            ),
                            PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1CaptureDocumentsListResponseRowsItem(
                    id: "x",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    status: .pending,
                    provider: Nullable<String>.value("provider"),
                    model: Nullable<String>.value("model"),
                    pagesProcessed: Nullable<Int64>.value(1000000),
                    extraction: Nullable<PostV1CaptureDocumentsListResponseRowsItemExtraction>.value(PostV1CaptureDocumentsListResponseRowsItemExtraction(
                        supplier: PostV1CaptureDocumentsListResponseRowsItemExtractionSupplier(
                            name: Nullable<String>.value("name"),
                            code: Nullable<String>.value("code"),
                            vatCode: Nullable<String>.value("vatCode"),
                            countryCode: Nullable<String>.value("countryCode"),
                            iban: Nullable<String>.value("iban")
                        ),
                        documentNumber: Nullable<String>.value("documentNumber"),
                        documentDate: Nullable<String>.value("documentDate"),
                        dueDate: Nullable<String>.value("dueDate"),
                        currency: Nullable<String>.value("currency"),
                        netTotal: Nullable<String>.value("netTotal"),
                        vatTotal: Nullable<String>.value("vatTotal"),
                        grossTotal: Nullable<String>.value("grossTotal"),
                        notes: Nullable<String>.value("notes"),
                        lines: [
                            PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem(
                                description: "description",
                                quantity: "quantity",
                                unit: Nullable<String>.value("unit"),
                                unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                                vatRatePercent: Nullable<String>.value("vatRatePercent"),
                                lineNet: Nullable<String>.value("lineNet"),
                                lineVat: Nullable<String>.value("lineVat"),
                                lineGross: Nullable<String>.value("lineGross")
                            ),
                            PostV1CaptureDocumentsListResponseRowsItemExtractionLinesItem(
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.capture.postV1CaptureDocumentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsDelete1() async throws -> Void {
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
        let expectedResponse = PostV1CaptureDocumentsDeleteResponse(
            deleted: true
        )
        let response = try await client.capture.postV1CaptureDocumentsDelete(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1CaptureDocumentsDelete2() async throws -> Void {
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
        let expectedResponse = PostV1CaptureDocumentsDeleteResponse(
            deleted: true
        )
        let response = try await client.capture.postV1CaptureDocumentsDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func saveTheReviewedDraftAsAPurchaseInvoiceAndAttachTheOriginalDocument1() async throws -> Void {
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
                      "documentDate": "documentDate",
                      "dueDate": "dueDate",
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
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "invoice": {
                    "id": "id",
                    "partnerId": "partnerId",
                    "type": "invoice",
                    "status": "draft",
                    "paymentStatus": "unpaid",
                    "documentNumber": "documentNumber",
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
                    "registrationDate": "registrationDate",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "paidAmount": "paidAmount",
                    "journalTransactionId": "journalTransactionId",
                    "creditedInvoiceId": "creditedInvoiceId",
                    "purchaseOrderId": "purchaseOrderId",
                    "notes": "notes",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsConfirmResponse(
            capture: PostV1CaptureDocumentsConfirmResponseCapture(
                id: "id",
                fileId: "fileId",
                fileName: "fileName",
                mimeType: "mimeType",
                sizeBytes: 1000000,
                status: .pending,
                provider: Nullable<String>.value("provider"),
                model: Nullable<String>.value("model"),
                pagesProcessed: Nullable<Int64>.value(1000000),
                extraction: Nullable<PostV1CaptureDocumentsConfirmResponseCaptureExtraction>.value(PostV1CaptureDocumentsConfirmResponseCaptureExtraction(
                    supplier: PostV1CaptureDocumentsConfirmResponseCaptureExtractionSupplier(
                        name: .null,
                        code: .null,
                        vatCode: .null,
                        countryCode: .null,
                        iban: .null
                    ),
                    documentNumber: Nullable<String>.value("documentNumber"),
                    documentDate: Nullable<String>.value("documentDate"),
                    dueDate: Nullable<String>.value("dueDate"),
                    currency: Nullable<String>.value("currency"),
                    netTotal: Nullable<String>.value("netTotal"),
                    vatTotal: Nullable<String>.value("vatTotal"),
                    grossTotal: Nullable<String>.value("grossTotal"),
                    notes: Nullable<String>.value("notes"),
                    lines: [
                        PostV1CaptureDocumentsConfirmResponseCaptureExtractionLinesItem(
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
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            ),
            invoice: PostV1CaptureDocumentsConfirmResponseInvoice(
                id: "id",
                partnerId: "partnerId",
                type: .invoice,
                status: .draft,
                paymentStatus: .unpaid,
                documentNumber: "documentNumber",
                documentDate: "documentDate",
                dueDate: Nullable<String>.value("dueDate"),
                registrationDate: Nullable<String>.value("registrationDate"),
                currency: "currency",
                netTotal: "netTotal",
                vatTotal: "vatTotal",
                grossTotal: "grossTotal",
                paidAmount: "paidAmount",
                journalTransactionId: Nullable<String>.value("journalTransactionId"),
                creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                purchaseOrderId: Nullable<String>.value("purchaseOrderId"),
                notes: Nullable<String>.value("notes"),
                createdAt: "createdAt",
                updatedAt: "updatedAt",
                lines: [
                    PostV1CaptureDocumentsConfirmResponseInvoiceLinesItem(
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
        let response = try await client.capture.saveTheReviewedDraftAsAPurchaseInvoiceAndAttachTheOriginalDocument(
            request: .init(
                id: "id",
                documentNumber: "documentNumber",
                documentDate: "documentDate",
                lines: [
                    PostV1CaptureDocumentsConfirmRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func saveTheReviewedDraftAsAPurchaseInvoiceAndAttachTheOriginalDocument2() async throws -> Void {
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
                      "documentDate": "documentDate",
                      "dueDate": "dueDate",
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
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt"
                  },
                  "invoice": {
                    "id": "x",
                    "partnerId": "x",
                    "type": "invoice",
                    "status": "draft",
                    "paymentStatus": "unpaid",
                    "documentNumber": "documentNumber",
                    "documentDate": "documentDate",
                    "dueDate": "dueDate",
                    "registrationDate": "registrationDate",
                    "currency": "currency",
                    "netTotal": "netTotal",
                    "vatTotal": "vatTotal",
                    "grossTotal": "grossTotal",
                    "paidAmount": "paidAmount",
                    "journalTransactionId": "x",
                    "creditedInvoiceId": "x",
                    "purchaseOrderId": "x",
                    "notes": "notes",
                    "createdAt": "createdAt",
                    "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1CaptureDocumentsConfirmResponse(
            capture: PostV1CaptureDocumentsConfirmResponseCapture(
                id: "x",
                fileId: "x",
                fileName: "fileName",
                mimeType: "mimeType",
                sizeBytes: 1000000,
                status: .pending,
                provider: Nullable<String>.value("provider"),
                model: Nullable<String>.value("model"),
                pagesProcessed: Nullable<Int64>.value(1000000),
                extraction: Nullable<PostV1CaptureDocumentsConfirmResponseCaptureExtraction>.value(PostV1CaptureDocumentsConfirmResponseCaptureExtraction(
                    supplier: PostV1CaptureDocumentsConfirmResponseCaptureExtractionSupplier(
                        name: Nullable<String>.value("name"),
                        code: Nullable<String>.value("code"),
                        vatCode: Nullable<String>.value("vatCode"),
                        countryCode: Nullable<String>.value("countryCode"),
                        iban: Nullable<String>.value("iban")
                    ),
                    documentNumber: Nullable<String>.value("documentNumber"),
                    documentDate: Nullable<String>.value("documentDate"),
                    dueDate: Nullable<String>.value("dueDate"),
                    currency: Nullable<String>.value("currency"),
                    netTotal: Nullable<String>.value("netTotal"),
                    vatTotal: Nullable<String>.value("vatTotal"),
                    grossTotal: Nullable<String>.value("grossTotal"),
                    notes: Nullable<String>.value("notes"),
                    lines: [
                        PostV1CaptureDocumentsConfirmResponseCaptureExtractionLinesItem(
                            description: "description",
                            quantity: "quantity",
                            unit: Nullable<String>.value("unit"),
                            unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                            vatRatePercent: Nullable<String>.value("vatRatePercent"),
                            lineNet: Nullable<String>.value("lineNet"),
                            lineVat: Nullable<String>.value("lineVat"),
                            lineGross: Nullable<String>.value("lineGross")
                        ),
                        PostV1CaptureDocumentsConfirmResponseCaptureExtractionLinesItem(
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
                createdAt: "createdAt",
                updatedAt: "updatedAt"
            ),
            invoice: PostV1CaptureDocumentsConfirmResponseInvoice(
                id: "x",
                partnerId: "x",
                type: .invoice,
                status: .draft,
                paymentStatus: .unpaid,
                documentNumber: "documentNumber",
                documentDate: "documentDate",
                dueDate: Nullable<String>.value("dueDate"),
                registrationDate: Nullable<String>.value("registrationDate"),
                currency: "currency",
                netTotal: "netTotal",
                vatTotal: "vatTotal",
                grossTotal: "grossTotal",
                paidAmount: "paidAmount",
                journalTransactionId: Nullable<String>.value("x"),
                creditedInvoiceId: Nullable<String>.value("x"),
                purchaseOrderId: Nullable<String>.value("x"),
                notes: Nullable<String>.value("notes"),
                createdAt: "createdAt",
                updatedAt: "updatedAt",
                lines: [
                    PostV1CaptureDocumentsConfirmResponseInvoiceLinesItem(
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
                    PostV1CaptureDocumentsConfirmResponseInvoiceLinesItem(
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
        let response = try await client.capture.saveTheReviewedDraftAsAPurchaseInvoiceAndAttachTheOriginalDocument(
            request: .init(
                id: "x",
                documentNumber: "x",
                documentDate: "documentDate",
                lines: [
                    PostV1CaptureDocumentsConfirmRequestLinesItem(

                    ),
                    PostV1CaptureDocumentsConfirmRequestLinesItem(

                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
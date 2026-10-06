import Foundation
import Testing
import Api

@Suite("SalesClient Wire Tests") struct SalesClientWireTests {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesCreateSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesCreateSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesCreateSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesCreateSalesResponseVatEvidence>.value(InvoicesCreateSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesCreateSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesCreateSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesCreateSalesResponseVatEvidenceVies>.value(InvoicesCreateSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesCreateSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesCreateSalesResponseVatEvidenceRateTable>.value(InvoicesCreateSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesCreateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesCreate(
            request: .init(
                partnerId: "partnerId",
                lines: [
                    InvoicesCreateSalesRequestLinesItem(

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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesCreateSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesCreateSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesCreateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesCreateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesCreateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesCreateSalesResponseVatEvidence>.value(InvoicesCreateSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesCreateSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesCreateSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesCreateSalesResponseVatEvidenceVies>.value(InvoicesCreateSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesCreateSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesCreateSalesResponseVatEvidenceRateTable>.value(InvoicesCreateSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesCreateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesCreateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesCreate(
            request: .init(
                partnerId: "x",
                lines: [
                    InvoicesCreateSalesRequestLinesItem(

                    ),
                    InvoicesCreateSalesRequestLinesItem(

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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesGetSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesGetSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesGetSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesGetSalesResponseVatEvidence>.value(InvoicesGetSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesGetSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesGetSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesGetSalesResponseVatEvidenceVies>.value(InvoicesGetSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesGetSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesGetSalesResponseVatEvidenceRateTable>.value(InvoicesGetSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesGetSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesGet(
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesGetSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesGetSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesGetSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesGetSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesGetSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesGetSalesResponseVatEvidence>.value(InvoicesGetSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesGetSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesGetSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesGetSalesResponseVatEvidenceVies>.value(InvoicesGetSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesGetSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesGetSalesResponseVatEvidenceRateTable>.value(InvoicesGetSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesGetSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesGetSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesGet(
            request: .init(id: "x"),
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
        let expectedResponse = InvoicesPdfSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.invoicesPdf(
            request: .init(id: "id"),
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
        let expectedResponse = InvoicesPdfSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.invoicesPdf(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "to": "to"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesSendSalesResponse(
            sent: true,
            to: "to"
        )
        let response = try await client.sales.invoicesSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "to": "to"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesSendSalesResponse(
            sent: true,
            to: "to"
        )
        let response = try await client.sales.invoicesSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPeppolXml1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "senderId": "senderId",
                  "receiverId": "receiverId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPeppolXmlSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            senderId: "senderId",
            receiverId: "receiverId"
        )
        let response = try await client.sales.invoicesPeppolXml(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPeppolXml2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "senderId": "senderId",
                  "receiverId": "receiverId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPeppolXmlSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            senderId: "senderId",
            receiverId: "receiverId"
        )
        let response = try await client.sales.invoicesPeppolXml(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPeppolSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "messageId": "messageId",
                  "receiverId": "receiverId",
                  "fileId": "fileId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPeppolSendSalesResponse(
            sent: true,
            messageId: "messageId",
            receiverId: "receiverId",
            fileId: Nullable<String>.value("fileId")
        )
        let response = try await client.sales.invoicesPeppolSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPeppolSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "messageId": "messageId",
                  "receiverId": "receiverId",
                  "fileId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPeppolSendSalesResponse(
            sent: true,
            messageId: "messageId",
            receiverId: "receiverId",
            fileId: Nullable<String>.value("x")
        )
        let response = try await client.sales.invoicesPeppolSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceXml1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "format",
                  "system": "system",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "warnings": [
                    "warnings"
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
        let expectedResponse = InvoicesEinvoiceXmlSalesResponse(
            format: "format",
            system: "system",
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.sales.invoicesEinvoiceXml(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceXml2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "format": "format",
                  "system": "system",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = InvoicesEinvoiceXmlSalesResponse(
            format: "format",
            system: "system",
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.sales.invoicesEinvoiceXml(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "format": "format",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "fileId",
                  "warnings": [
                    "warnings"
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
        let expectedResponse = InvoicesEinvoiceSendSalesResponse(
            sent: true,
            system: "system",
            format: "format",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: Nullable<String>.value("fileId"),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.sales.invoicesEinvoiceSend(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "format": "format",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "x",
                  "warnings": [
                    "warnings",
                    "warnings"
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
        let expectedResponse = InvoicesEinvoiceSendSalesResponse(
            sent: true,
            system: "system",
            format: "format",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: Nullable<String>.value("x"),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.sales.invoicesEinvoiceSend(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceStatus1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesEinvoiceStatusSalesResponse(
            system: "system",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.sales.invoicesEinvoiceStatus(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesEinvoiceStatus2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "transport": "bridge",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesEinvoiceStatusSalesResponse(
            system: "system",
            transport: .bridge,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.sales.invoicesEinvoiceStatus(
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesUpdateSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesUpdateSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUpdateSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesUpdateSalesResponseVatEvidence>.value(InvoicesUpdateSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesUpdateSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesUpdateSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesUpdateSalesResponseVatEvidenceVies>.value(InvoicesUpdateSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesUpdateSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesUpdateSalesResponseVatEvidenceRateTable>.value(InvoicesUpdateSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesUpdateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesUpdate(
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesUpdateSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesUpdateSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUpdateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesUpdateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesUpdateSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesUpdateSalesResponseVatEvidence>.value(InvoicesUpdateSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesUpdateSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesUpdateSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesUpdateSalesResponseVatEvidenceVies>.value(InvoicesUpdateSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesUpdateSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesUpdateSalesResponseVatEvidenceRateTable>.value(InvoicesUpdateSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesUpdateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesUpdateSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesUpdate(
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
        let expectedResponse = InvoicesDeleteSalesResponse(
            id: "id"
        )
        let response = try await client.sales.invoicesDelete(
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
        let expectedResponse = InvoicesDeleteSalesResponse(
            id: "x"
        )
        let response = try await client.sales.invoicesDelete(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesIssue1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesIssueSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesIssueSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesIssueSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesIssueSalesResponseVatEvidence>.value(InvoicesIssueSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesIssueSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesIssueSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesIssueSalesResponseVatEvidenceVies>.value(InvoicesIssueSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesIssueSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesIssueSalesResponseVatEvidenceRateTable>.value(InvoicesIssueSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesIssueSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesIssue2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesIssueSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesIssueSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesIssueSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesIssueSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesIssueSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesIssueSalesResponseVatEvidence>.value(InvoicesIssueSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesIssueSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesIssueSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesIssueSalesResponseVatEvidenceVies>.value(InvoicesIssueSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesIssueSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesIssueSalesResponseVatEvidenceRateTable>.value(InvoicesIssueSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesIssueSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesIssueSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesLock1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesLockSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesLockSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesLockSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesLockSalesResponseVatEvidence>.value(InvoicesLockSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesLockSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesLockSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesLockSalesResponseVatEvidenceVies>.value(InvoicesLockSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesLockSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesLockSalesResponseVatEvidenceRateTable>.value(InvoicesLockSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesLockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesLock(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesLock2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesLockSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesLockSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesLockSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesLockSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesLockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesLockSalesResponseVatEvidence>.value(InvoicesLockSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesLockSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesLockSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesLockSalesResponseVatEvidenceVies>.value(InvoicesLockSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesLockSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesLockSalesResponseVatEvidenceRateTable>.value(InvoicesLockSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesLockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesLockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesLock(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesUnlock1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesUnlockSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesUnlockSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUnlockSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesUnlockSalesResponseVatEvidence>.value(InvoicesUnlockSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesUnlockSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesUnlockSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesUnlockSalesResponseVatEvidenceVies>.value(InvoicesUnlockSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesUnlockSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesUnlockSalesResponseVatEvidenceRateTable>.value(InvoicesUnlockSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesUnlockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesUnlock(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesUnlock2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesUnlockSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesUnlockSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesUnlockSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesUnlockSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesUnlockSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesUnlockSalesResponseVatEvidence>.value(InvoicesUnlockSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesUnlockSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesUnlockSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesUnlockSalesResponseVatEvidenceVies>.value(InvoicesUnlockSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesUnlockSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesUnlockSalesResponseVatEvidenceRateTable>.value(InvoicesUnlockSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesUnlockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesUnlockSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesUnlock(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentLink1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "source": "template"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentLinkSalesResponse(
            url: Nullable<String>.value("url"),
            source: Nullable<InvoicesPaymentLinkSalesResponseSource>.value(.template)
        )
        let response = try await client.sales.invoicesPaymentLink(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentLink2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url",
                  "source": "template"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentLinkSalesResponse(
            url: Nullable<String>.value("url"),
            source: Nullable<InvoicesPaymentLinkSalesResponseSource>.value(.template)
        )
        let response = try await client.sales.invoicesPaymentLink(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentSettingsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentSettingsGetSalesResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.invoicesPaymentSettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentSettingsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentSettingsGetSalesResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.invoicesPaymentSettingsGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentSettingsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentSettingsUpdateSalesResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.invoicesPaymentSettingsUpdate(
            request: .init(paymentLinkTemplate: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesPaymentSettingsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "paymentLinkTemplate": "paymentLinkTemplate"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoicesPaymentSettingsUpdateSalesResponse(
            paymentLinkTemplate: Nullable<String>.value("paymentLinkTemplate")
        )
        let response = try await client.sales.invoicesPaymentSettingsUpdate(
            request: .init(paymentLinkTemplate: .null),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionSchedulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "invoiceId": "invoiceId",
                      "invoiceLineId": "invoiceLineId",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "2026-07-01",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "journalTransactionId",
                      "recognizedAt": "2026-07-01T09:30:00Z",
                      "sortOrder": 1000000,
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = RecognitionSchedulesListSalesResponse(
            rows: [
                RecognitionSchedulesListSalesResponseRowsItem(
                    id: "id",
                    invoiceId: "invoiceId",
                    invoiceLineId: "invoiceLineId",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    recognizedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    sortOrder: 1000000,
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.recognitionSchedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionSchedulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceLineId": "x",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "2023-01-15",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "x",
                      "recognizedAt": "2024-01-15T09:30:00Z",
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceLineId": "x",
                      "method": "point_in_time",
                      "status": "pending",
                      "scheduleDate": "2023-01-15",
                      "description": "description",
                      "amount": "amount",
                      "journalTransactionId": "x",
                      "recognizedAt": "2024-01-15T09:30:00Z",
                      "sortOrder": 1000000,
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = RecognitionSchedulesListSalesResponse(
            rows: [
                RecognitionSchedulesListSalesResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceLineId: "x",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("x"),
                    recognizedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                RecognitionSchedulesListSalesResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceLineId: "x",
                    method: .pointInTime,
                    status: .pending,
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount",
                    journalTransactionId: Nullable<String>.value("x"),
                    recognizedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    sortOrder: 1000000,
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.recognitionSchedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesApplyAdvance1() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2026-07-01",
                  "dueDate": "2026-07-01",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "appliedToInvoiceId": "appliedToInvoiceId",
                  "creditedInvoiceId": "creditedInvoiceId",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2026-07-01",
                  "agreementId": "agreementId",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "operationTypeId",
                  "documentSeriesId": "documentSeriesId",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2026-07-01T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2026-07-01T09:30:00Z",
                  "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "costCenterId",
                      "projectId": "projectId",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2026-07-01",
                      "recognitionEndDate": "2026-07-01",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2026-07-01",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2026-07-01T09:30:00Z",
                    "issueDate": "2026-07-01",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "id",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2026-07-01T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2026-07-01T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "importId",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2026-07-01T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": null
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
        let expectedResponse = InvoicesApplyAdvanceSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
            creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            agreementId: Nullable<String>.value("agreementId"),
            vatScheme: Nullable<InvoicesApplyAdvanceSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("operationTypeId"),
            documentSeriesId: Nullable<String>.value("documentSeriesId"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesApplyAdvanceSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("costCenterId"),
                    projectId: Nullable<String>.value("projectId"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    recognitionMilestones: Nullable<[InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidence>.value(InvoicesApplyAdvanceSalesResponseVatEvidence(
                capturedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2026-07-01")!,
                scheme: InvoicesApplyAdvanceSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesApplyAdvanceSalesResponseVatEvidencePartner(
                    id: "id",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidenceVies>.value(InvoicesApplyAdvanceSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesApplyAdvanceSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidenceRateTable>.value(InvoicesApplyAdvanceSalesResponseVatEvidenceRateTable(
                    importId: "importId",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesApplyAdvanceSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: .null
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesApplyAdvance(
            request: .init(
                advanceId: "advanceId",
                invoiceId: "invoiceId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func invoicesApplyAdvance2() async throws -> Void {
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
                  "series": "series",
                  "number": 1000000,
                  "fullNumber": "fullNumber",
                  "issueDate": "2023-01-15",
                  "dueDate": "2023-01-15",
                  "currency": "currency",
                  "fxRate": "fxRate",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "appliedToInvoiceId": "x",
                  "creditedInvoiceId": "x",
                  "creditedInvoiceReference": "creditedInvoiceReference",
                  "creditedInvoiceDate": "2023-01-15",
                  "agreementId": "x",
                  "vatScheme": "domestic",
                  "intrastatTransportMode": "intrastatTransportMode",
                  "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                  "intrastatRegion": "intrastatRegion",
                  "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                  "vatCountryCode": "vatCountryCode",
                  "deemedSupplier": true,
                  "notes": "notes",
                  "documentRef": "documentRef",
                  "operationTypeId": "x",
                  "documentSeriesId": "x",
                  "seriesLabel": "seriesLabel",
                  "discountPercent": "discountPercent",
                  "orderNumber": "orderNumber",
                  "issuedByName": "issuedByName",
                  "issuedByTitle": "issuedByTitle",
                  "receivedByName": "receivedByName",
                  "receivedByTitle": "receivedByTitle",
                  "lockedAt": "2024-01-15T09:30:00Z",
                  "lockedBy": "lockedBy",
                  "payToken": "payToken",
                  "einvoiceSystem": "einvoiceSystem",
                  "einvoiceTransport": "einvoiceTransport",
                  "einvoiceMessageId": "einvoiceMessageId",
                  "einvoiceNumber": "einvoiceNumber",
                  "einvoiceStatus": "einvoiceStatus",
                  "einvoiceDetail": "einvoiceDetail",
                  "einvoiceSentAt": "2024-01-15T09:30:00Z",
                  "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
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
                      "vatExemptionBasis": "vatExemptionBasis",
                      "costCenterId": "x",
                      "projectId": "x",
                      "lineNet": "lineNet",
                      "lineVat": "lineVat",
                      "lineGross": "lineGross",
                      "sortOrder": 1000000,
                      "recognitionMethod": "point_in_time",
                      "recognitionStartDate": "2023-01-15",
                      "recognitionEndDate": "2023-01-15",
                      "recognitionMilestones": [
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        },
                        {
                          "description": "description",
                          "expectedDate": "2023-01-15",
                          "percent": "percent"
                        }
                      ],
                      "standaloneSellingPrice": "standaloneSellingPrice",
                      "allocatedNet": "allocatedNet",
                      "refundEstimatePercent": "refundEstimatePercent"
                    }
                  ],
                  "vatEvidence": {
                    "capturedAt": "2024-01-15T09:30:00Z",
                    "issueDate": "2023-01-15",
                    "scheme": {
                      "vatScheme": "vatScheme",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true
                    },
                    "partner": {
                      "id": "x",
                      "vatCode": "vatCode",
                      "vatValid": true,
                      "vatValidatedAt": "2024-01-15T09:30:00Z"
                    },
                    "vies": {
                      "valid": true,
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "name": "name",
                      "address": "address",
                      "requestIdentifier": "requestIdentifier",
                      "checkedAt": "2024-01-15T09:30:00Z"
                    },
                    "location": {
                      "billingCountryCode": "billingCountryCode",
                      "source": "source"
                    },
                    "rateTable": {
                      "importId": "x",
                      "situationOn": "situationOn",
                      "trigger": "trigger",
                      "startedAt": "2024-01-15T09:30:00Z"
                    },
                    "rates": [
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
                      },
                      {
                        "ratePercent": "ratePercent",
                        "country": "country",
                        "category": "category"
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
        let expectedResponse = InvoicesApplyAdvanceSalesResponse(
            id: "x",
            partnerId: "x",
            type: .invoice,
            status: .draft,
            paymentStatus: .unpaid,
            series: Nullable<String>.value("series"),
            number: Nullable<Int64>.value(1000000),
            fullNumber: Nullable<String>.value("fullNumber"),
            issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            currency: "currency",
            fxRate: Nullable<String>.value("fxRate"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            appliedToInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceId: Nullable<String>.value("x"),
            creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
            creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            agreementId: Nullable<String>.value("x"),
            vatScheme: Nullable<InvoicesApplyAdvanceSalesResponseVatScheme>.value(.domestic),
            intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
            intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
            intrastatRegion: Nullable<String>.value("intrastatRegion"),
            intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
            vatCountryCode: Nullable<String>.value("vatCountryCode"),
            deemedSupplier: true,
            notes: Nullable<String>.value("notes"),
            documentRef: Nullable<String>.value("documentRef"),
            operationTypeId: Nullable<String>.value("x"),
            documentSeriesId: Nullable<String>.value("x"),
            seriesLabel: Nullable<String>.value("seriesLabel"),
            discountPercent: "discountPercent",
            orderNumber: Nullable<String>.value("orderNumber"),
            issuedByName: Nullable<String>.value("issuedByName"),
            issuedByTitle: Nullable<String>.value("issuedByTitle"),
            receivedByName: Nullable<String>.value("receivedByName"),
            receivedByTitle: Nullable<String>.value("receivedByTitle"),
            lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            lockedBy: Nullable<String>.value("lockedBy"),
            payToken: Nullable<String>.value("payToken"),
            einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
            einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
            einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
            einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
            einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
            einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
            einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                InvoicesApplyAdvanceSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                ),
                InvoicesApplyAdvanceSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    unitPriceInclVat: Nullable<String>.value("unitPriceInclVat"),
                    vatRatePercent: "vatRatePercent",
                    vatClassifierCode: Nullable<String>.value("vatClassifierCode"),
                    vatExemptionBasis: Nullable<String>.value("vatExemptionBasis"),
                    costCenterId: Nullable<String>.value("x"),
                    projectId: Nullable<String>.value("x"),
                    lineNet: "lineNet",
                    lineVat: "lineVat",
                    lineGross: "lineGross",
                    sortOrder: 1000000,
                    recognitionMethod: .pointInTime,
                    recognitionStartDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    recognitionMilestones: Nullable<[InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem]>.value([
                        InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        ),
                        InvoicesApplyAdvanceSalesResponseLinesItemRecognitionMilestonesItem(
                            description: "description",
                            expectedDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                            percent: "percent"
                        )
                    ]),
                    standaloneSellingPrice: Nullable<String>.value("standaloneSellingPrice"),
                    allocatedNet: Nullable<String>.value("allocatedNet"),
                    refundEstimatePercent: Nullable<String>.value("refundEstimatePercent")
                )
            ],
            vatEvidence: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidence>.value(InvoicesApplyAdvanceSalesResponseVatEvidence(
                capturedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                issueDate: CalendarDate("2023-01-15")!,
                scheme: InvoicesApplyAdvanceSalesResponseVatEvidenceScheme(
                    vatScheme: Nullable<String>.value("vatScheme"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true
                ),
                partner: InvoicesApplyAdvanceSalesResponseVatEvidencePartner(
                    id: "x",
                    vatCode: Nullable<String>.value("vatCode"),
                    vatValid: Nullable<Bool>.value(true),
                    vatValidatedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601))
                ),
                vies: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidenceVies>.value(InvoicesApplyAdvanceSalesResponseVatEvidenceVies(
                    valid: true,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    name: Nullable<String>.value("name"),
                    address: Nullable<String>.value("address"),
                    requestIdentifier: Nullable<String>.value("requestIdentifier"),
                    checkedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                location: InvoicesApplyAdvanceSalesResponseVatEvidenceLocation(
                    billingCountryCode: Nullable<String>.value("billingCountryCode"),
                    source: Nullable<String>.value("source")
                ),
                rateTable: Nullable<InvoicesApplyAdvanceSalesResponseVatEvidenceRateTable>.value(InvoicesApplyAdvanceSalesResponseVatEvidenceRateTable(
                    importId: "x",
                    situationOn: "situationOn",
                    trigger: "trigger",
                    startedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                )),
                rates: [
                    InvoicesApplyAdvanceSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    ),
                    InvoicesApplyAdvanceSalesResponseVatEvidenceRatesItem(
                        ratePercent: "ratePercent",
                        country: "country",
                        category: Nullable<String>.value("category")
                    )
                ]
            ))
        )
        let response = try await client.sales.invoicesApplyAdvance(
            request: .init(
                advanceId: "x",
                invoiceId: "x"
            ),
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "2026-07-01",
                      "dueDate": "2026-07-01",
                      "currency": "currency",
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "appliedToInvoiceId": "appliedToInvoiceId",
                      "creditedInvoiceId": "creditedInvoiceId",
                      "creditedInvoiceReference": "creditedInvoiceReference",
                      "creditedInvoiceDate": "2026-07-01",
                      "agreementId": "agreementId",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "operationTypeId",
                      "documentSeriesId": "documentSeriesId",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "2026-07-01T09:30:00Z",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "2026-07-01T09:30:00Z",
                      "einvoiceCheckedAt": "2026-07-01T09:30:00Z",
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
        let expectedResponse = InvoicesListSalesResponse(
            rows: [
                InvoicesListSalesResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    currency: "currency",
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    appliedToInvoiceId: Nullable<String>.value("appliedToInvoiceId"),
                    creditedInvoiceId: Nullable<String>.value("creditedInvoiceId"),
                    creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
                    creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    agreementId: Nullable<String>.value("agreementId"),
                    vatScheme: Nullable<InvoicesListSalesResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("operationTypeId"),
                    documentSeriesId: Nullable<String>.value("documentSeriesId"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    einvoiceCheckedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
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
            ]),
            totalsByCurrency: Optional([
                "key": [
                    "key": "value"
                ]
            ])
        )
        let response = try await client.sales.invoicesList(
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "currency": "currency",
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "creditedInvoiceReference": "creditedInvoiceReference",
                      "creditedInvoiceDate": "2023-01-15",
                      "agreementId": "x",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "x",
                      "documentSeriesId": "x",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "2024-01-15T09:30:00Z",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "2024-01-15T09:30:00Z",
                      "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
                      "series": "series",
                      "number": 1000000,
                      "fullNumber": "fullNumber",
                      "issueDate": "2023-01-15",
                      "dueDate": "2023-01-15",
                      "currency": "currency",
                      "fxRate": "fxRate",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "appliedToInvoiceId": "x",
                      "creditedInvoiceId": "x",
                      "creditedInvoiceReference": "creditedInvoiceReference",
                      "creditedInvoiceDate": "2023-01-15",
                      "agreementId": "x",
                      "vatScheme": "domestic",
                      "intrastatTransportMode": "intrastatTransportMode",
                      "intrastatDeliveryTerms": "intrastatDeliveryTerms",
                      "intrastatRegion": "intrastatRegion",
                      "intrastatNatureOfTransaction": "intrastatNatureOfTransaction",
                      "vatCountryCode": "vatCountryCode",
                      "deemedSupplier": true,
                      "notes": "notes",
                      "documentRef": "documentRef",
                      "operationTypeId": "x",
                      "documentSeriesId": "x",
                      "seriesLabel": "seriesLabel",
                      "discountPercent": "discountPercent",
                      "orderNumber": "orderNumber",
                      "issuedByName": "issuedByName",
                      "issuedByTitle": "issuedByTitle",
                      "receivedByName": "receivedByName",
                      "receivedByTitle": "receivedByTitle",
                      "lockedAt": "2024-01-15T09:30:00Z",
                      "lockedBy": "lockedBy",
                      "payToken": "payToken",
                      "einvoiceSystem": "einvoiceSystem",
                      "einvoiceTransport": "einvoiceTransport",
                      "einvoiceMessageId": "einvoiceMessageId",
                      "einvoiceNumber": "einvoiceNumber",
                      "einvoiceStatus": "einvoiceStatus",
                      "einvoiceDetail": "einvoiceDetail",
                      "einvoiceSentAt": "2024-01-15T09:30:00Z",
                      "einvoiceCheckedAt": "2024-01-15T09:30:00Z",
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
        let expectedResponse = InvoicesListSalesResponse(
            rows: [
                InvoicesListSalesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
                    creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    agreementId: Nullable<String>.value("x"),
                    vatScheme: Nullable<InvoicesListSalesResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("x"),
                    documentSeriesId: Nullable<String>.value("x"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    partnerName: Nullable<String>.value("partnerName")
                ),
                InvoicesListSalesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .invoice,
                    status: .draft,
                    paymentStatus: .unpaid,
                    series: Nullable<String>.value("series"),
                    number: Nullable<Int64>.value(1000000),
                    fullNumber: Nullable<String>.value("fullNumber"),
                    issueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    dueDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    currency: "currency",
                    fxRate: Nullable<String>.value("fxRate"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    appliedToInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceId: Nullable<String>.value("x"),
                    creditedInvoiceReference: Nullable<String>.value("creditedInvoiceReference"),
                    creditedInvoiceDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    agreementId: Nullable<String>.value("x"),
                    vatScheme: Nullable<InvoicesListSalesResponseRowsItemVatScheme>.value(.domestic),
                    intrastatTransportMode: Nullable<String>.value("intrastatTransportMode"),
                    intrastatDeliveryTerms: Nullable<String>.value("intrastatDeliveryTerms"),
                    intrastatRegion: Nullable<String>.value("intrastatRegion"),
                    intrastatNatureOfTransaction: Nullable<String>.value("intrastatNatureOfTransaction"),
                    vatCountryCode: Nullable<String>.value("vatCountryCode"),
                    deemedSupplier: true,
                    notes: Nullable<String>.value("notes"),
                    documentRef: Nullable<String>.value("documentRef"),
                    operationTypeId: Nullable<String>.value("x"),
                    documentSeriesId: Nullable<String>.value("x"),
                    seriesLabel: Nullable<String>.value("seriesLabel"),
                    discountPercent: "discountPercent",
                    orderNumber: Nullable<String>.value("orderNumber"),
                    issuedByName: Nullable<String>.value("issuedByName"),
                    issuedByTitle: Nullable<String>.value("issuedByTitle"),
                    receivedByName: Nullable<String>.value("receivedByName"),
                    receivedByTitle: Nullable<String>.value("receivedByTitle"),
                    lockedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    lockedBy: Nullable<String>.value("lockedBy"),
                    payToken: Nullable<String>.value("payToken"),
                    einvoiceSystem: Nullable<String>.value("einvoiceSystem"),
                    einvoiceTransport: Nullable<String>.value("einvoiceTransport"),
                    einvoiceMessageId: Nullable<String>.value("einvoiceMessageId"),
                    einvoiceNumber: Nullable<String>.value("einvoiceNumber"),
                    einvoiceStatus: Nullable<String>.value("einvoiceStatus"),
                    einvoiceDetail: Nullable<String>.value("einvoiceDetail"),
                    einvoiceSentAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    einvoiceCheckedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
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
            ]),
            totalsByCurrency: Optional([
                "totalsByCurrency": [
                    "totalsByCurrency": "totalsByCurrency"
                ]
            ])
        )
        let response = try await client.sales.invoicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsCreateSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsCreateSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsCreate(
            request: .init(partnerId: "partnerId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsCreateSalesResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsCreateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                ActsCreateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsCreate(
            request: .init(partnerId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsUpdateSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsUpdateSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsUpdateSalesResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsUpdateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                ActsUpdateSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsIssue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsIssueSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsIssueSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsIssue2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsIssueSalesResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsIssueSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                ActsIssueSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z",
                  "updatedAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ActsCancelSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.sales.actsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z",
                  "updatedAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ActsCancelSalesResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.sales.actsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "partnerId": "partnerId",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "saleInvoiceId": "saleInvoiceId",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsGetSalesResponse(
            id: "id",
            partnerId: "partnerId",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsGetSalesResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "partnerId": "x",
                  "type": "goods",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "saleInvoiceId": "x",
                  "transferredByName": "transferredByName",
                  "transferredByTitle": "transferredByTitle",
                  "acceptedByName": "acceptedByName",
                  "acceptedByTitle": "acceptedByTitle",
                  "notes": "notes",
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
                      "lineNet": "lineNet",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "unitPriceExclVat": "unitPriceExclVat",
                      "lineNet": "lineNet",
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
        let expectedResponse = ActsGetSalesResponse(
            id: "x",
            partnerId: "x",
            type: .goods,
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            saleInvoiceId: Nullable<String>.value("x"),
            transferredByName: Nullable<String>.value("transferredByName"),
            transferredByTitle: Nullable<String>.value("transferredByTitle"),
            acceptedByName: Nullable<String>.value("acceptedByName"),
            acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                ActsGetSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                ),
                ActsGetSalesResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    unitPriceExclVat: Nullable<String>.value("unitPriceExclVat"),
                    lineNet: Nullable<String>.value("lineNet"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.sales.actsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "partnerId": "partnerId",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2026-07-01",
                      "saleInvoiceId": "saleInvoiceId",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = ActsListSalesResponse(
            rows: [
                ActsListSalesResponseRowsItem(
                    id: "id",
                    partnerId: "partnerId",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2026-07-01")!,
                    saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.actsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2023-01-15",
                      "saleInvoiceId": "x",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "partnerId": "x",
                      "type": "goods",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2023-01-15",
                      "saleInvoiceId": "x",
                      "transferredByName": "transferredByName",
                      "transferredByTitle": "transferredByTitle",
                      "acceptedByName": "acceptedByName",
                      "acceptedByTitle": "acceptedByTitle",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = ActsListSalesResponse(
            rows: [
                ActsListSalesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2023-01-15")!,
                    saleInvoiceId: Nullable<String>.value("x"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                ActsListSalesResponseRowsItem(
                    id: "x",
                    partnerId: "x",
                    type: .goods,
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2023-01-15")!,
                    saleInvoiceId: Nullable<String>.value("x"),
                    transferredByName: Nullable<String>.value("transferredByName"),
                    transferredByTitle: Nullable<String>.value("transferredByTitle"),
                    acceptedByName: Nullable<String>.value("acceptedByName"),
                    acceptedByTitle: Nullable<String>.value("acceptedByTitle"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.actsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsPdf1() async throws -> Void {
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
        let expectedResponse = ActsPdfSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.actsPdf(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func actsPdf2() async throws -> Void {
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
        let expectedResponse = ActsPdfSalesResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data"
        )
        let response = try await client.sales.actsPdf(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOfDate": "2026-07-01",
                  "totalAmount": "totalAmount",
                  "rows": [
                    {
                      "scheduleId": "scheduleId",
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "invoiceLineId",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "2026-07-01",
                      "description": "description",
                      "amount": "amount"
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
        let expectedResponse = RecognitionComputeSalesResponse(
            asOfDate: CalendarDate("2026-07-01")!,
            totalAmount: "totalAmount",
            rows: [
                RecognitionComputeSalesResponseRowsItem(
                    scheduleId: "scheduleId",
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "invoiceLineId",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                )
            ]
        )
        let response = try await client.sales.recognitionCompute(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "asOfDate": "2023-01-15",
                  "totalAmount": "totalAmount",
                  "rows": [
                    {
                      "scheduleId": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "2023-01-15",
                      "description": "description",
                      "amount": "amount"
                    },
                    {
                      "scheduleId": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "scheduleDate": "2023-01-15",
                      "description": "description",
                      "amount": "amount"
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
        let expectedResponse = RecognitionComputeSalesResponse(
            asOfDate: CalendarDate("2023-01-15")!,
            totalAmount: "totalAmount",
            rows: [
                RecognitionComputeSalesResponseRowsItem(
                    scheduleId: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                ),
                RecognitionComputeSalesResponseRowsItem(
                    scheduleId: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    scheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    description: Nullable<String>.value("description"),
                    amount: "amount"
                )
            ]
        )
        let response = try await client.sales.recognitionCompute(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionRun1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "runId",
                  "runDate": "2026-07-01",
                  "trigger": "manual",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionRunSalesResponse(
            runId: "runId",
            runDate: CalendarDate("2026-07-01")!,
            trigger: .manual,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.recognitionRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionRun2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "x",
                  "runDate": "2023-01-15",
                  "trigger": "manual",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionRunSalesResponse(
            runId: "x",
            runDate: CalendarDate("2023-01-15")!,
            trigger: .manual,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "x"
        )
        let response = try await client.sales.recognitionRun(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionProgress1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "runId",
                  "runDate": "2026-07-01",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionProgressSalesResponse(
            runId: "runId",
            runDate: CalendarDate("2026-07-01")!,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.recognitionProgress(
            request: .init(
                invoiceLineId: "invoiceLineId",
                percentComplete: "121.00"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionProgress2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "runId": "x",
                  "runDate": "2023-01-15",
                  "scheduleCount": 1000000,
                  "totalAmount": "totalAmount",
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionProgressSalesResponse(
            runId: "x",
            runDate: CalendarDate("2023-01-15")!,
            scheduleCount: 1000000,
            totalAmount: "totalAmount",
            journalTransactionId: "x"
        )
        let response = try await client.sales.recognitionProgress(
            request: .init(
                invoiceLineId: "x",
                percentComplete: "percentComplete"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionModify1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceLineId": "invoiceLineId",
                  "approach": "prospective",
                  "cancelledCount": 1000000,
                  "newPendingCount": 1000000,
                  "catchUpAmount": "catchUpAmount",
                  "journalTransactionId": "journalTransactionId",
                  "newEndDate": "2026-07-01"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionModifySalesResponse(
            invoiceLineId: "invoiceLineId",
            approach: .prospective,
            cancelledCount: 1000000,
            newPendingCount: 1000000,
            catchUpAmount: "catchUpAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            newEndDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)
        )
        let response = try await client.sales.recognitionModify(
            request: .init(
                invoiceLineId: "invoiceLineId",
                approach: .prospective
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionModify2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceLineId": "x",
                  "approach": "prospective",
                  "cancelledCount": 1000000,
                  "newPendingCount": 1000000,
                  "catchUpAmount": "catchUpAmount",
                  "journalTransactionId": "x",
                  "newEndDate": "2023-01-15"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RecognitionModifySalesResponse(
            invoiceLineId: "x",
            approach: .prospective,
            cancelledCount: 1000000,
            newPendingCount: 1000000,
            catchUpAmount: "catchUpAmount",
            journalTransactionId: Nullable<String>.value("x"),
            newEndDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
        )
        let response = try await client.sales.recognitionModify(
            request: .init(
                invoiceLineId: "x",
                approach: .prospective
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionRunsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "runDate": "2026-07-01",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "journalTransactionId",
                      "createdAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = RecognitionRunsListSalesResponse(
            rows: [
                RecognitionRunsListSalesResponseRowsItem(
                    id: "id",
                    runDate: CalendarDate("2026-07-01")!,
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "journalTransactionId",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.recognitionRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionRunsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "runDate": "2023-01-15",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "runDate": "2023-01-15",
                      "trigger": "manual",
                      "scheduleCount": 1000000,
                      "totalAmount": "totalAmount",
                      "journalTransactionId": "x",
                      "createdAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = RecognitionRunsListSalesResponse(
            rows: [
                RecognitionRunsListSalesResponseRowsItem(
                    id: "x",
                    runDate: CalendarDate("2023-01-15")!,
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "x",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                RecognitionRunsListSalesResponseRowsItem(
                    id: "x",
                    runDate: CalendarDate("2023-01-15")!,
                    trigger: .manual,
                    scheduleCount: 1000000,
                    totalAmount: "totalAmount",
                    journalTransactionId: "x",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.recognitionRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionSummary1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "invoiceLineId",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "2026-07-01",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "2026-07-01"
                    }
                  ],
                  "totals": {
                    "deferredTotal": "deferredTotal",
                    "recognizedToDate": "2026-07-01",
                    "remaining": "remaining"
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
        let expectedResponse = RecognitionSummarySalesResponse(
            rows: [
                RecognitionSummarySalesResponseRowsItem(
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "invoiceLineId",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: CalendarDate("2026-07-01")!,
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!)
                )
            ],
            totals: RecognitionSummarySalesResponseTotals(
                deferredTotal: "deferredTotal",
                recognizedToDate: CalendarDate("2026-07-01")!,
                remaining: "remaining"
            )
        )
        let response = try await client.sales.recognitionSummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recognitionSummary2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "2023-01-15",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "2023-01-15"
                    },
                    {
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "invoiceLineId": "x",
                      "lineDescription": "lineDescription",
                      "method": "point_in_time",
                      "deferredTotal": "deferredTotal",
                      "recognizedToDate": "2023-01-15",
                      "remaining": "remaining",
                      "pendingCount": 1000000,
                      "nextScheduleDate": "2023-01-15"
                    }
                  ],
                  "totals": {
                    "deferredTotal": "deferredTotal",
                    "recognizedToDate": "2023-01-15",
                    "remaining": "remaining"
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
        let expectedResponse = RecognitionSummarySalesResponse(
            rows: [
                RecognitionSummarySalesResponseRowsItem(
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: CalendarDate("2023-01-15")!,
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
                ),
                RecognitionSummarySalesResponseRowsItem(
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    invoiceLineId: "x",
                    lineDescription: "lineDescription",
                    method: .pointInTime,
                    deferredTotal: "deferredTotal",
                    recognizedToDate: CalendarDate("2023-01-15")!,
                    remaining: "remaining",
                    pendingCount: 1000000,
                    nextScheduleDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!)
                )
            ],
            totals: RecognitionSummarySalesResponseTotals(
                deferredTotal: "deferredTotal",
                recognizedToDate: CalendarDate("2023-01-15")!,
                remaining: "remaining"
            )
        )
        let response = try await client.sales.recognitionSummary(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refundLiabilityList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "invoiceId": "invoiceId",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z"
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
        let expectedResponse = RefundLiabilityListSalesResponse(
            rows: [
                RefundLiabilityListSalesResponseRowsItem(
                    id: "id",
                    invoiceId: "invoiceId",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.refundLiabilityList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refundLiabilityList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "invoiceId": "x",
                      "invoiceFullNumber": "invoiceFullNumber",
                      "estimated": "estimated",
                      "consumed": "consumed",
                      "settlementRefunds": "settlementRefunds",
                      "remaining": "remaining",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z"
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
        let expectedResponse = RefundLiabilityListSalesResponse(
            rows: [
                RefundLiabilityListSalesResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                RefundLiabilityListSalesResponseRowsItem(
                    id: "x",
                    invoiceId: "x",
                    invoiceFullNumber: Nullable<String>.value("invoiceFullNumber"),
                    estimated: "estimated",
                    consumed: "consumed",
                    settlementRefunds: "settlementRefunds",
                    remaining: "remaining",
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
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
        let response = try await client.sales.refundLiabilityList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refundLiabilityTrueUp1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "invoiceId",
                  "estimated": "estimated",
                  "consumed": "consumed",
                  "remaining": "remaining",
                  "delta": "delta",
                  "journalTransactionId": "journalTransactionId"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RefundLiabilityTrueUpSalesResponse(
            invoiceId: "invoiceId",
            estimated: "estimated",
            consumed: "consumed",
            remaining: "remaining",
            delta: "delta",
            journalTransactionId: "journalTransactionId"
        )
        let response = try await client.sales.refundLiabilityTrueUp(
            request: .init(
                invoiceId: "invoiceId",
                estimatedTotal: "121.0000"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func refundLiabilityTrueUp2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "invoiceId": "x",
                  "estimated": "estimated",
                  "consumed": "consumed",
                  "remaining": "remaining",
                  "delta": "delta",
                  "journalTransactionId": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RefundLiabilityTrueUpSalesResponse(
            invoiceId: "x",
            estimated: "estimated",
            consumed: "consumed",
            remaining: "remaining",
            delta: "delta",
            journalTransactionId: "x"
        )
        let response = try await client.sales.refundLiabilityTrueUp(
            request: .init(
                invoiceId: "x",
                estimatedTotal: "estimatedTotal"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
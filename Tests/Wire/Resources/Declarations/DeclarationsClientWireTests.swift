import Foundation
import Testing
import Api

@Suite("DeclarationsClient Wire Tests") struct DeclarationsClientWireTests {
    @Test func postV1DeclarationsLtIntrastatCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "regionCode": "regionCode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIntrastatComputeResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            rows: [
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                )
            ],
            totals: PostV1DeclarationsLtIntrastatComputeResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsLtIntrastatComputeResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "fileId": "x",
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "regionCode": "regionCode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    },
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "transactionNature": "transactionNature",
                      "deliveryTerms": "deliveryTerms",
                      "transportMode": "transportMode",
                      "regionCode": "regionCode",
                      "country": "country",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIntrastatComputeResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            rows: [
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                ),
                PostV1DeclarationsLtIntrastatComputeResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    transactionNature: "transactionNature",
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    transportMode: Nullable<String>.value("transportMode"),
                    regionCode: Nullable<String>.value("regionCode"),
                    country: "country",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    netMassKg: "netMassKg",
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: "statisticalValue"
                )
            ],
            totals: PostV1DeclarationsLtIntrastatComputeResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: "statisticalValue",
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsLtIntrastatComputeResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatCompute(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: PostV1DeclarationsLtIvazGenerateResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: PostV1DeclarationsLtIvazGenerateResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazGenerate(
            request: .init(waybillIds: [
                "waybillIds",
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatObligation1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "isVatPayer": true,
                  "notes": [
                    "notes"
                  ],
                  "thresholds": {
                    "arrivalsReporting": "arrivalsReporting",
                    "dispatchesReporting": "dispatchesReporting",
                    "arrivalsStatistical": "arrivalsStatistical",
                    "dispatchesStatistical": "dispatchesStatistical"
                  },
                  "arrivals": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      }
                    ]
                  },
                  "dispatches": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
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
        let expectedResponse = PostV1DeclarationsLtIntrastatObligationResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes"
            ],
            thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIntrastatObligation2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "isVatPayer": true,
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "thresholds": {
                    "arrivalsReporting": "arrivalsReporting",
                    "dispatchesReporting": "dispatchesReporting",
                    "arrivalsStatistical": "arrivalsStatistical",
                    "dispatchesStatistical": "dispatchesStatistical"
                  },
                  "arrivals": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      },
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      }
                    ]
                  },
                  "dispatches": {
                    "previousYearValue": "previousYearValue",
                    "obligatedFromMonth": 1000000,
                    "statisticalValueRequired": true,
                    "monthly": [
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
                      },
                      {
                        "month": 1000000,
                        "value": "value",
                        "cumulative": "cumulative"
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
        let expectedResponse = PostV1DeclarationsLtIntrastatObligationResponse(
            year: 1000000,
            isVatPayer: true,
            notes: [
                "notes",
                "notes"
            ],
            thresholds: PostV1DeclarationsLtIntrastatObligationResponseThresholds(
                arrivalsReporting: "arrivalsReporting",
                dispatchesReporting: "dispatchesReporting",
                arrivalsStatistical: "arrivalsStatistical",
                dispatchesStatistical: "dispatchesStatistical"
            ),
            arrivals: PostV1DeclarationsLtIntrastatObligationResponseArrivals(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    PostV1DeclarationsLtIntrastatObligationResponseArrivalsMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            ),
            dispatches: PostV1DeclarationsLtIntrastatObligationResponseDispatches(
                previousYearValue: "previousYearValue",
                obligatedFromMonth: Nullable<Int64>.value(1000000),
                statisticalValueRequired: true,
                monthly: [
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    ),
                    PostV1DeclarationsLtIntrastatObligationResponseDispatchesMonthlyItem(
                        month: 1000000,
                        value: "value",
                        cumulative: "cumulative"
                    )
                ]
            )
        )
        let response = try await client.declarations.postV1DeclarationsLtIntrastatObligation(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIsafGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIsafGenerateResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtIsafGenerateResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                customers: 1000000,
                suppliers: 1000000
            ),
            warnings: [
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIsafGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIsafGenerateResponse(
            fileName: "fileName",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtIsafGenerateResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                customers: 1000000,
                suppliers: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIsafGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0600Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "deductionPercent": 1000000,
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "breakdown": [
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields"
                      ]
                    }
                  ],
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000
                  },
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
        let expectedResponse = PostV1DeclarationsLtFr0600ComputeResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields"
                    ]
                )
            ],
            counts: PostV1DeclarationsLtFr0600ComputeResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0600Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "deductionPercent": 1000000,
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "breakdown": [
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields",
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields",
                        "vatFields"
                      ]
                    },
                    {
                      "direction": "sales",
                      "taxCode": "taxCode",
                      "net": "net",
                      "vat": "vat",
                      "taxableFields": [
                        "taxableFields",
                        "taxableFields"
                      ],
                      "vatFields": [
                        "vatFields",
                        "vatFields"
                      ]
                    }
                  ],
                  "counts": {
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000
                  },
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
        let expectedResponse = PostV1DeclarationsLtFr0600ComputeResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            deductionPercent: 1000000,
            fields: [
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsLtFr0600ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            breakdown: [
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields",
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields",
                        "vatFields"
                    ]
                ),
                PostV1DeclarationsLtFr0600ComputeResponseBreakdownItem(
                    direction: .sales,
                    taxCode: Nullable<String>.value("taxCode"),
                    net: "net",
                    vat: "vat",
                    taxableFields: [
                        "taxableFields",
                        "taxableFields"
                    ],
                    vatFields: [
                        "vatFields",
                        "vatFields"
                    ]
                )
            ],
            counts: PostV1DeclarationsLtFr0600ComputeResponseCounts(
                salesInvoices: 1000000,
                purchaseInvoices: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0600Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm313Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "declarationYear": 1000000,
                  "declarationMonth": 1000000,
                  "runPeriod": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtGpm313ComputeResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>.value(PostV1DeclarationsLtGpm313ComputeResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm313Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "declarationYear": 1000000,
                  "declarationMonth": 1000000,
                  "runPeriod": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtGpm313ComputeResponse(
            declarationYear: 1000000,
            declarationMonth: 1000000,
            runPeriod: Nullable<PostV1DeclarationsLtGpm313ComputeResponseRunPeriod>.value(PostV1DeclarationsLtGpm313ComputeResponseRunPeriod(
                year: 1000000,
                month: 1000000
            )),
            fields: [
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsLtGpm313ComputeResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm313Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSamCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "insuredCount": 1000000,
                  "insuredIncomeTotal": "insuredIncomeTotal",
                  "contributionsTotal": "contributionsTotal",
                  "persons": [
                    {
                      "employeeId": "employeeId",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtSamComputeResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "employeeId",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSamCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "insuredCount": 1000000,
                  "insuredIncomeTotal": "insuredIncomeTotal",
                  "contributionsTotal": "contributionsTotal",
                  "persons": [
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    },
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "insuredIncome": "insuredIncome",
                      "contributions": "contributions",
                      "tariffPercent": "tariffPercent"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtSamComputeResponse(
            year: 1000000,
            month: 1000000,
            insuredCount: 1000000,
            insuredIncomeTotal: "insuredIncomeTotal",
            contributionsTotal: "contributionsTotal",
            persons: [
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                ),
                PostV1DeclarationsLtSamComputeResponsePersonsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    insuredIncome: "insuredIncome",
                    contributions: "contributions",
                    tariffPercent: "tariffPercent"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSamCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtSdGenerateResponse(
            type: .oneSd,
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    contractId: "contractId",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "rows": [
                    {
                      "employeeId": "x",
                      "contractId": "x",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    },
                    {
                      "employeeId": "x",
                      "contractId": "x",
                      "contractNo": "contractNo",
                      "personalCode": "personalCode",
                      "socialInsuranceNo": "socialInsuranceNo",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "date": "date",
                      "professionCode": "professionCode",
                      "endReason": "endReason",
                      "finalInsuredIncome": "finalInsuredIncome",
                      "finalContributions": "finalContributions"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsLtSdGenerateResponse(
            type: .oneSd,
            fromDate: "fromDate",
            toDate: "toDate",
            rows: [
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                ),
                PostV1DeclarationsLtSdGenerateResponseRowsItem(
                    employeeId: "x",
                    contractId: "x",
                    contractNo: "contractNo",
                    personalCode: Nullable<String>.value("personalCode"),
                    socialInsuranceNo: Nullable<String>.value("socialInsuranceNo"),
                    firstName: "firstName",
                    lastName: "lastName",
                    date: "date",
                    professionCode: Nullable<String>.value("professionCode"),
                    endReason: Nullable<String>.value("endReason"),
                    finalInsuredIncome: Nullable<String>.value("finalInsuredIncome"),
                    finalContributions: Nullable<String>.value("finalContributions")
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdGenerate(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "accounts": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000,
                    "glTransactions": 1000000,
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "payments": 1000000,
                    "stockMovements": 1000000,
                    "assetTransactions": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtSaftGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtSaftGenerateResponseCounts(
                accounts: 1000000,
                customers: 1000000,
                suppliers: 1000000,
                glTransactions: 1000000,
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                payments: 1000000,
                stockMovements: 1000000,
                assetTransactions: 1000000
            ),
            warnings: [
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftGenerate(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "counts": {
                    "accounts": 1000000,
                    "customers": 1000000,
                    "suppliers": 1000000,
                    "glTransactions": 1000000,
                    "salesInvoices": 1000000,
                    "purchaseInvoices": 1000000,
                    "payments": 1000000,
                    "stockMovements": 1000000,
                    "assetTransactions": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtSaftGenerateResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            counts: PostV1DeclarationsLtSaftGenerateResponseCounts(
                accounts: 1000000,
                customers: 1000000,
                suppliers: 1000000,
                glTransactions: 1000000,
                salesInvoices: 1000000,
                purchaseInvoices: 1000000,
                payments: 1000000,
                stockMovements: 1000000,
                assetTransactions: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftGenerate(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazAmend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazAmendResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: PostV1DeclarationsLtIvazAmendResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazAmend(
            request: .init(waybillIds: [
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazAmend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazAmendResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: PostV1DeclarationsLtIvazAmendResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazAmend(
            request: .init(waybillIds: [
                "waybillIds",
                "waybillIds"
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazCancelResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            counts: PostV1DeclarationsLtIvazCancelResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazCancel(
            request: .init(entries: [
                PostV1DeclarationsLtIvazCancelRequestEntriesItem(
                    waybillId: "waybillId",
                    reason: .one
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtIvazCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "fileId": "x",
                  "counts": {
                    "documents": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "xml": "xml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtIvazCancelResponse(
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            counts: PostV1DeclarationsLtIvazCancelResponseCounts(
                documents: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            xml: "xml"
        )
        let response = try await client.declarations.postV1DeclarationsLtIvazCancel(
            request: .init(entries: [
                PostV1DeclarationsLtIvazCancelRequestEntriesItem(
                    waybillId: "x",
                    reason: .one
                ),
                PostV1DeclarationsLtIvazCancelRequestEntriesItem(
                    waybillId: "x",
                    reason: .one
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0564Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "registrationNumber": "registrationNumber",
                  "vatCode": "vatCode",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    }
                  ],
                  "totals": {
                    "goods": "goods",
                    "triangular": "triangular",
                    "services": "services",
                    "rows": 1000000
                  },
                  "counts": {
                    "salesInvoices": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtFr0564ComputeResponse(
            year: 1000000,
            month: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            registrationNumber: "registrationNumber",
            vatCode: "vatCode",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsLtFr0564ComputeResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                )
            ],
            totals: PostV1DeclarationsLtFr0564ComputeResponseTotals(
                goods: "goods",
                triangular: "triangular",
                services: "services",
                rows: 1000000
            ),
            counts: PostV1DeclarationsLtFr0564ComputeResponseCounts(
                salesInvoices: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0564Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtFr0564Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "registrationNumber": "registrationNumber",
                  "vatCode": "vatCode",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    },
                    {
                      "vatCode": "vatCode",
                      "partnerName": "partnerName",
                      "countryCode": "countryCode",
                      "goods": "goods",
                      "triangular": "triangular",
                      "services": "services"
                    }
                  ],
                  "totals": {
                    "goods": "goods",
                    "triangular": "triangular",
                    "services": "services",
                    "rows": 1000000
                  },
                  "counts": {
                    "salesInvoices": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtFr0564ComputeResponse(
            year: 1000000,
            month: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            registrationNumber: "registrationNumber",
            vatCode: "vatCode",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsLtFr0564ComputeResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                ),
                PostV1DeclarationsLtFr0564ComputeResponseRowsItem(
                    vatCode: "vatCode",
                    partnerName: "partnerName",
                    countryCode: "countryCode",
                    goods: "goods",
                    triangular: "triangular",
                    services: "services"
                )
            ],
            totals: PostV1DeclarationsLtFr0564ComputeResponseTotals(
                goods: "goods",
                triangular: "triangular",
                services: "services",
                rows: 1000000
            ),
            counts: PostV1DeclarationsLtFr0564ComputeResponseCounts(
                salesInvoices: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtFr0564Compute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm312Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "payoutTiming": "same-month",
                  "payoutFrom": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "payoutTo": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    }
                  ],
                  "totals": {
                    "paidAmount": "paidAmount",
                    "gpmWithheld": "gpmWithheld",
                    "persons": 1000000
                  },
                  "runsFound": 1000000,
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtGpm312ComputeResponse(
            year: 1000000,
            payoutTiming: .sameMonth,
            payoutFrom: PostV1DeclarationsLtGpm312ComputeResponsePayoutFrom(
                year: 1000000,
                month: 1000000
            ),
            payoutTo: PostV1DeclarationsLtGpm312ComputeResponsePayoutTo(
                year: 1000000,
                month: 1000000
            ),
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsLtGpm312ComputeResponseRowsItem(
                    employeeId: "employeeId",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                )
            ],
            totals: PostV1DeclarationsLtGpm312ComputeResponseTotals(
                paidAmount: "paidAmount",
                gpmWithheld: "gpmWithheld",
                persons: 1000000
            ),
            runsFound: 1000000,
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm312Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtGpm312Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "payoutTiming": "same-month",
                  "payoutFrom": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "payoutTo": {
                    "year": 1000000,
                    "month": 1000000
                  },
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    },
                    {
                      "employeeId": "x",
                      "personalCode": "personalCode",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "paymentCode": "paymentCode",
                      "paidAmount": "paidAmount",
                      "gpmWithheld": "gpmWithheld"
                    }
                  ],
                  "totals": {
                    "paidAmount": "paidAmount",
                    "gpmWithheld": "gpmWithheld",
                    "persons": 1000000
                  },
                  "runsFound": 1000000,
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtGpm312ComputeResponse(
            year: 1000000,
            payoutTiming: .sameMonth,
            payoutFrom: PostV1DeclarationsLtGpm312ComputeResponsePayoutFrom(
                year: 1000000,
                month: 1000000
            ),
            payoutTo: PostV1DeclarationsLtGpm312ComputeResponsePayoutTo(
                year: 1000000,
                month: 1000000
            ),
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsLtGpm312ComputeResponseRowsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                ),
                PostV1DeclarationsLtGpm312ComputeResponseRowsItem(
                    employeeId: "x",
                    personalCode: Nullable<String>.value("personalCode"),
                    firstName: "firstName",
                    lastName: "lastName",
                    paymentCode: "paymentCode",
                    paidAmount: "paidAmount",
                    gpmWithheld: "gpmWithheld"
                )
            ],
            totals: PostV1DeclarationsLtGpm312ComputeResponseTotals(
                paidAmount: "paidAmount",
                gpmWithheld: "gpmWithheld",
                persons: 1000000
            ),
            runsFound: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtGpm312Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtPln204Compute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "variant": "PLN204",
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
                  "smallEntity": true,
                  "criteria": {
                    "netTurnover": "netTurnover",
                    "avgEmployees": 1.1
                  },
                  "totalIncome": "totalIncome",
                  "boxes": {
                    "key": "value"
                  },
                  "annexS": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "annexZ": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "lines": [
                    {
                      "key": "key",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtPln204ComputeResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            variant: .pln204,
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            smallEntity: true,
            criteria: PostV1DeclarationsLtPln204ComputeResponseCriteria(
                netTurnover: "netTurnover",
                avgEmployees: 1.1
            ),
            totalIncome: "totalIncome",
            boxes: [
                "key": "value"
            ],
            annexS: [
                PostV1DeclarationsLtPln204ComputeResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            annexZ: [
                PostV1DeclarationsLtPln204ComputeResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            lines: [
                PostV1DeclarationsLtPln204ComputeResponseLinesItem(
                    key: "key",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtPln204Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtPln204Compute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "variant": "PLN204",
                  "registrationNumber": "registrationNumber",
                  "companyName": "companyName",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
                  "smallEntity": true,
                  "criteria": {
                    "netTurnover": "netTurnover",
                    "avgEmployees": 1.1
                  },
                  "totalIncome": "totalIncome",
                  "boxes": {
                    "boxes": "boxes"
                  },
                  "annexS": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "annexZ": [
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "lines": [
                    {
                      "key": "key",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "key": "key",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLtPln204ComputeResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            variant: .pln204,
            registrationNumber: "registrationNumber",
            companyName: "companyName",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            smallEntity: true,
            criteria: PostV1DeclarationsLtPln204ComputeResponseCriteria(
                netTurnover: "netTurnover",
                avgEmployees: 1.1
            ),
            totalIncome: "totalIncome",
            boxes: [
                "boxes": "boxes"
            ],
            annexS: [
                PostV1DeclarationsLtPln204ComputeResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                ),
                PostV1DeclarationsLtPln204ComputeResponseAnnexSItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            annexZ: [
                PostV1DeclarationsLtPln204ComputeResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                ),
                PostV1DeclarationsLtPln204ComputeResponseAnnexZItem(
                    code: "code",
                    amount: "amount",
                    description: "description"
                )
            ],
            lines: [
                PostV1DeclarationsLtPln204ComputeResponseLinesItem(
                    key: "key",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsLtPln204ComputeResponseLinesItem(
                    key: "key",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLtPln204Compute(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuOssCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "periodQuarter": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuOssComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuOssComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuOssCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "periodQuarter": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuOssComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuOssComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuOssComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuOssComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuOssComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodQuarter: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuOssCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuIossCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "periodMonth": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuIossComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuIossComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuIossComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuIossCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodYear": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "memberStateOfIdentification": "memberStateOfIdentification",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "rateType": "STANDARD",
                      "vatRatePercent": "vatRatePercent",
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "totals": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "corrections": [
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "periodYear": 1000000,
                      "periodQuarter": 1000000,
                      "periodMonth": 1000000,
                      "taxableAmount": "taxableAmount",
                      "vatAmount": "vatAmount",
                      "documents": 1000000
                    }
                  ],
                  "correctionsTotal": {
                    "taxableAmount": "taxableAmount",
                    "vatAmount": "vatAmount"
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "periodMonth": 1000000
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuIossComputeResponse(
            periodYear: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            memberStateOfIdentification: "memberStateOfIdentification",
            rows: [
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuIossComputeResponseRowsItem(
                    countryCode: "countryCode",
                    rateType: .standard,
                    vatRatePercent: "vatRatePercent",
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            totals: PostV1DeclarationsEuIossComputeResponseTotals(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            corrections: [
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuIossComputeResponseCorrectionsItem(
                    countryCode: "countryCode",
                    periodYear: 1000000,
                    periodQuarter: Nullable<Int64>.value(1000000),
                    periodMonth: Nullable<Int64>.value(1000000),
                    taxableAmount: "taxableAmount",
                    vatAmount: "vatAmount",
                    documents: 1000000
                )
            ],
            correctionsTotal: PostV1DeclarationsEuIossComputeResponseCorrectionsTotal(
                taxableAmount: "taxableAmount",
                vatAmount: "vatAmount"
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            periodMonth: 1000000
        )
        let response = try await client.declarations.postV1DeclarationsEuIossCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuDistanceSalesThresholdGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "thresholdEur": "thresholdEur",
                  "homeCountryCode": "homeCountryCode",
                  "currentYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "precedingYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "belowThreshold": true,
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuDistanceSalesThresholdGetResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            belowThreshold: true,
            headroomAmount: "headroomAmount",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuDistanceSalesThresholdGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "thresholdEur": "thresholdEur",
                  "homeCountryCode": "homeCountryCode",
                  "currentYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "precedingYear": {
                    "year": 1000000,
                    "totalAmount": "totalAmount",
                    "documents": 1000000
                  },
                  "belowThreshold": true,
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuDistanceSalesThresholdGetResponse(
            thresholdEur: "thresholdEur",
            homeCountryCode: "homeCountryCode",
            currentYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponseCurrentYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            precedingYear: PostV1DeclarationsEuDistanceSalesThresholdGetResponsePrecedingYear(
                year: 1000000,
                totalAmount: "totalAmount",
                documents: 1000000
            ),
            belowThreshold: true,
            headroomAmount: "headroomAmount",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuDistanceSalesThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuUnionTurnoverGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capEur": "capEur",
                  "currency": "currency",
                  "isVatPayer": true,
                  "currentYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "previousYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "below",
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuUnionTurnoverGetResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: PostV1DeclarationsEuUnionTurnoverGetResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: PostV1DeclarationsEuUnionTurnoverGetResponsePreviousYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .below,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuUnionTurnoverGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "capEur": "capEur",
                  "currency": "currency",
                  "isVatPayer": true,
                  "currentYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "previousYear": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "below",
                  "headroomAmount": "headroomAmount",
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
        let expectedResponse = PostV1DeclarationsEuUnionTurnoverGetResponse(
            capEur: "capEur",
            currency: "currency",
            isVatPayer: true,
            currentYear: PostV1DeclarationsEuUnionTurnoverGetResponseCurrentYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            previousYear: PostV1DeclarationsEuUnionTurnoverGetResponsePreviousYear(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .below,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuUnionTurnoverGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeCrossBorderReportCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "currency": "currency",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    }
                  ],
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsEuSmeCrossBorderReportComputeResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            currency: "currency",
            rows: [
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                )
            ],
            total: "total",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeCrossBorderReportCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "quarter": 1000000,
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "currency": "currency",
                  "rows": [
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    },
                    {
                      "countryCode": "countryCode",
                      "amount": "amount",
                      "documents": 1000000
                    }
                  ],
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsEuSmeCrossBorderReportComputeResponse(
            year: 1000000,
            quarter: 1000000,
            fromDate: "fromDate",
            toDate: "toDate",
            currency: "currency",
            rows: [
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                ),
                PostV1DeclarationsEuSmeCrossBorderReportComputeResponseRowsItem(
                    countryCode: "countryCode",
                    amount: "amount",
                    documents: 1000000
                )
            ],
            total: "total",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeCrossBorderReportCompute(
            request: .init(
                year: 1000000,
                quarter: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "nationalCapEur": "nationalCapEur",
                  "unionTurnoverCapEur": "unionTurnoverCapEur",
                  "thresholds": [
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdsListResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount"
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "nationalCapEur": "nationalCapEur",
                  "unionTurnoverCapEur": "unionTurnoverCapEur",
                  "thresholds": [
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        },
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
                    },
                    {
                      "countryCode": "countryCode",
                      "currency": "currency",
                      "nationalThreshold": "nationalThreshold",
                      "sectors": [
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        },
                        {
                          "label": "label",
                          "amount": "amount",
                          "note": "note"
                        }
                      ],
                      "intraEuAcquisitionsTrigger": {
                        "amount": "amount",
                        "currency": "currency",
                        "note": "note"
                      },
                      "note": "note",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdsListResponse(
            nationalCapEur: "nationalCapEur",
            unionTurnoverCapEur: "unionTurnoverCapEur",
            thresholds: [
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                ),
                PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItem(
                    countryCode: "countryCode",
                    currency: "currency",
                    nationalThreshold: Nullable<String>.value("nationalThreshold"),
                    sectors: Optional([
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        ),
                        PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemSectorsItem(
                            label: "label",
                            amount: "amount",
                            note: Optional("note")
                        )
                    ]),
                    intraEuAcquisitionsTrigger: Optional(PostV1DeclarationsEuSmeThresholdsListResponseThresholdsItemIntraEuAcquisitionsTrigger(
                        amount: "amount",
                        currency: "currency",
                        note: "note"
                    )),
                    note: Optional("note"),
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "isVatPayer": true,
                  "baseCurrency": "baseCurrency",
                  "year": 1000000,
                  "threshold": {
                    "currency": "currency",
                    "nationalThreshold": "nationalThreshold",
                    "sectors": [
                      {
                        "label": "label",
                        "amount": "amount"
                      }
                    ],
                    "note": "note",
                    "source": "source"
                  },
                  "turnover": {
                    "amount": "amount",
                    "currency": "currency",
                    "documents": 1000000
                  },
                  "precedingTurnover": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "not_applicable",
                  "headroomAmount": "headroomAmount",
                  "intraEu": {
                    "trigger": "trigger",
                    "currency": "currency",
                    "acquisitionsFromMemberStates": "acquisitionsFromMemberStates",
                    "servicesToMemberStates": "servicesToMemberStates",
                    "total": "total",
                    "status": "below",
                    "note": "note"
                  },
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdGetResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>.value(PostV1DeclarationsEuSmeThresholdGetResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount"
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>.value(PostV1DeclarationsEuSmeThresholdGetResponseIntraEu(
                trigger: "trigger",
                currency: "currency",
                acquisitionsFromMemberStates: "acquisitionsFromMemberStates",
                servicesToMemberStates: "servicesToMemberStates",
                total: "total",
                status: .below,
                note: "note"
            )),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuSmeThresholdGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "isVatPayer": true,
                  "baseCurrency": "baseCurrency",
                  "year": 1000000,
                  "threshold": {
                    "currency": "currency",
                    "nationalThreshold": "nationalThreshold",
                    "sectors": [
                      {
                        "label": "label",
                        "amount": "amount",
                        "note": "note"
                      },
                      {
                        "label": "label",
                        "amount": "amount",
                        "note": "note"
                      }
                    ],
                    "note": "note",
                    "source": "source"
                  },
                  "turnover": {
                    "amount": "amount",
                    "currency": "currency",
                    "documents": 1000000
                  },
                  "precedingTurnover": {
                    "year": 1000000,
                    "amount": "amount",
                    "documents": 1000000
                  },
                  "status": "not_applicable",
                  "headroomAmount": "headroomAmount",
                  "intraEu": {
                    "trigger": "trigger",
                    "currency": "currency",
                    "acquisitionsFromMemberStates": "acquisitionsFromMemberStates",
                    "servicesToMemberStates": "servicesToMemberStates",
                    "total": "total",
                    "status": "below",
                    "note": "note"
                  },
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
        let expectedResponse = PostV1DeclarationsEuSmeThresholdGetResponse(
            countryCode: "countryCode",
            isVatPayer: true,
            baseCurrency: "baseCurrency",
            year: 1000000,
            threshold: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseThreshold>.value(PostV1DeclarationsEuSmeThresholdGetResponseThreshold(
                currency: "currency",
                nationalThreshold: Nullable<String>.value("nationalThreshold"),
                sectors: Optional([
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    ),
                    PostV1DeclarationsEuSmeThresholdGetResponseThresholdSectorsItem(
                        label: "label",
                        amount: "amount",
                        note: Optional("note")
                    )
                ]),
                note: Optional("note"),
                source: "source"
            )),
            turnover: PostV1DeclarationsEuSmeThresholdGetResponseTurnover(
                amount: "amount",
                currency: "currency",
                documents: 1000000
            ),
            precedingTurnover: PostV1DeclarationsEuSmeThresholdGetResponsePrecedingTurnover(
                year: 1000000,
                amount: "amount",
                documents: 1000000
            ),
            status: .notApplicable,
            headroomAmount: Nullable<String>.value("headroomAmount"),
            intraEu: Nullable<PostV1DeclarationsEuSmeThresholdGetResponseIntraEu>.value(PostV1DeclarationsEuSmeThresholdGetResponseIntraEu(
                trigger: "trigger",
                currency: "currency",
                acquisitionsFromMemberStates: "acquisitionsFromMemberStates",
                servicesToMemberStates: "servicesToMemberStates",
                total: "total",
                status: .below,
                note: "note"
            )),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuSmeThresholdGet(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnPacksList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "packs": [
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuVatReturnPacksListResponse(
            packs: [
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnPacksList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "packs": [
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
                    },
                    {
                      "countryCode": "countryCode",
                      "formKey": "formKey",
                      "formName": "formName",
                      "frequency": "monthly",
                      "source": "source"
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
        let expectedResponse = PostV1DeclarationsEuVatReturnPacksListResponse(
            packs: [
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                ),
                PostV1DeclarationsEuVatReturnPacksListResponsePacksItem(
                    countryCode: "countryCode",
                    formKey: "formKey",
                    formName: "formName",
                    frequency: .monthly,
                    source: "source"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnPacksList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "formKey": "formKey",
                  "formName": "formName",
                  "frequency": "monthly",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "boxes": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuVatReturnComputeResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnCompute(
            request: .init(
                countryCode: "countryCode",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEuVatReturnCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "formKey": "formKey",
                  "formName": "formName",
                  "frequency": "monthly",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "boxes": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEuVatReturnComputeResponse(
            countryCode: "countryCode",
            formKey: "formKey",
            formName: "formName",
            frequency: .monthly,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            boxes: [
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                ),
                PostV1DeclarationsEuVatReturnComputeResponseBoxesItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEuVatReturnCompute(
            request: .init(
                countryCode: "xy",
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkV7MGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "declaration": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "counts": {
                    "salesRows": 1000000,
                    "purchaseRows": 1000000
                  },
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
        let expectedResponse = PostV1DeclarationsPlJpkV7MGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            declaration: [
                PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            counts: PostV1DeclarationsPlJpkV7MGenerateResponseCounts(
                salesRows: 1000000,
                purchaseRows: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkV7MGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                kodUrzedu: "kodUrzedu",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkV7MGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "declaration": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "counts": {
                    "salesRows": 1000000,
                    "purchaseRows": 1000000
                  },
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
        let expectedResponse = PostV1DeclarationsPlJpkV7MGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            declaration: [
                PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsPlJpkV7MGenerateResponseDeclarationItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            counts: PostV1DeclarationsPlJpkV7MGenerateResponseCounts(
                salesRows: 1000000,
                purchaseRows: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkV7MGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                kodUrzedu: "kodUrzedu",
                email: "email"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlVatUeGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents"
                      ]
                    }
                  ],
                  "totals": [
                    {
                      "section": "C",
                      "counterparties": 1000000,
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlVatUeGenerateResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsPlVatUeGenerateResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents"
                    ]
                )
            ],
            totals: [
                PostV1DeclarationsPlVatUeGenerateResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlVatUeGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlVatUeGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "rows": [
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents",
                        "documents"
                      ]
                    },
                    {
                      "section": "C",
                      "countryCode": "countryCode",
                      "vatNumber": "vatNumber",
                      "partnerName": "partnerName",
                      "amount": "amount",
                      "documents": [
                        "documents",
                        "documents"
                      ]
                    }
                  ],
                  "totals": [
                    {
                      "section": "C",
                      "counterparties": 1000000,
                      "amount": "amount"
                    },
                    {
                      "section": "C",
                      "counterparties": 1000000,
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlVatUeGenerateResponse(
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            rows: [
                PostV1DeclarationsPlVatUeGenerateResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents",
                        "documents"
                    ]
                ),
                PostV1DeclarationsPlVatUeGenerateResponseRowsItem(
                    section: .c,
                    countryCode: "countryCode",
                    vatNumber: "vatNumber",
                    partnerName: "partnerName",
                    amount: "amount",
                    documents: [
                        "documents",
                        "documents"
                    ]
                )
            ],
            totals: [
                PostV1DeclarationsPlVatUeGenerateResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
                    amount: "amount"
                ),
                PostV1DeclarationsPlVatUeGenerateResponseTotalsItem(
                    section: .c,
                    counterparties: 1000000,
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlVatUeGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlIntrastatGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "detailedThreshold": true,
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000,
                    "returns": 1000000
                  },
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlIntrastatGenerateResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            detailedThreshold: true,
            rows: [
                PostV1DeclarationsPlIntrastatGenerateResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                )
            ],
            totals: PostV1DeclarationsPlIntrastatGenerateResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: Nullable<String>.value("statisticalValue"),
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsPlIntrastatGenerateResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000,
                returns: 1000000
            ),
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlIntrastatGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlIntrastatGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "flow": "arrivals",
                  "referencePeriod": "referencePeriod",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "nip": "nip",
                  "companyName": "companyName",
                  "detailedThreshold": true,
                  "rows": [
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    },
                    {
                      "itemNumber": 1000000,
                      "cnCode": "cnCode",
                      "description": "description",
                      "countryCode": "countryCode",
                      "originCountry": "originCountry",
                      "partnerVat": "partnerVat",
                      "transactionNature": "transactionNature",
                      "transportMode": "transportMode",
                      "deliveryTerms": "deliveryTerms",
                      "netMassKg": "netMassKg",
                      "supplementaryUnit": "supplementaryUnit",
                      "supplementaryQty": "supplementaryQty",
                      "invoicedValue": "invoicedValue",
                      "statisticalValue": "statisticalValue"
                    }
                  ],
                  "totals": {
                    "invoicedValue": "invoicedValue",
                    "statisticalValue": "statisticalValue",
                    "netMassKg": "netMassKg",
                    "lines": 1000000
                  },
                  "counts": {
                    "invoices": 1000000,
                    "linesIncluded": 1000000,
                    "linesSkipped": 1000000,
                    "returns": 1000000
                  },
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlIntrastatGenerateResponse(
            flow: .arrivals,
            referencePeriod: "referencePeriod",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            nip: "nip",
            companyName: "companyName",
            detailedThreshold: true,
            rows: [
                PostV1DeclarationsPlIntrastatGenerateResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                ),
                PostV1DeclarationsPlIntrastatGenerateResponseRowsItem(
                    itemNumber: 1000000,
                    cnCode: "cnCode",
                    description: Nullable<String>.value("description"),
                    countryCode: "countryCode",
                    originCountry: Nullable<String>.value("originCountry"),
                    partnerVat: Nullable<String>.value("partnerVat"),
                    transactionNature: "transactionNature",
                    transportMode: Nullable<String>.value("transportMode"),
                    deliveryTerms: Nullable<String>.value("deliveryTerms"),
                    netMassKg: Nullable<String>.value("netMassKg"),
                    supplementaryUnit: Nullable<String>.value("supplementaryUnit"),
                    supplementaryQty: Nullable<String>.value("supplementaryQty"),
                    invoicedValue: "invoicedValue",
                    statisticalValue: Nullable<String>.value("statisticalValue")
                )
            ],
            totals: PostV1DeclarationsPlIntrastatGenerateResponseTotals(
                invoicedValue: "invoicedValue",
                statisticalValue: Nullable<String>.value("statisticalValue"),
                netMassKg: "netMassKg",
                lines: 1000000
            ),
            counts: PostV1DeclarationsPlIntrastatGenerateResponseCounts(
                invoices: 1000000,
                linesIncluded: 1000000,
                linesSkipped: 1000000,
                returns: 1000000
            ),
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlIntrastatGenerate(
            request: .init(
                year: 1000000,
                month: 1000000,
                flow: .arrivals
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceivedList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "issueDate",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "purchaseInvoiceId"
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
        let expectedResponse = PostV1DeclarationsPlKsefReceivedListResponse(
            rows: [
                PostV1DeclarationsPlKsefReceivedListResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<String>.value("issueDate"),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("purchaseInvoiceId")
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceivedList(
            request: .init(
                from: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                to: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceivedList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "issueDate",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "x"
                    },
                    {
                      "ksefReferenceNumber": "ksefReferenceNumber",
                      "invoiceNumber": "invoiceNumber",
                      "issuerNip": "issuerNip",
                      "issueDate": "issueDate",
                      "acquisitionTimestamp": "acquisitionTimestamp",
                      "grossAmount": "grossAmount",
                      "purchaseInvoiceId": "x"
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
        let expectedResponse = PostV1DeclarationsPlKsefReceivedListResponse(
            rows: [
                PostV1DeclarationsPlKsefReceivedListResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<String>.value("issueDate"),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("x")
                ),
                PostV1DeclarationsPlKsefReceivedListResponseRowsItem(
                    ksefReferenceNumber: "ksefReferenceNumber",
                    invoiceNumber: Nullable<String>.value("invoiceNumber"),
                    issuerNip: Nullable<String>.value("issuerNip"),
                    issueDate: Nullable<String>.value("issueDate"),
                    acquisitionTimestamp: Nullable<String>.value("acquisitionTimestamp"),
                    grossAmount: Nullable<String>.value("grossAmount"),
                    purchaseInvoiceId: Nullable<String>.value("x")
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceivedList(
            request: .init(
                from: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                to: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceivedFetch1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ksefNumber": "ksefNumber",
                  "xml": "xml",
                  "attachedTo": "attachedTo"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlKsefReceivedFetchResponse(
            ksefNumber: "ksefNumber",
            xml: "xml",
            attachedTo: Nullable<String>.value("attachedTo")
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceivedFetch(
            request: .init(ksefNumber: "ksefNumber"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceivedFetch2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ksefNumber": "ksefNumber",
                  "xml": "xml",
                  "attachedTo": "x"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlKsefReceivedFetchResponse(
            ksefNumber: "ksefNumber",
            xml: "xml",
            attachedTo: Nullable<String>.value("x")
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceivedFetch(
            request: .init(ksefNumber: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceipt1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "referenceNumber": "referenceNumber",
                  "state": "sent",
                  "detail": "detail",
                  "invoiceCount": 1000000,
                  "upoXml": "upoXml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlKsefReceiptResponse(
            referenceNumber: "referenceNumber",
            state: .sent,
            detail: Nullable<String>.value("detail"),
            invoiceCount: Nullable<Int64>.value(1000000),
            upoXml: Nullable<String>.value("upoXml")
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceipt(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlKsefReceipt2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "referenceNumber": "referenceNumber",
                  "state": "sent",
                  "detail": "detail",
                  "invoiceCount": 1000000,
                  "upoXml": "upoXml"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlKsefReceiptResponse(
            referenceNumber: "referenceNumber",
            state: .sent,
            detail: Nullable<String>.value("detail"),
            invoiceCount: Nullable<Int64>.value(1000000),
            upoXml: Nullable<String>.value("upoXml")
        )
        let response = try await client.declarations.postV1DeclarationsPlKsefReceipt(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsRecordedForATaxYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
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
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsListResponse(
            rows: [
                PostV1DeclarationsTaxAdjustmentsListResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxAdjustmentsRecordedForATaxYear(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func taxAdjustmentsRecordedForATaxYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "year": 1000000,
                      "kind": "non_deductible",
                      "code": "code",
                      "amount": "amount",
                      "description": "description"
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
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsListResponse(
            rows: [
                PostV1DeclarationsTaxAdjustmentsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                ),
                PostV1DeclarationsTaxAdjustmentsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    kind: .nonDeductible,
                    code: Nullable<String>.value("code"),
                    amount: "amount",
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.taxAdjustmentsRecordedForATaxYear(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordATaxAdjustmentForATaxYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsCreateResponse(
            id: "id",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.recordATaxAdjustmentForATaxYear(
            request: .init(
                year: 1000000,
                kind: .nonDeductible,
                amount: "amount",
                description: "description"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordATaxAdjustmentForATaxYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsCreateResponse(
            id: "x",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.recordATaxAdjustmentForATaxYear(
            request: .init(
                year: 1000000,
                kind: .nonDeductible,
                amount: "amount",
                description: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedTaxAdjustment1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsUpdateResponse(
            id: "id",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.changeARecordedTaxAdjustment(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedTaxAdjustment2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "kind": "non_deductible",
                  "code": "code",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsUpdateResponse(
            id: "x",
            year: 1000000,
            kind: .nonDeductible,
            code: Nullable<String>.value("code"),
            amount: "amount",
            description: "description"
        )
        let response = try await client.declarations.changeARecordedTaxAdjustment(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedTaxAdjustment1() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsDeleteResponse(
            id: "id"
        )
        let response = try await client.declarations.removeARecordedTaxAdjustment(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedTaxAdjustment2() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsTaxAdjustmentsDeleteResponse(
            id: "x"
        )
        let response = try await client.declarations.removeARecordedTaxAdjustment(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsAlreadyMadeTowardsATaxOfAYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
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
        let expectedResponse = PostV1DeclarationsTaxPaymentsListResponse(
            rows: [
                PostV1DeclarationsTaxPaymentsListResponseRowsItem(
                    id: "id",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.paymentsAlreadyMadeTowardsATaxOfAYear(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsAlreadyMadeTowardsATaxOfAYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "tax": "tax",
                      "year": 1000000,
                      "month": 1000000,
                      "kind": "advance",
                      "amount": "amount",
                      "paidOn": "paidOn",
                      "reference": "reference",
                      "description": "description"
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
        let expectedResponse = PostV1DeclarationsTaxPaymentsListResponse(
            rows: [
                PostV1DeclarationsTaxPaymentsListResponseRowsItem(
                    id: "x",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                ),
                PostV1DeclarationsTaxPaymentsListResponseRowsItem(
                    id: "x",
                    tax: "tax",
                    year: 1000000,
                    month: Nullable<Int64>.value(1000000),
                    kind: .advance,
                    amount: "amount",
                    paidOn: "paidOn",
                    reference: Nullable<String>.value("reference"),
                    description: "description"
                )
            ]
        )
        let response = try await client.declarations.paymentsAlreadyMadeTowardsATaxOfAYear(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordAPaymentMadeTowardsATax1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxPaymentsCreateResponse(
            id: "id",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.recordAPaymentMadeTowardsATax(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000,
                kind: .advance,
                amount: "amount",
                paidOn: "paidOn",
                description: "description"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordAPaymentMadeTowardsATax2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxPaymentsCreateResponse(
            id: "x",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.recordAPaymentMadeTowardsATax(
            request: .init(
                tax: .corporateIncomeTax,
                year: 1000000,
                kind: .advance,
                amount: "amount",
                paidOn: "paidOn",
                description: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedTaxPayment1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxPaymentsUpdateResponse(
            id: "id",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.changeARecordedTaxPayment(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedTaxPayment2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "tax": "tax",
                  "year": 1000000,
                  "month": 1000000,
                  "kind": "advance",
                  "amount": "amount",
                  "paidOn": "paidOn",
                  "reference": "reference",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsTaxPaymentsUpdateResponse(
            id: "x",
            tax: "tax",
            year: 1000000,
            month: Nullable<Int64>.value(1000000),
            kind: .advance,
            amount: "amount",
            paidOn: "paidOn",
            reference: Nullable<String>.value("reference"),
            description: "description"
        )
        let response = try await client.declarations.changeARecordedTaxPayment(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedTaxPayment1() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsTaxPaymentsDeleteResponse(
            id: "id"
        )
        let response = try await client.declarations.removeARecordedTaxPayment(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedTaxPayment2() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsTaxPaymentsDeleteResponse(
            id: "x"
        )
        let response = try await client.declarations.removeARecordedTaxPayment(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func adoptionAndSigningFactsOfTheAnnualAccountsOfAYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "approval": {
                    "id": "id",
                    "year": 1000000,
                    "adopted": true,
                    "adoptionDate": "adoptionDate",
                    "dateOfPreparation": "dateOfPreparation",
                    "audited": true,
                    "auditReportQualified": true,
                    "auditorNotElected": true,
                    "notesText": "notesText",
                    "managementReportText": "managementReportText",
                    "auditorReportText": "auditorReportText",
                    "auditorReportDate": "auditorReportDate",
                    "resultToReserves": "resultToReserves",
                    "resultToLossCompensation": "resultToLossCompensation",
                    "resultToRemainder": "resultToRemainder",
                    "signatures": [
                      {
                        "id": "id",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": null,
                        "signedAt": null,
                        "reasonNotSigned": null
                      }
                    ],
                    "distributions": [
                      {
                        "id": "id",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": null
                      }
                    ],
                    "attachments": [
                      {
                        "id": "id",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "fileId",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsGetResponse(
            approval: Nullable<PostV1DeclarationsAnnualAccountsGetResponseApproval>.value(PostV1DeclarationsAnnualAccountsGetResponseApproval(
                id: "id",
                year: 1000000,
                adopted: true,
                adoptionDate: Nullable<String>.value("adoptionDate"),
                dateOfPreparation: "dateOfPreparation",
                audited: true,
                auditReportQualified: Nullable<Bool>.value(true),
                auditorNotElected: true,
                notesText: Nullable<String>.value("notesText"),
                managementReportText: Nullable<String>.value("managementReportText"),
                auditorReportText: Nullable<String>.value("auditorReportText"),
                auditorReportDate: Nullable<String>.value("auditorReportDate"),
                resultToReserves: Nullable<String>.value("resultToReserves"),
                resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
                resultToRemainder: Nullable<String>.value("resultToRemainder"),
                signatures: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalSignaturesItem(
                        id: "id",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: .null,
                        signedAt: .null,
                        reasonNotSigned: .null
                    )
                ],
                distributions: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItem(
                        id: "id",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: .null
                    )
                ],
                attachments: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItem(
                        id: "id",
                        kind: .fullReport,
                        name: "name",
                        fileId: "fileId",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    )
                ]
            ))
        )
        let response = try await client.declarations.adoptionAndSigningFactsOfTheAnnualAccountsOfAYear(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func adoptionAndSigningFactsOfTheAnnualAccountsOfAYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "approval": {
                    "id": "x",
                    "year": 1000000,
                    "adopted": true,
                    "adoptionDate": "adoptionDate",
                    "dateOfPreparation": "dateOfPreparation",
                    "audited": true,
                    "auditReportQualified": true,
                    "auditorNotElected": true,
                    "notesText": "notesText",
                    "managementReportText": "managementReportText",
                    "auditorReportText": "auditorReportText",
                    "auditorReportDate": "auditorReportDate",
                    "resultToReserves": "resultToReserves",
                    "resultToLossCompensation": "resultToLossCompensation",
                    "resultToRemainder": "resultToRemainder",
                    "signatures": [
                      {
                        "id": "x",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": "signedOn",
                        "signedAt": "signedAt",
                        "reasonNotSigned": "reasonNotSigned"
                      },
                      {
                        "id": "x",
                        "directorName": "directorName",
                        "directorType": "managing_current",
                        "signed": true,
                        "signedOn": "signedOn",
                        "signedAt": "signedAt",
                        "reasonNotSigned": "reasonNotSigned"
                      }
                    ],
                    "distributions": [
                      {
                        "id": "x",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": "description"
                      },
                      {
                        "id": "x",
                        "decidedOn": "decidedOn",
                        "kind": "dividend",
                        "amount": "amount",
                        "description": "description"
                      }
                    ],
                    "attachments": [
                      {
                        "id": "x",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "x",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
                      },
                      {
                        "id": "x",
                        "kind": "full_report",
                        "name": "name",
                        "fileId": "x",
                        "fileName": "fileName",
                        "mimeType": "mimeType",
                        "sizeBytes": 1000000,
                        "storageKey": "storageKey"
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsGetResponse(
            approval: Nullable<PostV1DeclarationsAnnualAccountsGetResponseApproval>.value(PostV1DeclarationsAnnualAccountsGetResponseApproval(
                id: "x",
                year: 1000000,
                adopted: true,
                adoptionDate: Nullable<String>.value("adoptionDate"),
                dateOfPreparation: "dateOfPreparation",
                audited: true,
                auditReportQualified: Nullable<Bool>.value(true),
                auditorNotElected: true,
                notesText: Nullable<String>.value("notesText"),
                managementReportText: Nullable<String>.value("managementReportText"),
                auditorReportText: Nullable<String>.value("auditorReportText"),
                auditorReportDate: Nullable<String>.value("auditorReportDate"),
                resultToReserves: Nullable<String>.value("resultToReserves"),
                resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
                resultToRemainder: Nullable<String>.value("resultToRemainder"),
                signatures: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalSignaturesItem(
                        id: "x",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: Nullable<String>.value("signedOn"),
                        signedAt: Nullable<String>.value("signedAt"),
                        reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                    ),
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalSignaturesItem(
                        id: "x",
                        directorName: "directorName",
                        directorType: .managingCurrent,
                        signed: true,
                        signedOn: Nullable<String>.value("signedOn"),
                        signedAt: Nullable<String>.value("signedAt"),
                        reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                    )
                ],
                distributions: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItem(
                        id: "x",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: Nullable<String>.value("description")
                    ),
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalDistributionsItem(
                        id: "x",
                        decidedOn: "decidedOn",
                        kind: .dividend,
                        amount: "amount",
                        description: Nullable<String>.value("description")
                    )
                ],
                attachments: [
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItem(
                        id: "x",
                        kind: .fullReport,
                        name: "name",
                        fileId: "x",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    ),
                    PostV1DeclarationsAnnualAccountsGetResponseApprovalAttachmentsItem(
                        id: "x",
                        kind: .fullReport,
                        name: "name",
                        fileId: "x",
                        fileName: "fileName",
                        mimeType: "mimeType",
                        sizeBytes: 1000000,
                        storageKey: "storageKey"
                    )
                ]
            ))
        )
        let response = try await client.declarations.adoptionAndSigningFactsOfTheAnnualAccountsOfAYear(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordTheAdoptionAndPreparationOfTheAnnualAccountsOfAYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "adopted": true,
                  "adoptionDate": "adoptionDate",
                  "dateOfPreparation": "dateOfPreparation",
                  "audited": true,
                  "auditReportQualified": true,
                  "auditorNotElected": true,
                  "notesText": "notesText",
                  "managementReportText": "managementReportText",
                  "auditorReportText": "auditorReportText",
                  "auditorReportDate": "auditorReportDate",
                  "resultToReserves": "resultToReserves",
                  "resultToLossCompensation": "resultToLossCompensation",
                  "resultToRemainder": "resultToRemainder",
                  "signatures": [
                    {
                      "id": "id",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "signedAt",
                      "reasonNotSigned": "reasonNotSigned"
                    }
                  ],
                  "distributions": [
                    {
                      "id": "id",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "attachments": [
                    {
                      "id": "id",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "fileId",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsSetResponse(
            id: "id",
            year: 1000000,
            adopted: true,
            adoptionDate: Nullable<String>.value("adoptionDate"),
            dateOfPreparation: "dateOfPreparation",
            audited: true,
            auditReportQualified: Nullable<Bool>.value(true),
            auditorNotElected: true,
            notesText: Nullable<String>.value("notesText"),
            managementReportText: Nullable<String>.value("managementReportText"),
            auditorReportText: Nullable<String>.value("auditorReportText"),
            auditorReportDate: Nullable<String>.value("auditorReportDate"),
            resultToReserves: Nullable<String>.value("resultToReserves"),
            resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
            resultToRemainder: Nullable<String>.value("resultToRemainder"),
            signatures: [
                PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem(
                    id: "id",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<String>.value("signedAt"),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                )
            ],
            distributions: [
                PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem(
                    id: "id",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                )
            ],
            attachments: [
                PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem(
                    id: "id",
                    kind: .fullReport,
                    name: "name",
                    fileId: "fileId",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                )
            ]
        )
        let response = try await client.declarations.recordTheAdoptionAndPreparationOfTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                adopted: true,
                dateOfPreparation: "dateOfPreparation"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordTheAdoptionAndPreparationOfTheAnnualAccountsOfAYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "adopted": true,
                  "adoptionDate": "adoptionDate",
                  "dateOfPreparation": "dateOfPreparation",
                  "audited": true,
                  "auditReportQualified": true,
                  "auditorNotElected": true,
                  "notesText": "notesText",
                  "managementReportText": "managementReportText",
                  "auditorReportText": "auditorReportText",
                  "auditorReportDate": "auditorReportDate",
                  "resultToReserves": "resultToReserves",
                  "resultToLossCompensation": "resultToLossCompensation",
                  "resultToRemainder": "resultToRemainder",
                  "signatures": [
                    {
                      "id": "x",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "signedAt",
                      "reasonNotSigned": "reasonNotSigned"
                    },
                    {
                      "id": "x",
                      "directorName": "directorName",
                      "directorType": "managing_current",
                      "signed": true,
                      "signedOn": "signedOn",
                      "signedAt": "signedAt",
                      "reasonNotSigned": "reasonNotSigned"
                    }
                  ],
                  "distributions": [
                    {
                      "id": "x",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    },
                    {
                      "id": "x",
                      "decidedOn": "decidedOn",
                      "kind": "dividend",
                      "amount": "amount",
                      "description": "description"
                    }
                  ],
                  "attachments": [
                    {
                      "id": "x",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
                    },
                    {
                      "id": "x",
                      "kind": "full_report",
                      "name": "name",
                      "fileId": "x",
                      "fileName": "fileName",
                      "mimeType": "mimeType",
                      "sizeBytes": 1000000,
                      "storageKey": "storageKey"
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsSetResponse(
            id: "x",
            year: 1000000,
            adopted: true,
            adoptionDate: Nullable<String>.value("adoptionDate"),
            dateOfPreparation: "dateOfPreparation",
            audited: true,
            auditReportQualified: Nullable<Bool>.value(true),
            auditorNotElected: true,
            notesText: Nullable<String>.value("notesText"),
            managementReportText: Nullable<String>.value("managementReportText"),
            auditorReportText: Nullable<String>.value("auditorReportText"),
            auditorReportDate: Nullable<String>.value("auditorReportDate"),
            resultToReserves: Nullable<String>.value("resultToReserves"),
            resultToLossCompensation: Nullable<String>.value("resultToLossCompensation"),
            resultToRemainder: Nullable<String>.value("resultToRemainder"),
            signatures: [
                PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem(
                    id: "x",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<String>.value("signedAt"),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                ),
                PostV1DeclarationsAnnualAccountsSetResponseSignaturesItem(
                    id: "x",
                    directorName: "directorName",
                    directorType: .managingCurrent,
                    signed: true,
                    signedOn: Nullable<String>.value("signedOn"),
                    signedAt: Nullable<String>.value("signedAt"),
                    reasonNotSigned: Nullable<String>.value("reasonNotSigned")
                )
            ],
            distributions: [
                PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem(
                    id: "x",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                ),
                PostV1DeclarationsAnnualAccountsSetResponseDistributionsItem(
                    id: "x",
                    decidedOn: "decidedOn",
                    kind: .dividend,
                    amount: "amount",
                    description: Nullable<String>.value("description")
                )
            ],
            attachments: [
                PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem(
                    id: "x",
                    kind: .fullReport,
                    name: "name",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                ),
                PostV1DeclarationsAnnualAccountsSetResponseAttachmentsItem(
                    id: "x",
                    kind: .fullReport,
                    name: "name",
                    fileId: "x",
                    fileName: "fileName",
                    mimeType: "mimeType",
                    sizeBytes: 1000000,
                    storageKey: "storageKey"
                )
            ]
        )
        let response = try await client.declarations.recordTheAdoptionAndPreparationOfTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                adopted: true,
                dateOfPreparation: "dateOfPreparation"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordWhetherADirectorSignedTheAnnualAccountsOfAYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "signedAt",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesCreateResponse(
            id: "id",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<String>.value("signedAt"),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.recordWhetherADirectorSignedTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                directorName: "directorName",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordWhetherADirectorSignedTheAnnualAccountsOfAYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "signedAt",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesCreateResponse(
            id: "x",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<String>.value("signedAt"),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.recordWhetherADirectorSignedTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                directorName: "x",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedDirectorSignature1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "signedAt",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesUpdateResponse(
            id: "id",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<String>.value("signedAt"),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.changeARecordedDirectorSignature(
            request: .init(
                id: "id",
                directorName: "directorName",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedDirectorSignature2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "directorName": "directorName",
                  "directorType": "managing_current",
                  "signed": true,
                  "signedOn": "signedOn",
                  "signedAt": "signedAt",
                  "reasonNotSigned": "reasonNotSigned"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesUpdateResponse(
            id: "x",
            directorName: "directorName",
            directorType: .managingCurrent,
            signed: true,
            signedOn: Nullable<String>.value("signedOn"),
            signedAt: Nullable<String>.value("signedAt"),
            reasonNotSigned: Nullable<String>.value("reasonNotSigned")
        )
        let response = try await client.declarations.changeARecordedDirectorSignature(
            request: .init(
                id: "x",
                directorName: "x",
                directorType: .managingCurrent,
                signed: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedDirectorSignature1() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesDeleteResponse(
            id: "id"
        )
        let response = try await client.declarations.removeARecordedDirectorSignature(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedDirectorSignature2() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsSignaturesDeleteResponse(
            id: "x"
        )
        let response = try await client.declarations.removeARecordedDirectorSignature(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordADecisionToDistributeProfitADividendAnInterimDividendOrAPaymentTreatedAsOne1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsCreateResponse(
            id: "id",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.recordADecisionToDistributeProfitADividendAnInterimDividendOrAPaymentTreatedAsOne(
            request: .init(
                year: 1000000,
                decidedOn: "decidedOn",
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recordADecisionToDistributeProfitADividendAnInterimDividendOrAPaymentTreatedAsOne2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsCreateResponse(
            id: "x",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.recordADecisionToDistributeProfitADividendAnInterimDividendOrAPaymentTreatedAsOne(
            request: .init(
                year: 1000000,
                decidedOn: "decidedOn",
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedProfitDistribution1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsUpdateResponse(
            id: "id",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.changeARecordedProfitDistribution(
            request: .init(
                id: "id",
                decidedOn: "decidedOn",
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func changeARecordedProfitDistribution2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "decidedOn": "decidedOn",
                  "kind": "dividend",
                  "amount": "amount",
                  "description": "description"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsUpdateResponse(
            id: "x",
            decidedOn: "decidedOn",
            kind: .dividend,
            amount: "amount",
            description: Nullable<String>.value("description")
        )
        let response = try await client.declarations.changeARecordedProfitDistribution(
            request: .init(
                id: "x",
                decidedOn: "decidedOn",
                kind: .dividend,
                amount: "amount"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedProfitDistribution1() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsDeleteResponse(
            id: "id"
        )
        let response = try await client.declarations.removeARecordedProfitDistribution(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeARecordedProfitDistribution2() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsDistributionsDeleteResponse(
            id: "x"
        )
        let response = try await client.declarations.removeARecordedProfitDistribution(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachAnUploadedDocumentToTheAnnualAccountsOfAYear1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "kind": "full_report",
                  "name": "name",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "storageKey": "storageKey"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsAttachmentsAddResponse(
            id: "id",
            kind: .fullReport,
            name: "name",
            fileId: "fileId",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            storageKey: "storageKey"
        )
        let response = try await client.declarations.attachAnUploadedDocumentToTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                kind: .fullReport,
                ref: "ref"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachAnUploadedDocumentToTheAnnualAccountsOfAYear2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "kind": "full_report",
                  "name": "name",
                  "fileId": "x",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "sizeBytes": 1000000,
                  "storageKey": "storageKey"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsAnnualAccountsAttachmentsAddResponse(
            id: "x",
            kind: .fullReport,
            name: "name",
            fileId: "x",
            fileName: "fileName",
            mimeType: "mimeType",
            sizeBytes: 1000000,
            storageKey: "storageKey"
        )
        let response = try await client.declarations.attachAnUploadedDocumentToTheAnnualAccountsOfAYear(
            request: .init(
                year: 1000000,
                kind: .fullReport,
                ref: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeADocumentAttachedToTheAnnualAccountsAndDeleteItsFile1() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsAttachmentsDeleteResponse(
            id: "id"
        )
        let response = try await client.declarations.removeADocumentAttachedToTheAnnualAccountsAndDeleteItsFile(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func removeADocumentAttachedToTheAnnualAccountsAndDeleteItsFile2() async throws -> Void {
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
        let expectedResponse = PostV1DeclarationsAnnualAccountsAttachmentsDeleteResponse(
            id: "x"
        )
        let response = try await client.declarations.removeADocumentAttachedToTheAnnualAccountsAndDeleteItsFile(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCyTd4Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxIdentificationCode": "taxIdentificationCode",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsCyTd4GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxIdentificationCode: "taxIdentificationCode",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsCyTd4GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsCyTd4Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCyTd4Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxIdentificationCode": "taxIdentificationCode",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsCyTd4GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxIdentificationCode: "taxIdentificationCode",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsCyTd4GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsCyTd4GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsCyTd4Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCyHe32Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "registrarNumber": "registrarNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsCyHe32GenerateResponse(
            year: 1000000,
            madeUpTo: "madeUpTo",
            registrarNumber: "registrarNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                PostV1DeclarationsCyHe32GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                PostV1DeclarationsCyHe32GenerateResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                PostV1DeclarationsCyHe32GenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsCyHe32Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCyHe32Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "registrarNumber": "registrarNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    },
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsCyHe32GenerateResponse(
            year: 1000000,
            madeUpTo: "madeUpTo",
            registrarNumber: "registrarNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                PostV1DeclarationsCyHe32GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsCyHe32GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                PostV1DeclarationsCyHe32GenerateResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                ),
                PostV1DeclarationsCyHe32GenerateResponseMembersItem(
                    name: "name",
                    identifier: "identifier",
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                PostV1DeclarationsCyHe32GenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                ),
                PostV1DeclarationsCyHe32GenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsCyHe32Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnsGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "variant": "variant",
                  "content": "content",
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
        let expectedResponse = PostV1DeclarationsDeReturnsGenerateResponse(
            ruleKey: "ruleKey",
            period: "period",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnsGenerate(
            request: .init(
                ruleKey: .deEBilanz,
                period: "period"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnsGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "variant": "variant",
                  "content": "content",
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
        let expectedResponse = PostV1DeclarationsDeReturnsGenerateResponse(
            ruleKey: "ruleKey",
            period: "period",
            fileName: "fileName",
            mimeType: "mimeType",
            variant: Nullable<String>.value("variant"),
            content: "content",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnsGenerate(
            request: .init(
                ruleKey: .deEBilanz,
                period: "buzz"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnFactsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "kind",
                        "date": "date",
                        "partner": "partner",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "name",
                        "date": "date",
                        "kind": "cash",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "date",
                      "from": "from",
                      "to": "to"
                    },
                    "municipalities": [
                      {
                        "name": "name",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "fileNumber",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "name",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "smallBusinessSwitchDate",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "name",
                      "street": "street",
                      "houseNumber": "houseNumber",
                      "postalCode": "postalCode",
                      "city": "city"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = PostV1DeclarationsDeReturnFactsGetResponse(
            year: 1000000,
            facts: PostV1DeclarationsDeReturnFactsGetResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem(
                        kind: "kind",
                        date: "date",
                        partner: "partner",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem(
                        name: "name",
                        date: "date",
                        kind: .cash,
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation>.value(PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation(
                    date: "date",
                    from: "from",
                    to: "to"
                ))),
                municipalities: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem(
                        name: "name",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem(
                        fileNumber: "fileNumber",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem(
                        name: "name",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<String>.value("smallBusinessSwitchDate")),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative>.value(PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative(
                    role: .agent,
                    name: "name",
                    street: "street",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "postalCode",
                    city: "city"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnFactsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnFactsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds",
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "x",
                        "date": "date",
                        "partner": "x",
                        "amount": "amount"
                      },
                      {
                        "kind": "x",
                        "date": "date",
                        "partner": "x",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "x",
                        "date": "date",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      },
                      {
                        "name": "x",
                        "date": "date",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      },
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "date",
                      "from": "x",
                      "to": "x"
                    },
                    "municipalities": [
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      },
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      },
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      },
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      },
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "smallBusinessSwitchDate",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "x",
                      "street": "x",
                      "houseNumber": "houseNumber",
                      "postalCode": "x",
                      "city": "x"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = PostV1DeclarationsDeReturnFactsGetResponse(
            year: 1000000,
            facts: PostV1DeclarationsDeReturnFactsGetResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds",
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem(
                        kind: "x",
                        date: "date",
                        partner: "x",
                        amount: "amount"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContractsItem(
                        kind: "x",
                        date: "date",
                        partner: "x",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem(
                        name: "x",
                        date: "date",
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsContributionsItem(
                        name: "x",
                        date: "date",
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation>.value(PostV1DeclarationsDeReturnFactsGetResponseFactsRelocation(
                    date: "date",
                    from: "x",
                    to: "x"
                ))),
                municipalities: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    ),
                    PostV1DeclarationsDeReturnFactsGetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<String>.value("smallBusinessSwitchDate")),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative>.value(PostV1DeclarationsDeReturnFactsGetResponseFactsRepresentative(
                    role: .agent,
                    name: "x",
                    street: "x",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "x",
                    city: "x"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnFactsGet(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnFactsSet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "kind",
                        "date": "date",
                        "partner": "partner",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "name",
                        "date": "date",
                        "kind": "cash",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "date",
                      "from": "from",
                      "to": "to"
                    },
                    "municipalities": [
                      {
                        "name": "name",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "fileNumber",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "name",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "smallBusinessSwitchDate",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "name",
                      "street": "street",
                      "houseNumber": "houseNumber",
                      "postalCode": "postalCode",
                      "city": "city"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = PostV1DeclarationsDeReturnFactsSetResponse(
            year: 1000000,
            facts: PostV1DeclarationsDeReturnFactsSetResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContractsItem(
                        kind: "kind",
                        date: "date",
                        partner: "partner",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContributionsItem(
                        name: "name",
                        date: "date",
                        kind: .cash,
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<PostV1DeclarationsDeReturnFactsSetResponseFactsRelocation>.value(PostV1DeclarationsDeReturnFactsSetResponseFactsRelocation(
                    date: "date",
                    from: "from",
                    to: "to"
                ))),
                municipalities: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsMunicipalitiesItem(
                        name: "name",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsLandHoldingsItem(
                        fileNumber: "fileNumber",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsParticipationsItem(
                        name: "name",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<String>.value("smallBusinessSwitchDate")),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<PostV1DeclarationsDeReturnFactsSetResponseFactsRepresentative>.value(PostV1DeclarationsDeReturnFactsSetResponseFactsRepresentative(
                    role: .agent,
                    name: "name",
                    street: "street",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "postalCode",
                    city: "city"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnFactsSet(
            request: .init(
                year: 1000000,
                facts: PostV1DeclarationsDeReturnFactsSetRequestFacts(

                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeReturnFactsSet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "facts": {
                    "changedShareholderIds": [
                      "changedShareholderIds",
                      "changedShareholderIds"
                    ],
                    "shareholderContracts": true,
                    "contracts": [
                      {
                        "kind": "x",
                        "date": "date",
                        "partner": "x",
                        "amount": "amount"
                      },
                      {
                        "kind": "x",
                        "date": "date",
                        "partner": "x",
                        "amount": "amount"
                      }
                    ],
                    "harmfulShareAcquisition": true,
                    "coronaAid": "coronaAid",
                    "lossCarryback": "lossCarryback",
                    "donationCarryforward": "donationCarryforward",
                    "contributionAccountOpening": "contributionAccountOpening",
                    "contributions": [
                      {
                        "name": "x",
                        "date": "date",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      },
                      {
                        "name": "x",
                        "date": "date",
                        "kind": "cash",
                        "description": "description",
                        "amount": "amount"
                      }
                    ],
                    "distributions": [
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      },
                      {
                        "resolutionDate": "resolutionDate",
                        "paidOn": "paidOn",
                        "amount": "amount",
                        "certifiedReduction": "certifiedReduction"
                      }
                    ],
                    "taxBalanceEquity": "taxBalanceEquity",
                    "multipleMunicipalities": true,
                    "relocation": {
                      "date": "date",
                      "from": "x",
                      "to": "x"
                    },
                    "municipalities": [
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      },
                      {
                        "name": "x",
                        "postalCode": "postalCode",
                        "ags": "ags",
                        "hebesatz": "hebesatz",
                        "wages": "wages"
                      }
                    ],
                    "landHoldings": [
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      },
                      {
                        "fileNumber": "x",
                        "assessedValue": "assessedValue",
                        "category": "rental_east"
                      }
                    ],
                    "propertyTaxExpense": "propertyTaxExpense",
                    "licencesToNonResidents": "licencesToNonResidents",
                    "participations": [
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      },
                      {
                        "name": "x",
                        "countryCode": "countryCode",
                        "sharePercent": "sharePercent",
                        "dividends": "dividends"
                      }
                    ],
                    "foreignIncome": [
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      },
                      {
                        "countryCode": "countryCode",
                        "kind": "dividends",
                        "income": "income"
                      }
                    ],
                    "smallBusinessSwitchDate": "smallBusinessSwitchDate",
                    "refundProcedureApplied": true,
                    "bic": "bic",
                    "representative": {
                      "role": "agent",
                      "name": "x",
                      "street": "x",
                      "houseNumber": "houseNumber",
                      "postalCode": "x",
                      "city": "x"
                    },
                    "singleTransportTax": "singleTransportTax",
                    "distanceSales": "distanceSales"
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
        let expectedResponse = PostV1DeclarationsDeReturnFactsSetResponse(
            year: 1000000,
            facts: PostV1DeclarationsDeReturnFactsSetResponseFacts(
                changedShareholderIds: Optional([
                    "changedShareholderIds",
                    "changedShareholderIds"
                ]),
                shareholderContracts: Optional(true),
                contracts: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContractsItem(
                        kind: "x",
                        date: "date",
                        partner: "x",
                        amount: "amount"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContractsItem(
                        kind: "x",
                        date: "date",
                        partner: "x",
                        amount: "amount"
                    )
                ]),
                harmfulShareAcquisition: Optional(true),
                coronaAid: Optional("coronaAid"),
                lossCarryback: Optional("lossCarryback"),
                donationCarryforward: Optional("donationCarryforward"),
                contributionAccountOpening: Optional("contributionAccountOpening"),
                contributions: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContributionsItem(
                        name: "x",
                        date: "date",
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsContributionsItem(
                        name: "x",
                        date: "date",
                        kind: .cash,
                        description: Optional("description"),
                        amount: "amount"
                    )
                ]),
                distributions: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsDistributionsItem(
                        resolutionDate: "resolutionDate",
                        paidOn: "paidOn",
                        amount: "amount",
                        certifiedReduction: "certifiedReduction"
                    )
                ]),
                taxBalanceEquity: Optional("taxBalanceEquity"),
                multipleMunicipalities: Optional(true),
                relocation: Optional(Nullable<PostV1DeclarationsDeReturnFactsSetResponseFactsRelocation>.value(PostV1DeclarationsDeReturnFactsSetResponseFactsRelocation(
                    date: "date",
                    from: "x",
                    to: "x"
                ))),
                municipalities: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsMunicipalitiesItem(
                        name: "x",
                        postalCode: "postalCode",
                        ags: "ags",
                        hebesatz: "hebesatz",
                        wages: "wages"
                    )
                ]),
                landHoldings: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsLandHoldingsItem(
                        fileNumber: "x",
                        assessedValue: "assessedValue",
                        category: .rentalEast
                    )
                ]),
                propertyTaxExpense: Optional("propertyTaxExpense"),
                licencesToNonResidents: Optional("licencesToNonResidents"),
                participations: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsParticipationsItem(
                        name: "x",
                        countryCode: "countryCode",
                        sharePercent: "sharePercent",
                        dividends: "dividends"
                    )
                ]),
                foreignIncome: Optional([
                    PostV1DeclarationsDeReturnFactsSetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    ),
                    PostV1DeclarationsDeReturnFactsSetResponseFactsForeignIncomeItem(
                        countryCode: "countryCode",
                        kind: .dividends,
                        income: "income"
                    )
                ]),
                smallBusinessSwitchDate: Optional(Nullable<String>.value("smallBusinessSwitchDate")),
                refundProcedureApplied: Optional(true),
                bic: Optional("bic"),
                representative: Optional(Nullable<PostV1DeclarationsDeReturnFactsSetResponseFactsRepresentative>.value(PostV1DeclarationsDeReturnFactsSetResponseFactsRepresentative(
                    role: .agent,
                    name: "x",
                    street: "x",
                    houseNumber: Optional("houseNumber"),
                    postalCode: "x",
                    city: "x"
                ))),
                singleTransportTax: Optional("singleTransportTax"),
                distanceSales: Optional("distanceSales")
            )
        )
        let response = try await client.declarations.postV1DeclarationsDeReturnFactsSet(
            request: .init(
                year: 1000000,
                facts: PostV1DeclarationsDeReturnFactsSetRequestFacts(

                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeDeuevGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings"
                      ]
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsDeDeuevGenerateResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                PostV1DeclarationsDeDeuevGenerateResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeDeuevGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeDeuevGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "name": "name",
                      "abgabegrund": "abgabegrund",
                      "versicherungsnummer": "versicherungsnummer",
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "personengruppe": "personengruppe",
                      "beitragsgruppe": "beitragsgruppe",
                      "zeitraumBeginn": "zeitraumBeginn",
                      "zeitraumEnde": "zeitraumEnde",
                      "entgelt": "entgelt",
                      "record": "record",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsDeDeuevGenerateResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                PostV1DeclarationsDeDeuevGenerateResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                PostV1DeclarationsDeDeuevGenerateResponseRecordsItem(
                    employeeId: "employeeId",
                    name: "name",
                    abgabegrund: "abgabegrund",
                    versicherungsnummer: "versicherungsnummer",
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    personengruppe: "personengruppe",
                    beitragsgruppe: "beitragsgruppe",
                    zeitraumBeginn: "zeitraumBeginn",
                    zeitraumEnde: Nullable<String>.value("zeitraumEnde"),
                    entgelt: "entgelt",
                    record: "record",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeDeuevGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeBeitragsnachweisGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsDeBeitragsnachweisGenerateResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                )
            ],
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeBeitragsnachweisGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDeBeitragsnachweisGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "source": "source",
                  "records": [
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        },
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    },
                    {
                      "betriebsnummerKrankenkasse": "betriebsnummerKrankenkasse",
                      "faelligkeitstag": "faelligkeitstag",
                      "kvAllgemein": "kvAllgemein",
                      "kvZusatzbeitrag": "kvZusatzbeitrag",
                      "pauschsteuer": "pauschsteuer",
                      "beitragssatzAllgemein": "beitragssatzAllgemein",
                      "summe": "summe",
                      "positionen": [
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        },
                        {
                          "beitragsgruppe": "beitragsgruppe",
                          "betrag": "betrag"
                        }
                      ],
                      "record": "record"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsDeBeitragsnachweisGenerateResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            content: "content",
            source: "source",
            records: [
                PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        ),
                        PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                ),
                PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItem(
                    betriebsnummerKrankenkasse: "betriebsnummerKrankenkasse",
                    faelligkeitstag: "faelligkeitstag",
                    kvAllgemein: "kvAllgemein",
                    kvZusatzbeitrag: "kvZusatzbeitrag",
                    pauschsteuer: "pauschsteuer",
                    beitragssatzAllgemein: "beitragssatzAllgemein",
                    summe: "summe",
                    positionen: [
                        PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        ),
                        PostV1DeclarationsDeBeitragsnachweisGenerateResponseRecordsItemPositionenItem(
                            beitragsgruppe: "beitragsgruppe",
                            betrag: "betrag"
                        )
                    ],
                    record: "record"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsDeBeitragsnachweisGenerate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDkSelskabsskatGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "cvrNummer": "cvrNummer",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsDkSelskabsskatGenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            cvrNummer: "cvrNummer",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsDkSelskabsskatGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsDkSelskabsskatGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "cvrNummer": "cvrNummer",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsDkSelskabsskatGenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            cvrNummer: "cvrNummer",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsDkSelskabsskatGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsDkSelskabsskatGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEeEmploymentRegisterSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "entryDate": "entryDate",
                  "xml": "xml",
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
        let expectedResponse = PostV1DeclarationsEeEmploymentRegisterSendResponse(
            reference: "reference",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            entryDate: "entryDate",
            xml: "xml",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEeEmploymentRegisterSend(
            request: .init(
                contractId: "contractId",
                event: .start
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEeEmploymentRegisterSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "entryDate": "entryDate",
                  "xml": "xml",
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
        let expectedResponse = PostV1DeclarationsEeEmploymentRegisterSendResponse(
            reference: "reference",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            entryDate: "entryDate",
            xml: "xml",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsEeEmploymentRegisterSend(
            request: .init(
                contractId: "x",
                event: .start
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEsVerifactuDeclaracionResponsable1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "content": "content",
                  "text": "text",
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEsVerifactuDeclaracionResponsableResponse(
            fileName: "fileName",
            mimeType: "mimeType",
            content: "content",
            text: "text",
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEsVerifactuDeclaracionResponsable(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsEsVerifactuDeclaracionResponsable2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "mimeType": "mimeType",
                  "content": "content",
                  "text": "text",
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsEsVerifactuDeclaracionResponsableResponse(
            fileName: "fileName",
            mimeType: "mimeType",
            content: "content",
            text: "text",
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsEsVerifactuDeclaracionResponsable(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsIeCt1Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxRegNumber": "taxRegNumber",
                  "ct1": {
                    "fileName": "fileName",
                    "xml": "xml"
                  },
                  "accounts": {
                    "fileName": "fileName",
                    "xhtml": "xhtml"
                  },
                  "accountsBlocking": [
                    "accountsBlocking"
                  ],
                  "ixbrlMandatory": true,
                  "criteria": {
                    "balanceSheetTotal": "balanceSheetTotal",
                    "turnover": "turnover",
                    "averageEmployees": 1.1
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsIeCt1GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxRegNumber: "taxRegNumber",
            ct1: PostV1DeclarationsIeCt1GenerateResponseCt1(
                fileName: "fileName",
                xml: "xml"
            ),
            accounts: Nullable<PostV1DeclarationsIeCt1GenerateResponseAccounts>.value(PostV1DeclarationsIeCt1GenerateResponseAccounts(
                fileName: "fileName",
                xhtml: "xhtml"
            )),
            accountsBlocking: [
                "accountsBlocking"
            ],
            ixbrlMandatory: true,
            criteria: PostV1DeclarationsIeCt1GenerateResponseCriteria(
                balanceSheetTotal: "balanceSheetTotal",
                turnover: "turnover",
                averageEmployees: 1.1
            ),
            fields: [
                PostV1DeclarationsIeCt1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsIeCt1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsIeCt1Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "taxRegNumber": "taxRegNumber",
                  "ct1": {
                    "fileName": "fileName",
                    "xml": "xml"
                  },
                  "accounts": {
                    "fileName": "fileName",
                    "xhtml": "xhtml"
                  },
                  "accountsBlocking": [
                    "accountsBlocking",
                    "accountsBlocking"
                  ],
                  "ixbrlMandatory": true,
                  "criteria": {
                    "balanceSheetTotal": "balanceSheetTotal",
                    "turnover": "turnover",
                    "averageEmployees": 1.1
                  },
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsIeCt1GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            taxRegNumber: "taxRegNumber",
            ct1: PostV1DeclarationsIeCt1GenerateResponseCt1(
                fileName: "fileName",
                xml: "xml"
            ),
            accounts: Nullable<PostV1DeclarationsIeCt1GenerateResponseAccounts>.value(PostV1DeclarationsIeCt1GenerateResponseAccounts(
                fileName: "fileName",
                xhtml: "xhtml"
            )),
            accountsBlocking: [
                "accountsBlocking",
                "accountsBlocking"
            ],
            ixbrlMandatory: true,
            criteria: PostV1DeclarationsIeCt1GenerateResponseCriteria(
                balanceSheetTotal: "balanceSheetTotal",
                turnover: "turnover",
                averageEmployees: 1.1
            ),
            fields: [
                PostV1DeclarationsIeCt1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsIeCt1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsIeCt1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsIeB1Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "croNumber": "croNumber",
                  "companyName": "companyName",
                  "annualReturnDate": "annualReturnDate",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "directors": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    }
                  ],
                  "secretary": {
                    "name": "name",
                    "identifier": "identifier"
                  },
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "acquisitionDate"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsIeB1GenerateResponse(
            year: 1000000,
            croNumber: "croNumber",
            companyName: "companyName",
            annualReturnDate: Nullable<String>.value("annualReturnDate"),
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsIeB1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            directors: [
                PostV1DeclarationsIeB1GenerateResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                )
            ],
            secretary: Nullable<PostV1DeclarationsIeB1GenerateResponseSecretary>.value(PostV1DeclarationsIeB1GenerateResponseSecretary(
                name: "name",
                identifier: Nullable<String>.value("identifier")
            )),
            members: [
                PostV1DeclarationsIeB1GenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate")
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsIeB1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsIeB1Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "croNumber": "croNumber",
                  "companyName": "companyName",
                  "annualReturnDate": "annualReturnDate",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "directors": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "appointedOn": "appointedOn"
                    }
                  ],
                  "secretary": {
                    "name": "name",
                    "identifier": "identifier"
                  },
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "acquisitionDate"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "sharesQuantity": "sharesQuantity",
                      "sharesAmount": "sharesAmount",
                      "sharesType": "sharesType",
                      "acquisitionDate": "acquisitionDate"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsIeB1GenerateResponse(
            year: 1000000,
            croNumber: "croNumber",
            companyName: "companyName",
            annualReturnDate: Nullable<String>.value("annualReturnDate"),
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsIeB1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsIeB1GenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            directors: [
                PostV1DeclarationsIeB1GenerateResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                ),
                PostV1DeclarationsIeB1GenerateResponseDirectorsItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    appointedOn: Nullable<String>.value("appointedOn")
                )
            ],
            secretary: Nullable<PostV1DeclarationsIeB1GenerateResponseSecretary>.value(PostV1DeclarationsIeB1GenerateResponseSecretary(
                name: "name",
                identifier: Nullable<String>.value("identifier")
            )),
            members: [
                PostV1DeclarationsIeB1GenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate")
                ),
                PostV1DeclarationsIeB1GenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    sharesQuantity: Nullable<String>.value("sharesQuantity"),
                    sharesAmount: Nullable<String>.value("sharesAmount"),
                    sharesType: Nullable<String>.value("sharesType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate")
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsIeB1Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsItSdiPurchaseSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "transport": "bridge",
                  "tipoDocumento": "TD16",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "fileId",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = PostV1DeclarationsItSdiPurchaseSendResponse(
            sent: true,
            system: "system",
            transport: .bridge,
            tipoDocumento: .td16,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "fileId",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsItSdiPurchaseSend(
            request: .init(purchaseInvoiceId: "purchaseInvoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsItSdiPurchaseSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "sent": true,
                  "system": "system",
                  "transport": "bridge",
                  "tipoDocumento": "TD16",
                  "messageId": "messageId",
                  "nationalNumber": "nationalNumber",
                  "status": "sent",
                  "detail": "detail",
                  "fileId": "x",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = PostV1DeclarationsItSdiPurchaseSendResponse(
            sent: true,
            system: "system",
            transport: .bridge,
            tipoDocumento: .td16,
            messageId: "messageId",
            nationalNumber: Nullable<String>.value("nationalNumber"),
            status: .sent,
            detail: Nullable<String>.value("detail"),
            fileId: "x",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsItSdiPurchaseSend(
            request: .init(purchaseInvoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsItSdiPurchasePreview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tipoDocumento": "TD16",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = PostV1DeclarationsItSdiPurchasePreviewResponse(
            tipoDocumento: .td16,
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsItSdiPurchasePreview(
            request: .init(purchaseInvoiceId: "purchaseInvoiceId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsItSdiPurchasePreview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "tipoDocumento": "TD16",
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
                  "net": "net",
                  "vat": "vat",
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
        let expectedResponse = PostV1DeclarationsItSdiPurchasePreviewResponse(
            tipoDocumento: .td16,
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            net: "net",
            vat: "vat",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsItSdiPurchasePreview(
            request: .init(purchaseInvoiceId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftSend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "caseId": "caseId",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "confirmed": true,
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
        let expectedResponse = PostV1DeclarationsLtSaftSendResponse(
            caseId: "caseId",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            confirmed: true,
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftSend(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSaftSend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "caseId": "caseId",
                  "state": "submitted",
                  "detail": "detail",
                  "fileName": "fileName",
                  "confirmed": true,
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
        let expectedResponse = PostV1DeclarationsLtSaftSendResponse(
            caseId: "caseId",
            state: .submitted,
            detail: Nullable<String>.value("detail"),
            fileName: "fileName",
            confirmed: true,
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSaftSend(
            request: .init(
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdFfdata1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fileName": "fileName",
                  "xml": "xml",
                  "rows": 1000000,
                  "pageCount": 1000000,
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
        let expectedResponse = PostV1DeclarationsLtSdFfdataResponse(
            type: .oneSd,
            fileName: "fileName",
            xml: "xml",
            rows: 1000000,
            pageCount: 1000000,
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdFfdata(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtSdFfdata2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "type": "1-SD",
                  "fileName": "fileName",
                  "xml": "xml",
                  "rows": 1000000,
                  "pageCount": 1000000,
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
        let expectedResponse = PostV1DeclarationsLtSdFfdataResponse(
            type: .oneSd,
            fileName: "fileName",
            xml: "xml",
            rows: 1000000,
            pageCount: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtSdFfdata(
            request: .init(
                type: .oneSd,
                fromDate: "fromDate",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtPln204Ffdata1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
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
        let expectedResponse = PostV1DeclarationsLtPln204FfdataResponse(
            year: 1000000,
            fileName: "fileName",
            xml: "xml",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtPln204Ffdata(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLtPln204Ffdata2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "ratePercent": "ratePercent",
                  "rateCode": "rateCode",
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
        let expectedResponse = PostV1DeclarationsLtPln204FfdataResponse(
            year: 1000000,
            fileName: "fileName",
            xml: "xml",
            ratePercent: "ratePercent",
            rateCode: "rateCode",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsLtPln204Ffdata(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsMtCompanyTaxGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "yearOfAssessment": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "incomeTaxNumber": "incomeTaxNumber",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "taxAccounts": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsMtCompanyTaxGenerateResponse(
            year: 1000000,
            yearOfAssessment: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            incomeTaxNumber: "incomeTaxNumber",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            taxAccounts: [
                PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsMtCompanyTaxGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsMtCompanyTaxGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "yearOfAssessment": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "incomeTaxNumber": "incomeTaxNumber",
                  "fileName": "fileName",
                  "xml": "xml",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "taxAccounts": [
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "amount": "amount"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsMtCompanyTaxGenerateResponse(
            year: 1000000,
            yearOfAssessment: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            incomeTaxNumber: "incomeTaxNumber",
            fileName: "fileName",
            xml: "xml",
            fields: [
                PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsMtCompanyTaxGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            taxAccounts: [
                PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                ),
                PostV1DeclarationsMtCompanyTaxGenerateResponseTaxAccountsItem(
                    code: "code",
                    label: "label",
                    amount: "amount"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsMtCompanyTaxGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsMtAnnualReturnGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "mbrNumber": "mbrNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsMtAnnualReturnGenerateResponse(
            year: 1000000,
            madeUpTo: Nullable<String>.value("madeUpTo"),
            mbrNumber: "mbrNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsMtAnnualReturnGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsMtAnnualReturnGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "madeUpTo": "madeUpTo",
                  "mbrNumber": "mbrNumber",
                  "companyName": "companyName",
                  "fileName": "fileName",
                  "xml": "xml",
                  "pdfFileName": "pdfFileName",
                  "pdf": "pdf",
                  "formSource": "formSource",
                  "fields": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "members": [
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    },
                    {
                      "name": "name",
                      "identifier": "identifier",
                      "shares": "shares",
                      "nominalValue": "nominalValue",
                      "shareClass": "shareClass"
                    }
                  ],
                  "officers": [
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    },
                    {
                      "position": "position",
                      "name": "name",
                      "identifier": "identifier"
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsMtAnnualReturnGenerateResponse(
            year: 1000000,
            madeUpTo: Nullable<String>.value("madeUpTo"),
            mbrNumber: "mbrNumber",
            companyName: "companyName",
            fileName: "fileName",
            xml: "xml",
            pdfFileName: "pdfFileName",
            pdf: "pdf",
            formSource: "formSource",
            fields: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            members: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                ),
                PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem(
                    name: "name",
                    identifier: Nullable<String>.value("identifier"),
                    shares: "shares",
                    nominalValue: "nominalValue",
                    shareClass: "shareClass"
                )
            ],
            officers: [
                PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                ),
                PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem(
                    position: "position",
                    name: "name",
                    identifier: Nullable<String>.value("identifier")
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsMtAnnualReturnGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkFaGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "invoices": 1000000,
                    "lines": 1000000
                  },
                  "totals": {
                    "invoices": "invoices",
                    "lines": "lines"
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
        let expectedResponse = PostV1DeclarationsPlJpkFaGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            counts: PostV1DeclarationsPlJpkFaGenerateResponseCounts(
                invoices: 1000000,
                lines: 1000000
            ),
            totals: PostV1DeclarationsPlJpkFaGenerateResponseTotals(
                invoices: "invoices",
                lines: "lines"
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkFaGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkFaGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "invoices": 1000000,
                    "lines": 1000000
                  },
                  "totals": {
                    "invoices": "invoices",
                    "lines": "lines"
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
        let expectedResponse = PostV1DeclarationsPlJpkFaGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            counts: PostV1DeclarationsPlJpkFaGenerateResponseCounts(
                invoices: 1000000,
                lines: 1000000
            ),
            totals: PostV1DeclarationsPlJpkFaGenerateResponseTotals(
                invoices: "invoices",
                lines: "lines"
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkFaGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkKrGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "accounts": 1000000,
                    "journalRows": 1000000,
                    "entryRows": 1000000
                  },
                  "totals": {
                    "operations": "operations",
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
        let expectedResponse = PostV1DeclarationsPlJpkKrGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            counts: PostV1DeclarationsPlJpkKrGenerateResponseCounts(
                accounts: 1000000,
                journalRows: 1000000,
                entryRows: 1000000
            ),
            totals: PostV1DeclarationsPlJpkKrGenerateResponseTotals(
                operations: "operations",
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkKrGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkKrGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "counts": {
                    "accounts": 1000000,
                    "journalRows": 1000000,
                    "entryRows": 1000000
                  },
                  "totals": {
                    "operations": "operations",
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
        let expectedResponse = PostV1DeclarationsPlJpkKrGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            counts: PostV1DeclarationsPlJpkKrGenerateResponseCounts(
                accounts: 1000000,
                journalRows: 1000000,
                entryRows: 1000000
            ),
            totals: PostV1DeclarationsPlJpkKrGenerateResponseTotals(
                operations: "operations",
                debit: "debit",
                credit: "credit"
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkKrGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkMagGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source",
                  "warehouseCode": "warehouseCode",
                  "counts": {
                    "pz": 1000000,
                    "pw": 1000000,
                    "wz": 1000000,
                    "rw": 1000000,
                    "rows": 1000000
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
        let expectedResponse = PostV1DeclarationsPlJpkMagGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source",
            warehouseCode: "warehouseCode",
            counts: PostV1DeclarationsPlJpkMagGenerateResponseCounts(
                pz: 1000000,
                pw: 1000000,
                wz: 1000000,
                rw: 1000000,
                rows: 1000000
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkMagGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlJpkMagGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "xml": "xml",
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source",
                  "warehouseCode": "warehouseCode",
                  "counts": {
                    "pz": 1000000,
                    "pw": 1000000,
                    "wz": 1000000,
                    "rw": 1000000,
                    "rows": 1000000
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
        let expectedResponse = PostV1DeclarationsPlJpkMagGenerateResponse(
            fileName: "fileName",
            xml: "xml",
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source",
            warehouseCode: "warehouseCode",
            counts: PostV1DeclarationsPlJpkMagGenerateResponseCounts(
                pz: 1000000,
                pw: 1000000,
                wz: 1000000,
                rw: 1000000,
                rows: 1000000
            )
        )
        let response = try await client.declarations.postV1DeclarationsPlJpkMagGenerate(
            request: .init(
                dateFrom: "dateFrom",
                dateTo: "dateTo"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlPit11Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "persons": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings"
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
        let expectedResponse = PostV1DeclarationsPlPit11GenerateResponse(
            year: 1000000,
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            persons: [
                PostV1DeclarationsPlPit11GenerateResponsePersonsItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings"
                    ]
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlPit11Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlPit11Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "source": "source",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "persons": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "revenue": "revenue",
                      "deductibleCosts": "deductibleCosts",
                      "advanceWithheld": "advanceWithheld",
                      "socialContributions": "socialContributions",
                      "healthContributions": "healthContributions",
                      "fileName": "fileName",
                      "xml": "xml",
                      "warnings": [
                        "warnings",
                        "warnings"
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
        let expectedResponse = PostV1DeclarationsPlPit11GenerateResponse(
            year: 1000000,
            source: "source",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            persons: [
                PostV1DeclarationsPlPit11GenerateResponsePersonsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                PostV1DeclarationsPlPit11GenerateResponsePersonsItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: Nullable<String>.value("pesel"),
                    revenue: "revenue",
                    deductibleCosts: "deductibleCosts",
                    advanceWithheld: "advanceWithheld",
                    socialContributions: "socialContributions",
                    healthContributions: "healthContributions",
                    fileName: "fileName",
                    xml: "xml",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlPit11Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlCit8Generate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "xml": "xml",
                  "positions": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "annexes": [
                    "annexes"
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlCit8GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            xml: "xml",
            positions: [
                PostV1DeclarationsPlCit8GenerateResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            annexes: [
                "annexes"
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlCit8Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlCit8Generate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "periodStart": "periodStart",
                  "periodEnd": "periodEnd",
                  "fileName": "fileName",
                  "xml": "xml",
                  "positions": [
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    },
                    {
                      "field": "field",
                      "label": "label",
                      "value": "value"
                    }
                  ],
                  "annexes": [
                    "annexes",
                    "annexes"
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsPlCit8GenerateResponse(
            year: 1000000,
            periodStart: "periodStart",
            periodEnd: "periodEnd",
            fileName: "fileName",
            xml: "xml",
            positions: [
                PostV1DeclarationsPlCit8GenerateResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                ),
                PostV1DeclarationsPlCit8GenerateResponsePositionsItem(
                    field: "field",
                    label: "label",
                    value: "value"
                )
            ],
            annexes: [
                "annexes",
                "annexes"
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsPlCit8Generate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraCompute1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "source": "source",
                  "runStatus": "runStatus",
                  "insuredCount": 1000000,
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    }
                  ],
                  "socialTotal": "socialTotal",
                  "healthTotal": "healthTotal",
                  "fundsTotal": "fundsTotal",
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsPlZusDraComputeResponse(
            year: 1000000,
            month: 1000000,
            source: "source",
            runStatus: Nullable<String>.value("runStatus"),
            insuredCount: 1000000,
            rows: [
                PostV1DeclarationsPlZusDraComputeResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                )
            ],
            socialTotal: "socialTotal",
            healthTotal: "healthTotal",
            fundsTotal: "fundsTotal",
            total: "total",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlZusDraCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraCompute2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "source": "source",
                  "runStatus": "runStatus",
                  "insuredCount": 1000000,
                  "rows": [
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    },
                    {
                      "code": "code",
                      "label": "label",
                      "insured": "insured",
                      "payer": "payer",
                      "total": "total"
                    }
                  ],
                  "socialTotal": "socialTotal",
                  "healthTotal": "healthTotal",
                  "fundsTotal": "fundsTotal",
                  "total": "total",
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
        let expectedResponse = PostV1DeclarationsPlZusDraComputeResponse(
            year: 1000000,
            month: 1000000,
            source: "source",
            runStatus: Nullable<String>.value("runStatus"),
            insuredCount: 1000000,
            rows: [
                PostV1DeclarationsPlZusDraComputeResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                ),
                PostV1DeclarationsPlZusDraComputeResponseRowsItem(
                    code: "code",
                    label: "label",
                    insured: "insured",
                    payer: "payer",
                    total: "total"
                )
            ],
            socialTotal: "socialTotal",
            healthTotal: "healthTotal",
            fundsTotal: "fundsTotal",
            total: "total",
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlZusDraCompute(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraKedu1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "source": "source",
                  "insured": [
                    {
                      "employeeId": "employeeId",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsPlZusDraKeduResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            xml: "xml",
            source: "source",
            insured: [
                PostV1DeclarationsPlZusDraKeduResponseInsuredItem(
                    employeeId: "employeeId",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlZusDraKedu(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraKedu2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "month": 1000000,
                  "fileName": "fileName",
                  "xml": "xml",
                  "source": "source",
                  "insured": [
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
                    },
                    {
                      "employeeId": "x",
                      "firstName": "firstName",
                      "lastName": "lastName",
                      "pesel": "pesel",
                      "kodTytulu": {
                        "p1": "p1",
                        "p2": "p2",
                        "p3": "p3"
                      },
                      "pensionBase": "pensionBase",
                      "healthBase": "healthBase"
                    }
                  ],
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
        let expectedResponse = PostV1DeclarationsPlZusDraKeduResponse(
            year: 1000000,
            month: 1000000,
            fileName: "fileName",
            xml: "xml",
            source: "source",
            insured: [
                PostV1DeclarationsPlZusDraKeduResponseInsuredItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
                ),
                PostV1DeclarationsPlZusDraKeduResponseInsuredItem(
                    employeeId: "x",
                    firstName: "firstName",
                    lastName: "lastName",
                    pesel: "pesel",
                    kodTytulu: PostV1DeclarationsPlZusDraKeduResponseInsuredItemKodTytulu(
                        p1: "p1",
                        p2: "p2",
                        p3: "p3"
                    ),
                    pensionBase: "pensionBase",
                    healthBase: "healthBase"
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlZusDraKedu(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraPdf1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
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
        let expectedResponse = PostV1DeclarationsPlZusDraPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
            source: "source",
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsPlZusDraPdf(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsPlZusDraPdf2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "fileName": "fileName",
                  "contentType": "contentType",
                  "data": "data",
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
        let expectedResponse = PostV1DeclarationsPlZusDraPdfResponse(
            fileName: "fileName",
            contentType: "contentType",
            data: "data",
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
        let response = try await client.declarations.postV1DeclarationsPlZusDraPdf(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportBuild1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "waybillId",
                  "fileId": "fileId",
                  "fileName": "fileName",
                  "xml": "xml",
                  "operationType": "operationType",
                  "vehiclePlate": "vehiclePlate",
                  "blockers": [
                    "blockers"
                  ],
                  "goods": 1000000,
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsRoEtransportBuildResponse(
            waybillId: "waybillId",
            fileId: "fileId",
            fileName: "fileName",
            xml: "xml",
            operationType: "operationType",
            vehiclePlate: "vehiclePlate",
            blockers: [
                "blockers"
            ],
            goods: 1000000,
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportBuild(
            request: .init(waybillId: "waybillId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportBuild2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "x",
                  "fileId": "x",
                  "fileName": "fileName",
                  "xml": "xml",
                  "operationType": "operationType",
                  "vehiclePlate": "vehiclePlate",
                  "blockers": [
                    "blockers",
                    "blockers"
                  ],
                  "goods": 1000000,
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsRoEtransportBuildResponse(
            waybillId: "x",
            fileId: "x",
            fileName: "fileName",
            xml: "xml",
            operationType: "operationType",
            vehiclePlate: "vehiclePlate",
            blockers: [
                "blockers",
                "blockers"
            ],
            goods: 1000000,
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportBuild(
            request: .init(waybillId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportSubmit1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "waybillId",
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
                  "detail": "detail",
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
        let expectedResponse = PostV1DeclarationsRoEtransportSubmitResponse(
            waybillId: "waybillId",
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail"),
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportSubmit(
            request: .init(waybillId: "waybillId"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportSubmit2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "waybillId": "x",
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
                  "detail": "detail",
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
        let expectedResponse = PostV1DeclarationsRoEtransportSubmitResponse(
            waybillId: "x",
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail"),
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportSubmit(
            request: .init(waybillId: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportStatus1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
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
        let expectedResponse = PostV1DeclarationsRoEtransportStatusResponse(
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportStatus(
            request: .init(reference: "reference"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsRoEtransportStatus2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reference": "reference",
                  "state": "submitted",
                  "uit": "uit",
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
        let expectedResponse = PostV1DeclarationsRoEtransportStatusResponse(
            reference: "reference",
            state: .submitted,
            uit: Nullable<String>.value("uit"),
            detail: Nullable<String>.value("detail")
        )
        let response = try await client.declarations.postV1DeclarationsRoEtransportStatus(
            request: .init(reference: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLiLohndeklarationGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLiLohndeklarationGenerateResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                PostV1DeclarationsLiLohndeklarationGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLiLohndeklarationGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLiLohndeklarationGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "versichertennummer": "versichertennummer",
                      "vorname": "vorname",
                      "name": "name",
                      "geschlecht": "geschlecht",
                      "heimatstaat": "heimatstaat",
                      "eintrittsdatum": "eintrittsdatum",
                      "austrittsdatum": "austrittsdatum",
                      "beschaeftigtVon": "beschaeftigtVon",
                      "beschaeftigtBis": "beschaeftigtBis",
                      "beschaeftigungsgrad": "beschaeftigungsgrad",
                      "ahvLohn": "ahvLohn",
                      "alv": "alv",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLiLohndeklarationGenerateResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                PostV1DeclarationsLiLohndeklarationGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                PostV1DeclarationsLiLohndeklarationGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    versichertennummer: "versichertennummer",
                    vorname: "vorname",
                    name: "name",
                    geschlecht: "geschlecht",
                    heimatstaat: "heimatstaat",
                    eintrittsdatum: "eintrittsdatum",
                    austrittsdatum: "austrittsdatum",
                    beschaeftigtVon: "beschaeftigtVon",
                    beschaeftigtBis: "beschaeftigtBis",
                    beschaeftigungsgrad: "beschaeftigungsgrad",
                    ahvLohn: "ahvLohn",
                    alv: "alv",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLiLohndeklarationGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLiLohnlistenGenerate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings"
                  ],
                  "notes": [
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLiLohnlistenGenerateResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                PostV1DeclarationsLiLohnlistenGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings"
            ],
            notes: [
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLiLohnlistenGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsLiLohnlistenGenerate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "year": 1000000,
                  "fileName": "fileName",
                  "content": "content",
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    },
                    {
                      "employeeId": "employeeId",
                      "peid": "peid",
                      "name": "name",
                      "vorname": "vorname",
                      "geburtsdatum": "geburtsdatum",
                      "strasse": "strasse",
                      "hausnummer": "hausnummer",
                      "plz": "plz",
                      "ort": "ort",
                      "wohnland": "wohnland",
                      "brutto": "brutto",
                      "lohnsteuer": "lohnsteuer",
                      "abrechnungVon": "abrechnungVon",
                      "abrechnungBis": "abrechnungBis",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ]
                    }
                  ],
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "notes": [
                    "notes",
                    "notes"
                  ],
                  "source": "source"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsLiLohnlistenGenerateResponse(
            year: 1000000,
            fileName: "fileName",
            content: "content",
            rows: [
                PostV1DeclarationsLiLohnlistenGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                ),
                PostV1DeclarationsLiLohnlistenGenerateResponseRowsItem(
                    employeeId: "employeeId",
                    peid: "peid",
                    name: "name",
                    vorname: "vorname",
                    geburtsdatum: "geburtsdatum",
                    strasse: "strasse",
                    hausnummer: "hausnummer",
                    plz: "plz",
                    ort: "ort",
                    wohnland: "wohnland",
                    brutto: "brutto",
                    lohnsteuer: "lohnsteuer",
                    abrechnungVon: "abrechnungVon",
                    abrechnungBis: "abrechnungBis",
                    warnings: [
                        "warnings",
                        "warnings"
                    ]
                )
            ],
            warnings: [
                "warnings",
                "warnings"
            ],
            notes: [
                "notes",
                "notes"
            ],
            source: "source"
        )
        let response = try await client.declarations.postV1DeclarationsLiLohnlistenGenerate(
            request: .init(year: 1000000),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "companyCountry": "companyCountry",
                  "rows": [
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text"
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name"
                        }
                      ],
                      "values": {
                        "key": "value"
                      },
                      "acceptsCertificate": true
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
        let expectedResponse = PostV1DeclarationsConfigsListResponse(
            companyCountry: "companyCountry",
            rows: [
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name"
                        )
                    ]),
                    values: [
                        "key": "value"
                    ],
                    acceptsCertificate: true
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "companyCountry": "companyCountry",
                  "rows": [
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        },
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        },
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        }
                      ],
                      "values": {
                        "values": "values"
                      },
                      "acceptsCertificate": true
                    },
                    {
                      "system": "system",
                      "country": "country",
                      "title": "title",
                      "fields": [
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        },
                        {
                          "key": "key",
                          "kind": "text",
                          "multiline": true,
                          "options": [
                            "options",
                            "options"
                          ]
                        }
                      ],
                      "endpoints": [
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        },
                        {
                          "name": "name",
                          "test": "test",
                          "production": "production"
                        }
                      ],
                      "values": {
                        "values": "values"
                      },
                      "acceptsCertificate": true
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
        let expectedResponse = PostV1DeclarationsConfigsListResponse(
            companyCountry: "companyCountry",
            rows: [
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ],
                    acceptsCertificate: true
                ),
                PostV1DeclarationsConfigsListResponseRowsItem(
                    system: "system",
                    country: "country",
                    title: "title",
                    fields: [
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemFieldsItem(
                            key: "key",
                            kind: .text,
                            multiline: Optional(true),
                            options: Optional([
                                "options",
                                "options"
                            ])
                        )
                    ],
                    endpoints: Optional([
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        ),
                        PostV1DeclarationsConfigsListResponseRowsItemEndpointsItem(
                            name: "name",
                            test: Optional("test"),
                            production: Optional("production")
                        )
                    ]),
                    values: [
                        "values": "values"
                    ],
                    acceptsCertificate: true
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsConfigsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "country": "country",
                  "title": "title",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options"
                      ]
                    }
                  ],
                  "endpoints": [
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    }
                  ],
                  "values": {
                    "key": "value"
                  },
                  "acceptsCertificate": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsConfigsUpdateResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options"
                    ])
                )
            ],
            endpoints: Optional([
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "key": "value"
            ],
            acceptsCertificate: true
        )
        let response = try await client.declarations.postV1DeclarationsConfigsUpdate(
            request: .init(
                system: "system",
                config: [
                    "key": "value"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsConfigsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "system": "system",
                  "country": "country",
                  "title": "title",
                  "fields": [
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options",
                        "options"
                      ]
                    },
                    {
                      "key": "key",
                      "kind": "text",
                      "multiline": true,
                      "options": [
                        "options",
                        "options"
                      ]
                    }
                  ],
                  "endpoints": [
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    },
                    {
                      "name": "name",
                      "test": "test",
                      "production": "production"
                    }
                  ],
                  "values": {
                    "values": "values"
                  },
                  "acceptsCertificate": true
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1DeclarationsConfigsUpdateResponse(
            system: "system",
            country: "country",
            title: "title",
            fields: [
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options",
                        "options"
                    ])
                ),
                PostV1DeclarationsConfigsUpdateResponseFieldsItem(
                    key: "key",
                    kind: .text,
                    multiline: Optional(true),
                    options: Optional([
                        "options",
                        "options"
                    ])
                )
            ],
            endpoints: Optional([
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                ),
                PostV1DeclarationsConfigsUpdateResponseEndpointsItem(
                    name: "name",
                    test: Optional("test"),
                    production: Optional("production")
                )
            ]),
            values: [
                "values": "values"
            ],
            acceptsCertificate: true
        )
        let response = try await client.declarations.postV1DeclarationsConfigsUpdate(
            request: .init(
                system: "x",
                config: [
                    "config": "config"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func storeTheCertificateOrPrivateKeyAFilingSystemAuthenticatesWith1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesUploadResponse(
            rows: [
                PostV1DeclarationsCertificatesUploadResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.storeTheCertificateOrPrivateKeyAFilingSystemAuthenticatesWith(
            request: .init(
                system: "system",
                fileName: "fileName",
                content: "content"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func storeTheCertificateOrPrivateKeyAFilingSystemAuthenticatesWith2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesUploadResponse(
            rows: [
                PostV1DeclarationsCertificatesUploadResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                ),
                PostV1DeclarationsCertificatesUploadResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.storeTheCertificateOrPrivateKeyAFilingSystemAuthenticatesWith(
            request: .init(
                system: "x",
                fileName: "x",
                content: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCertificatesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesListResponse(
            rows: [
                PostV1DeclarationsCertificatesListResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCertificatesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesListResponse(
            rows: [
                PostV1DeclarationsCertificatesListResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                ),
                PostV1DeclarationsCertificatesListResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsCertificatesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCertificatesDelete1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesDeleteResponse(
            rows: [
                PostV1DeclarationsCertificatesDeleteResponseRowsItem(
                    id: "id",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsCertificatesDelete(
            request: .init(
                system: "system",
                fieldKey: .certificate
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsCertificatesDelete2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
                    },
                    {
                      "id": "x",
                      "system": "system",
                      "fieldKey": "fieldKey",
                      "fileName": "fileName",
                      "format": "pem",
                      "fingerprint": "fingerprint",
                      "subject": "subject",
                      "issuer": "issuer",
                      "notBefore": "notBefore",
                      "notAfter": "notAfter",
                      "sha256": "sha256",
                      "health": "ok",
                      "daysLeft": 1000000,
                      "uploadedAt": "uploadedAt"
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
        let expectedResponse = PostV1DeclarationsCertificatesDeleteResponse(
            rows: [
                PostV1DeclarationsCertificatesDeleteResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                ),
                PostV1DeclarationsCertificatesDeleteResponseRowsItem(
                    id: "x",
                    system: "system",
                    fieldKey: "fieldKey",
                    fileName: "fileName",
                    format: .pem,
                    fingerprint: Nullable<String>.value("fingerprint"),
                    subject: Nullable<String>.value("subject"),
                    issuer: Nullable<String>.value("issuer"),
                    notBefore: Nullable<String>.value("notBefore"),
                    notAfter: Nullable<String>.value("notAfter"),
                    sha256: "sha256",
                    health: .ok,
                    daysLeft: Nullable<Int64>.value(1000000),
                    uploadedAt: "uploadedAt"
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsCertificatesDelete(
            request: .init(
                system: "x",
                fieldKey: .certificate
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func whichDeadlinesNordletCanFileByItselfForThisCompanyAndWhichAreSwitchedOn1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
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
        let expectedResponse = PostV1DeclarationsAutomationListResponse(
            rows: [
                PostV1DeclarationsAutomationListResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                )
            ]
        )
        let response = try await client.declarations.whichDeadlinesNordletCanFileByItselfForThisCompanyAndWhichAreSwitchedOn(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func whichDeadlinesNordletCanFileByItselfForThisCompanyAndWhichAreSwitchedOn2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
                    },
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
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
        let expectedResponse = PostV1DeclarationsAutomationListResponse(
            rows: [
                PostV1DeclarationsAutomationListResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                ),
                PostV1DeclarationsAutomationListResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                )
            ]
        )
        let response = try await client.declarations.whichDeadlinesNordletCanFileByItselfForThisCompanyAndWhichAreSwitchedOn(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsAutomationUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
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
        let expectedResponse = PostV1DeclarationsAutomationUpdateResponse(
            rows: [
                PostV1DeclarationsAutomationUpdateResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsAutomationUpdate(
            request: .init(
                ruleKey: "ruleKey",
                enabled: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsAutomationUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
                    },
                    {
                      "ruleKey": "ruleKey",
                      "title": "title",
                      "country": "country",
                      "system": "system",
                      "enabled": true,
                      "applies": true,
                      "configured": true,
                      "certificate": "ok"
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
        let expectedResponse = PostV1DeclarationsAutomationUpdateResponse(
            rows: [
                PostV1DeclarationsAutomationUpdateResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                ),
                PostV1DeclarationsAutomationUpdateResponseRowsItem(
                    ruleKey: "ruleKey",
                    title: "title",
                    country: "country",
                    system: "system",
                    enabled: true,
                    applies: true,
                    configured: true,
                    certificate: .ok
                )
            ]
        )
        let response = try await client.declarations.postV1DeclarationsAutomationUpdate(
            request: .init(
                ruleKey: "x",
                enabled: true
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sendAFilingWhoseDeliveryFailedOnceMoreWithTheBytesThatWereGenerated1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1DeclarationsSubmissionsRetryResponse(
            id: "id",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.sendAFilingWhoseDeliveryFailedOnceMoreWithTheBytesThatWereGenerated(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func sendAFilingWhoseDeliveryFailedOnceMoreWithTheBytesThatWereGenerated2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "x",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1DeclarationsSubmissionsRetryResponse(
            id: "x",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.sendAFilingWhoseDeliveryFailedOnceMoreWithTheBytesThatWereGenerated(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1DeclarationsSubmissionsCreateResponse(
            id: "id",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "x",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1DeclarationsSubmissionsCreateResponse(
            id: "x",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            warnings: [
                "warnings",
                "warnings"
            ]
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsCreate(
            request: .init(
                obligation: .ltIsaf,
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsMark1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "fileId",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1DeclarationsSubmissionsMarkResponse(
            id: "id",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("fileId"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsMark(
            request: .init(
                id: "id",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsMark2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "obligation": "obligation",
                  "periodYear": 1000000,
                  "periodMonth": 1000000,
                  "variant": "variant",
                  "status": "generated",
                  "fileName": "fileName",
                  "fileId": "x",
                  "externalRef": "externalRef",
                  "message": "message",
                  "ruleKey": "ruleKey",
                  "period": "period",
                  "documentKey": "documentKey",
                  "origin": "origin",
                  "transportSystem": "transportSystem",
                  "submittedAt": "submittedAt",
                  "acceptedAt": "acceptedAt",
                  "rejectedAt": "rejectedAt",
                  "checkedAt": "checkedAt",
                  "nextCheckAt": "nextCheckAt",
                  "attempts": 1000000,
                  "deliveryError": "deliveryError",
                  "sentSha256": "sentSha256",
                  "certificateFingerprint": "certificateFingerprint",
                  "submittedByActorType": "submittedByActorType",
                  "submittedByActorId": "submittedByActorId",
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
        let expectedResponse = PostV1DeclarationsSubmissionsMarkResponse(
            id: "x",
            obligation: "obligation",
            periodYear: 1000000,
            periodMonth: Nullable<Int64>.value(1000000),
            variant: Nullable<String>.value("variant"),
            status: .generated,
            fileName: "fileName",
            fileId: Nullable<String>.value("x"),
            externalRef: Nullable<String>.value("externalRef"),
            message: Nullable<String>.value("message"),
            ruleKey: Nullable<String>.value("ruleKey"),
            period: Nullable<String>.value("period"),
            documentKey: Nullable<String>.value("documentKey"),
            origin: "origin",
            transportSystem: Nullable<String>.value("transportSystem"),
            submittedAt: Nullable<String>.value("submittedAt"),
            acceptedAt: Nullable<String>.value("acceptedAt"),
            rejectedAt: Nullable<String>.value("rejectedAt"),
            checkedAt: Nullable<String>.value("checkedAt"),
            nextCheckAt: Nullable<String>.value("nextCheckAt"),
            attempts: 1000000,
            deliveryError: Nullable<String>.value("deliveryError"),
            sentSha256: Nullable<String>.value("sentSha256"),
            certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
            submittedByActorType: Nullable<String>.value("submittedByActorType"),
            submittedByActorId: Nullable<String>.value("submittedByActorId"),
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsMark(
            request: .init(
                id: "x",
                status: .submitted
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "fileId",
                      "externalRef": "externalRef",
                      "message": "message",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "submittedAt": "submittedAt",
                      "acceptedAt": "acceptedAt",
                      "rejectedAt": "rejectedAt",
                      "checkedAt": "checkedAt",
                      "nextCheckAt": "nextCheckAt",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1DeclarationsSubmissionsListResponse(
            rows: [
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "id",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("fileId"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    submittedAt: Nullable<String>.value("submittedAt"),
                    acceptedAt: Nullable<String>.value("acceptedAt"),
                    rejectedAt: Nullable<String>.value("rejectedAt"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    nextCheckAt: Nullable<String>.value("nextCheckAt"),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "key": "value"
            ])
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1DeclarationsSubmissionsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "x",
                      "externalRef": "externalRef",
                      "message": "message",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "submittedAt": "submittedAt",
                      "acceptedAt": "acceptedAt",
                      "rejectedAt": "rejectedAt",
                      "checkedAt": "checkedAt",
                      "nextCheckAt": "nextCheckAt",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "obligation": "obligation",
                      "periodYear": 1000000,
                      "periodMonth": 1000000,
                      "variant": "variant",
                      "status": "generated",
                      "fileName": "fileName",
                      "fileId": "x",
                      "externalRef": "externalRef",
                      "message": "message",
                      "ruleKey": "ruleKey",
                      "period": "period",
                      "documentKey": "documentKey",
                      "origin": "origin",
                      "transportSystem": "transportSystem",
                      "submittedAt": "submittedAt",
                      "acceptedAt": "acceptedAt",
                      "rejectedAt": "rejectedAt",
                      "checkedAt": "checkedAt",
                      "nextCheckAt": "nextCheckAt",
                      "attempts": 1000000,
                      "deliveryError": "deliveryError",
                      "sentSha256": "sentSha256",
                      "certificateFingerprint": "certificateFingerprint",
                      "submittedByActorType": "submittedByActorType",
                      "submittedByActorId": "submittedByActorId",
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
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
        let expectedResponse = PostV1DeclarationsSubmissionsListResponse(
            rows: [
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "x",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("x"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    submittedAt: Nullable<String>.value("submittedAt"),
                    acceptedAt: Nullable<String>.value("acceptedAt"),
                    rejectedAt: Nullable<String>.value("rejectedAt"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    nextCheckAt: Nullable<String>.value("nextCheckAt"),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1DeclarationsSubmissionsListResponseRowsItem(
                    id: "x",
                    obligation: "obligation",
                    periodYear: 1000000,
                    periodMonth: Nullable<Int64>.value(1000000),
                    variant: Nullable<String>.value("variant"),
                    status: .generated,
                    fileName: "fileName",
                    fileId: Nullable<String>.value("x"),
                    externalRef: Nullable<String>.value("externalRef"),
                    message: Nullable<String>.value("message"),
                    ruleKey: Nullable<String>.value("ruleKey"),
                    period: Nullable<String>.value("period"),
                    documentKey: Nullable<String>.value("documentKey"),
                    origin: "origin",
                    transportSystem: Nullable<String>.value("transportSystem"),
                    submittedAt: Nullable<String>.value("submittedAt"),
                    acceptedAt: Nullable<String>.value("acceptedAt"),
                    rejectedAt: Nullable<String>.value("rejectedAt"),
                    checkedAt: Nullable<String>.value("checkedAt"),
                    nextCheckAt: Nullable<String>.value("nextCheckAt"),
                    attempts: 1000000,
                    deliveryError: Nullable<String>.value("deliveryError"),
                    sentSha256: Nullable<String>.value("sentSha256"),
                    certificateFingerprint: Nullable<String>.value("certificateFingerprint"),
                    submittedByActorType: Nullable<String>.value("submittedByActorType"),
                    submittedByActorId: Nullable<String>.value("submittedByActorId"),
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000,
            totals: Optional([
                "totals": "totals"
            ])
        )
        let response = try await client.declarations.postV1DeclarationsSubmissionsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
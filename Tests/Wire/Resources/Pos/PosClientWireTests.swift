import Foundation
import Testing
import Api

@Suite("PosClient Wire Tests") struct PosClientWireTests {
    @Test func postV1PosDevicesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PosDevicesCreateResponse(
            id: "id",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.pos.postV1PosDevicesCreate(
            request: .init(
                name: "name",
                serialNumber: "serialNumber"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosDevicesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PosDevicesCreateResponse(
            id: "x",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.pos.postV1PosDevicesCreate(
            request: .init(
                name: "x",
                serialNumber: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosDevicesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PosDevicesUpdateResponse(
            id: "id",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.pos.postV1PosDevicesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosDevicesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "name": "name",
                  "serialNumber": "serialNumber",
                  "model": "model",
                  "registrationNumber": "registrationNumber",
                  "address": "address",
                  "isActive": true,
                  "createdAt": "createdAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PosDevicesUpdateResponse(
            id: "x",
            name: "name",
            serialNumber: "serialNumber",
            model: Nullable<String>.value("model"),
            registrationNumber: Nullable<String>.value("registrationNumber"),
            address: Nullable<String>.value("address"),
            isActive: true,
            createdAt: "createdAt"
        )
        let response = try await client.pos.postV1PosDevicesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosDevicesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PosDevicesListResponse(
            rows: [
                PostV1PosDevicesListResponseRowsItem(
                    id: "id",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.pos.postV1PosDevicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosDevicesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "name": "name",
                      "serialNumber": "serialNumber",
                      "model": "model",
                      "registrationNumber": "registrationNumber",
                      "address": "address",
                      "isActive": true,
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PosDevicesListResponse(
            rows: [
                PostV1PosDevicesListResponseRowsItem(
                    id: "x",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
                    createdAt: "createdAt"
                ),
                PostV1PosDevicesListResponseRowsItem(
                    id: "x",
                    name: "name",
                    serialNumber: "serialNumber",
                    model: Nullable<String>.value("model"),
                    registrationNumber: Nullable<String>.value("registrationNumber"),
                    address: Nullable<String>.value("address"),
                    isActive: true,
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.pos.postV1PosDevicesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportNumber": "reportNumber",
                  "date": "date",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = PostV1PosReportsCreateResponse(
            id: "id",
            reportNumber: "reportNumber",
            date: "date",
            deviceId: Nullable<String>.value("deviceId"),
            warehouseId: Nullable<String>.value("warehouseId"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            vatLines: [
                PostV1PosReportsCreateResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.postV1PosReportsCreate(
            request: .init(
                reportNumber: "reportNumber",
                date: "date",
                vatLines: [
                    PostV1PosReportsCreateRequestVatLinesItem(
                        vatRatePercent: "vatRatePercent",
                        netAmount: "netAmount",
                        vatAmount: "vatAmount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportNumber": "reportNumber",
                  "date": "date",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = PostV1PosReportsCreateResponse(
            id: "x",
            reportNumber: "reportNumber",
            date: "date",
            deviceId: Nullable<String>.value("x"),
            warehouseId: Nullable<String>.value("x"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            vatLines: [
                PostV1PosReportsCreateResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                PostV1PosReportsCreateResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.postV1PosReportsCreate(
            request: .init(
                reportNumber: "x",
                date: "date",
                vatLines: [
                    PostV1PosReportsCreateRequestVatLinesItem(
                        vatRatePercent: "vatRatePercent",
                        netAmount: "netAmount",
                        vatAmount: "vatAmount"
                    ),
                    PostV1PosReportsCreateRequestVatLinesItem(
                        vatRatePercent: "vatRatePercent",
                        netAmount: "netAmount",
                        vatAmount: "vatAmount"
                    )
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reportNumber": "reportNumber",
                  "date": "date",
                  "deviceId": "deviceId",
                  "warehouseId": "warehouseId",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = PostV1PosReportsGetResponse(
            id: "id",
            reportNumber: "reportNumber",
            date: "date",
            deviceId: Nullable<String>.value("deviceId"),
            warehouseId: Nullable<String>.value("warehouseId"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            vatLines: [
                PostV1PosReportsGetResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.postV1PosReportsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "reportNumber": "reportNumber",
                  "date": "date",
                  "deviceId": "x",
                  "warehouseId": "x",
                  "netTotal": "netTotal",
                  "vatTotal": "vatTotal",
                  "grossTotal": "grossTotal",
                  "cashAmount": "cashAmount",
                  "cardAmount": "cardAmount",
                  "cogsTotal": "cogsTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "vatLines": [
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
                    },
                    {
                      "vatRatePercent": "vatRatePercent",
                      "netAmount": "netAmount",
                      "vatAmount": "vatAmount"
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
        let expectedResponse = PostV1PosReportsGetResponse(
            id: "x",
            reportNumber: "reportNumber",
            date: "date",
            deviceId: Nullable<String>.value("x"),
            warehouseId: Nullable<String>.value("x"),
            netTotal: "netTotal",
            vatTotal: "vatTotal",
            grossTotal: "grossTotal",
            cashAmount: "cashAmount",
            cardAmount: "cardAmount",
            cogsTotal: Nullable<String>.value("cogsTotal"),
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            vatLines: [
                PostV1PosReportsGetResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                ),
                PostV1PosReportsGetResponseVatLinesItem(
                    vatRatePercent: "vatRatePercent",
                    netAmount: "netAmount",
                    vatAmount: "vatAmount"
                )
            ]
        )
        let response = try await client.pos.postV1PosReportsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "deviceId": "deviceId",
                      "warehouseId": "warehouseId",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "journalTransactionId",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PosReportsListResponse(
            rows: [
                PostV1PosReportsListResponseRowsItem(
                    id: "id",
                    reportNumber: "reportNumber",
                    date: "date",
                    deviceId: Nullable<String>.value("deviceId"),
                    warehouseId: Nullable<String>.value("warehouseId"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.pos.postV1PosReportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PosReportsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "reportNumber": "reportNumber",
                      "date": "date",
                      "deviceId": "x",
                      "warehouseId": "x",
                      "netTotal": "netTotal",
                      "vatTotal": "vatTotal",
                      "grossTotal": "grossTotal",
                      "cashAmount": "cashAmount",
                      "cardAmount": "cardAmount",
                      "cogsTotal": "cogsTotal",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt"
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
        let expectedResponse = PostV1PosReportsListResponse(
            rows: [
                PostV1PosReportsListResponseRowsItem(
                    id: "x",
                    reportNumber: "reportNumber",
                    date: "date",
                    deviceId: Nullable<String>.value("x"),
                    warehouseId: Nullable<String>.value("x"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1PosReportsListResponseRowsItem(
                    id: "x",
                    reportNumber: "reportNumber",
                    date: "date",
                    deviceId: Nullable<String>.value("x"),
                    warehouseId: Nullable<String>.value("x"),
                    netTotal: "netTotal",
                    vatTotal: "vatTotal",
                    grossTotal: "grossTotal",
                    cashAmount: "cashAmount",
                    cardAmount: "cardAmount",
                    cogsTotal: Nullable<String>.value("cogsTotal"),
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.pos.postV1PosReportsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
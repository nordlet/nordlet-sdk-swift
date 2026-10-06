import Foundation
import Testing
import Api

@Suite("TransportClient Wire Tests") struct TransportClientWireTests {
    @Test func waybillsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "dispatchAt": "2026-07-01T09:30:00Z",
                  "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                  "consigneePartnerId": "consigneePartnerId",
                  "transporterPartnerId": "transporterPartnerId",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "loadWarehouseId",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "saleInvoiceId",
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
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsCreateTransportResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "consigneePartnerId",
            transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsCreateTransportResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsCreate(
            request: .init(
                consigneePartnerId: "consigneePartnerId",
                dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                loadAddress: "loadAddress",
                unloadAddress: "unloadAddress"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "dispatchAt": "2024-01-15T09:30:00Z",
                  "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                  "consigneePartnerId": "x",
                  "transporterPartnerId": "x",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "x",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "x",
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
                      "productCode": "productCode",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsCreateTransportResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "x",
            transporterPartnerId: Nullable<String>.value("x"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("x"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsCreateTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                WaybillsCreateTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsCreate(
            request: .init(
                consigneePartnerId: "x",
                dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                loadAddress: "x",
                unloadAddress: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "dispatchAt": "2026-07-01T09:30:00Z",
                  "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                  "consigneePartnerId": "consigneePartnerId",
                  "transporterPartnerId": "transporterPartnerId",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "loadWarehouseId",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "saleInvoiceId",
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
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsUpdateTransportResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "consigneePartnerId",
            transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsUpdateTransportResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "dispatchAt": "2024-01-15T09:30:00Z",
                  "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                  "consigneePartnerId": "x",
                  "transporterPartnerId": "x",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "x",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "x",
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
                      "productCode": "productCode",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsUpdateTransportResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "x",
            transporterPartnerId: Nullable<String>.value("x"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("x"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsUpdateTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                WaybillsUpdateTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsIssue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "dispatchAt": "2026-07-01T09:30:00Z",
                  "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                  "consigneePartnerId": "consigneePartnerId",
                  "transporterPartnerId": "transporterPartnerId",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "loadWarehouseId",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "saleInvoiceId",
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
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsIssueTransportResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "consigneePartnerId",
            transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsIssueTransportResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsIssue2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "dispatchAt": "2024-01-15T09:30:00Z",
                  "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                  "consigneePartnerId": "x",
                  "transporterPartnerId": "x",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "x",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "x",
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
                      "productCode": "productCode",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsIssueTransportResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "x",
            transporterPartnerId: Nullable<String>.value("x"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("x"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsIssueTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                WaybillsIssueTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "dispatchAt": "2026-07-01T09:30:00Z",
                  "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                  "consigneePartnerId": "consigneePartnerId",
                  "transporterPartnerId": "transporterPartnerId",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "loadWarehouseId",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "saleInvoiceId",
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
        let expectedResponse = WaybillsCancelTransportResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "consigneePartnerId",
            transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.transport.waybillsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "dispatchAt": "2024-01-15T09:30:00Z",
                  "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                  "consigneePartnerId": "x",
                  "transporterPartnerId": "x",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "x",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "x",
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
        let expectedResponse = WaybillsCancelTransportResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "x",
            transporterPartnerId: Nullable<String>.value("x"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("x"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.transport.waybillsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2026-07-01",
                  "dispatchAt": "2026-07-01T09:30:00Z",
                  "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                  "consigneePartnerId": "consigneePartnerId",
                  "transporterPartnerId": "transporterPartnerId",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "loadWarehouseId",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "saleInvoiceId",
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
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsGetTransportResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2026-07-01")!,
            dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "consigneePartnerId",
            transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsGetTransportResponseLinesItem(
                    id: "id",
                    itemId: Nullable<String>.value("itemId"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "2023-01-15",
                  "dispatchAt": "2024-01-15T09:30:00Z",
                  "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                  "consigneePartnerId": "x",
                  "transporterPartnerId": "x",
                  "vehiclePlate": "vehiclePlate",
                  "trailerPlate": "trailerPlate",
                  "driverName": "driverName",
                  "driverSurname": "driverSurname",
                  "loadWarehouseId": "x",
                  "loadAddress": "loadAddress",
                  "unloadAddress": "unloadAddress",
                  "valueEur": "valueEur",
                  "saleInvoiceId": "x",
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
                      "productCode": "productCode",
                      "sortOrder": 1000000
                    },
                    {
                      "id": "x",
                      "itemId": "x",
                      "description": "description",
                      "unit": "unit",
                      "quantity": "quantity",
                      "productCode": "productCode",
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
        let expectedResponse = WaybillsGetTransportResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: CalendarDate("2023-01-15")!,
            dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            consigneePartnerId: "x",
            transporterPartnerId: Nullable<String>.value("x"),
            vehiclePlate: Nullable<String>.value("vehiclePlate"),
            trailerPlate: Nullable<String>.value("trailerPlate"),
            driverName: Nullable<String>.value("driverName"),
            driverSurname: Nullable<String>.value("driverSurname"),
            loadWarehouseId: Nullable<String>.value("x"),
            loadAddress: "loadAddress",
            unloadAddress: "unloadAddress",
            valueEur: Nullable<String>.value("valueEur"),
            saleInvoiceId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            lines: [
                WaybillsGetTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                WaybillsGetTransportResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                )
            ]
        )
        let response = try await client.transport.waybillsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2026-07-01",
                      "dispatchAt": "2026-07-01T09:30:00Z",
                      "estimatedArrivalAt": "2026-07-01T09:30:00Z",
                      "consigneePartnerId": "consigneePartnerId",
                      "transporterPartnerId": "transporterPartnerId",
                      "vehiclePlate": "vehiclePlate",
                      "trailerPlate": "trailerPlate",
                      "driverName": "driverName",
                      "driverSurname": "driverSurname",
                      "loadWarehouseId": "loadWarehouseId",
                      "loadAddress": "loadAddress",
                      "unloadAddress": "unloadAddress",
                      "valueEur": "valueEur",
                      "saleInvoiceId": "saleInvoiceId",
                      "notes": "notes",
                      "createdAt": "2026-07-01T09:30:00Z",
                      "updatedAt": "2026-07-01T09:30:00Z",
                      "consigneeName": "consigneeName"
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
        let expectedResponse = WaybillsListTransportResponse(
            rows: [
                WaybillsListTransportResponseRowsItem(
                    id: "id",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2026-07-01")!,
                    dispatchAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    estimatedArrivalAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    consigneePartnerId: "consigneePartnerId",
                    transporterPartnerId: Nullable<String>.value("transporterPartnerId"),
                    vehiclePlate: Nullable<String>.value("vehiclePlate"),
                    trailerPlate: Nullable<String>.value("trailerPlate"),
                    driverName: Nullable<String>.value("driverName"),
                    driverSurname: Nullable<String>.value("driverSurname"),
                    loadWarehouseId: Nullable<String>.value("loadWarehouseId"),
                    loadAddress: "loadAddress",
                    unloadAddress: "unloadAddress",
                    valueEur: Nullable<String>.value("valueEur"),
                    saleInvoiceId: Nullable<String>.value("saleInvoiceId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    consigneeName: Nullable<String>.value("consigneeName")
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
        let response = try await client.transport.waybillsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func waybillsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2023-01-15",
                      "dispatchAt": "2024-01-15T09:30:00Z",
                      "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                      "consigneePartnerId": "x",
                      "transporterPartnerId": "x",
                      "vehiclePlate": "vehiclePlate",
                      "trailerPlate": "trailerPlate",
                      "driverName": "driverName",
                      "driverSurname": "driverSurname",
                      "loadWarehouseId": "x",
                      "loadAddress": "loadAddress",
                      "unloadAddress": "unloadAddress",
                      "valueEur": "valueEur",
                      "saleInvoiceId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "consigneeName": "consigneeName"
                    },
                    {
                      "id": "x",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "2023-01-15",
                      "dispatchAt": "2024-01-15T09:30:00Z",
                      "estimatedArrivalAt": "2024-01-15T09:30:00Z",
                      "consigneePartnerId": "x",
                      "transporterPartnerId": "x",
                      "vehiclePlate": "vehiclePlate",
                      "trailerPlate": "trailerPlate",
                      "driverName": "driverName",
                      "driverSurname": "driverSurname",
                      "loadWarehouseId": "x",
                      "loadAddress": "loadAddress",
                      "unloadAddress": "unloadAddress",
                      "valueEur": "valueEur",
                      "saleInvoiceId": "x",
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z",
                      "updatedAt": "2024-01-15T09:30:00Z",
                      "consigneeName": "consigneeName"
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
        let expectedResponse = WaybillsListTransportResponse(
            rows: [
                WaybillsListTransportResponseRowsItem(
                    id: "x",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2023-01-15")!,
                    dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    consigneePartnerId: "x",
                    transporterPartnerId: Nullable<String>.value("x"),
                    vehiclePlate: Nullable<String>.value("vehiclePlate"),
                    trailerPlate: Nullable<String>.value("trailerPlate"),
                    driverName: Nullable<String>.value("driverName"),
                    driverSurname: Nullable<String>.value("driverSurname"),
                    loadWarehouseId: Nullable<String>.value("x"),
                    loadAddress: "loadAddress",
                    unloadAddress: "unloadAddress",
                    valueEur: Nullable<String>.value("valueEur"),
                    saleInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    consigneeName: Nullable<String>.value("consigneeName")
                ),
                WaybillsListTransportResponseRowsItem(
                    id: "x",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: CalendarDate("2023-01-15")!,
                    dispatchAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    estimatedArrivalAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    consigneePartnerId: "x",
                    transporterPartnerId: Nullable<String>.value("x"),
                    vehiclePlate: Nullable<String>.value("vehiclePlate"),
                    trailerPlate: Nullable<String>.value("trailerPlate"),
                    driverName: Nullable<String>.value("driverName"),
                    driverSurname: Nullable<String>.value("driverSurname"),
                    loadWarehouseId: Nullable<String>.value("x"),
                    loadAddress: "loadAddress",
                    unloadAddress: "unloadAddress",
                    valueEur: Nullable<String>.value("valueEur"),
                    saleInvoiceId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    updatedAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    consigneeName: Nullable<String>.value("consigneeName")
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
        let response = try await client.transport.waybillsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
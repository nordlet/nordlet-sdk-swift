import Foundation
import Testing
import Api

@Suite("TransportClient Wire Tests") struct TransportClientWireTests {
    @Test func postV1TransportWaybillsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsCreateResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsCreateResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsCreate(
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

    @Test func postV1TransportWaybillsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsCreateResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsCreateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                PostV1TransportWaybillsCreateResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsCreate(
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

    @Test func postV1TransportWaybillsUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsUpdateResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsUpdateResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsUpdateResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsUpdateResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                PostV1TransportWaybillsUpdateResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsIssue1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsIssueResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsIssueResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsIssue(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsIssue2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsIssueResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsIssueResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                PostV1TransportWaybillsIssueResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsIssue(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsCancel1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
        let expectedResponse = PostV1TransportWaybillsCancelResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.transport.postV1TransportWaybillsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsCancel2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
        let expectedResponse = PostV1TransportWaybillsCancelResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt"
        )
        let response = try await client.transport.postV1TransportWaybillsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsGetResponse(
            id: "id",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsGetResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "status": "draft",
                  "series": "series",
                  "fullNumber": "fullNumber",
                  "documentDate": "documentDate",
                  "dispatchAt": "dispatchAt",
                  "estimatedArrivalAt": "estimatedArrivalAt",
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
                  "createdAt": "createdAt",
                  "updatedAt": "updatedAt",
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
        let expectedResponse = PostV1TransportWaybillsGetResponse(
            id: "x",
            status: .draft,
            series: "series",
            fullNumber: Nullable<String>.value("fullNumber"),
            documentDate: "documentDate",
            dispatchAt: "dispatchAt",
            estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
            createdAt: "createdAt",
            updatedAt: "updatedAt",
            lines: [
                PostV1TransportWaybillsGetResponseLinesItem(
                    id: "x",
                    itemId: Nullable<String>.value("x"),
                    description: "description",
                    unit: "unit",
                    quantity: "quantity",
                    productCode: Nullable<String>.value("productCode"),
                    sortOrder: 1000000
                ),
                PostV1TransportWaybillsGetResponseLinesItem(
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
        let response = try await client.transport.postV1TransportWaybillsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsList1() async throws -> Void {
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
                      "documentDate": "documentDate",
                      "dispatchAt": "dispatchAt",
                      "estimatedArrivalAt": "estimatedArrivalAt",
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
        let expectedResponse = PostV1TransportWaybillsListResponse(
            rows: [
                PostV1TransportWaybillsListResponseRowsItem(
                    id: "id",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    dispatchAt: "dispatchAt",
                    estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.transport.postV1TransportWaybillsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1TransportWaybillsList2() async throws -> Void {
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
                      "documentDate": "documentDate",
                      "dispatchAt": "dispatchAt",
                      "estimatedArrivalAt": "estimatedArrivalAt",
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
                      "createdAt": "createdAt",
                      "updatedAt": "updatedAt"
                    },
                    {
                      "id": "x",
                      "status": "draft",
                      "series": "series",
                      "fullNumber": "fullNumber",
                      "documentDate": "documentDate",
                      "dispatchAt": "dispatchAt",
                      "estimatedArrivalAt": "estimatedArrivalAt",
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
        let expectedResponse = PostV1TransportWaybillsListResponse(
            rows: [
                PostV1TransportWaybillsListResponseRowsItem(
                    id: "x",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    dispatchAt: "dispatchAt",
                    estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                ),
                PostV1TransportWaybillsListResponseRowsItem(
                    id: "x",
                    status: .draft,
                    series: "series",
                    fullNumber: Nullable<String>.value("fullNumber"),
                    documentDate: "documentDate",
                    dispatchAt: "dispatchAt",
                    estimatedArrivalAt: Nullable<String>.value("estimatedArrivalAt"),
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
                    createdAt: "createdAt",
                    updatedAt: "updatedAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.transport.postV1TransportWaybillsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
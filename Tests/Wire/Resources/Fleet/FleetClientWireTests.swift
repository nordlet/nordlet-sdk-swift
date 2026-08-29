import Foundation
import Testing
import Api

@Suite("FleetClient Wire Tests") struct FleetClientWireTests {
    @Test func postV1FleetVehiclesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesCreateResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesCreateResponseCurrentAssignment>.value(PostV1FleetVehiclesCreateResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesCreate(
            request: .init(
                plateNumber: "plateNumber",
                make: "make",
                model: "model"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesCreateResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesCreateResponseCurrentAssignment>.value(PostV1FleetVehiclesCreateResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesCreate(
            request: .init(
                plateNumber: "x",
                make: "x",
                model: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesUpdate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesUpdateResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesUpdateResponseCurrentAssignment>.value(PostV1FleetVehiclesUpdateResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesUpdate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesUpdateResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesUpdateResponseCurrentAssignment>.value(PostV1FleetVehiclesUpdateResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesGetResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesGetResponseCurrentAssignment>.value(PostV1FleetVehiclesGetResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "plateNumber": "plateNumber",
                  "make": "make",
                  "model": "model",
                  "year": 1000000,
                  "vin": "vin",
                  "fuelType": "fuelType",
                  "acquisitionDate": "acquisitionDate",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "fromDate",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
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
        let expectedResponse = PostV1FleetVehiclesGetResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<String>.value("acquisitionDate"),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            currentAssignment: Nullable<PostV1FleetVehiclesGetResponseCurrentAssignment>.value(PostV1FleetVehiclesGetResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: "fromDate",
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetVehiclesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "year": 1000000,
                      "vin": "vin",
                      "fuelType": "fuelType",
                      "acquisitionDate": "acquisitionDate",
                      "marketValue": "marketValue",
                      "fixedAssetId": "fixedAssetId",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "currentAssignment": {
                        "id": "id",
                        "employeeId": "employeeId",
                        "employeeName": "employeeName",
                        "fromDate": "fromDate",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
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
        let expectedResponse = PostV1FleetVehiclesListResponse(
            rows: [
                PostV1FleetVehiclesListResponseRowsItem(
                    id: "id",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate"),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("fixedAssetId"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    currentAssignment: Nullable<PostV1FleetVehiclesListResponseRowsItemCurrentAssignment>.value(PostV1FleetVehiclesListResponseRowsItemCurrentAssignment(
                        id: "id",
                        employeeId: "employeeId",
                        employeeName: "employeeName",
                        fromDate: "fromDate",
                        privateUse: true,
                        employerPaysFuel: true
                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.fleet.postV1FleetVehiclesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetVehiclesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "year": 1000000,
                      "vin": "vin",
                      "fuelType": "fuelType",
                      "acquisitionDate": "acquisitionDate",
                      "marketValue": "marketValue",
                      "fixedAssetId": "x",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "currentAssignment": {
                        "id": "x",
                        "employeeId": "x",
                        "employeeName": "employeeName",
                        "fromDate": "fromDate",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "year": 1000000,
                      "vin": "vin",
                      "fuelType": "fuelType",
                      "acquisitionDate": "acquisitionDate",
                      "marketValue": "marketValue",
                      "fixedAssetId": "x",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "currentAssignment": {
                        "id": "x",
                        "employeeId": "x",
                        "employeeName": "employeeName",
                        "fromDate": "fromDate",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
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
        let expectedResponse = PostV1FleetVehiclesListResponse(
            rows: [
                PostV1FleetVehiclesListResponseRowsItem(
                    id: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate"),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("x"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    currentAssignment: Nullable<PostV1FleetVehiclesListResponseRowsItemCurrentAssignment>.value(PostV1FleetVehiclesListResponseRowsItemCurrentAssignment(
                        id: "x",
                        employeeId: "x",
                        employeeName: "employeeName",
                        fromDate: "fromDate",
                        privateUse: true,
                        employerPaysFuel: true
                    )),
                    createdAt: "createdAt"
                ),
                PostV1FleetVehiclesListResponseRowsItem(
                    id: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<String>.value("acquisitionDate"),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("x"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    currentAssignment: Nullable<PostV1FleetVehiclesListResponseRowsItemCurrentAssignment>.value(PostV1FleetVehiclesListResponseRowsItemCurrentAssignment(
                        id: "x",
                        employeeId: "x",
                        employeeName: "employeeName",
                        fromDate: "fromDate",
                        privateUse: true,
                        employerPaysFuel: true
                    )),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.fleet.postV1FleetVehiclesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "vehicleId": "vehicleId",
                  "plateNumber": "plateNumber",
                  "employeeId": "employeeId",
                  "employeeName": "employeeName",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
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
        let expectedResponse = PostV1FleetAssignmentsCreateResponse(
            id: "id",
            vehicleId: "vehicleId",
            plateNumber: "plateNumber",
            employeeId: "employeeId",
            employeeName: "employeeName",
            fromDate: "fromDate",
            toDate: Nullable<String>.value("toDate"),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetAssignmentsCreate(
            request: .init(
                vehicleId: "vehicleId",
                employeeId: "employeeId",
                fromDate: "fromDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "vehicleId": "x",
                  "plateNumber": "plateNumber",
                  "employeeId": "x",
                  "employeeName": "employeeName",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
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
        let expectedResponse = PostV1FleetAssignmentsCreateResponse(
            id: "x",
            vehicleId: "x",
            plateNumber: "plateNumber",
            employeeId: "x",
            employeeName: "employeeName",
            fromDate: "fromDate",
            toDate: Nullable<String>.value("toDate"),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetAssignmentsCreate(
            request: .init(
                vehicleId: "x",
                employeeId: "x",
                fromDate: "fromDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsEnd1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "vehicleId": "vehicleId",
                  "plateNumber": "plateNumber",
                  "employeeId": "employeeId",
                  "employeeName": "employeeName",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
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
        let expectedResponse = PostV1FleetAssignmentsEndResponse(
            id: "id",
            vehicleId: "vehicleId",
            plateNumber: "plateNumber",
            employeeId: "employeeId",
            employeeName: "employeeName",
            fromDate: "fromDate",
            toDate: Nullable<String>.value("toDate"),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetAssignmentsEnd(
            request: .init(
                id: "id",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsEnd2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "vehicleId": "x",
                  "plateNumber": "plateNumber",
                  "employeeId": "x",
                  "employeeName": "employeeName",
                  "fromDate": "fromDate",
                  "toDate": "toDate",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
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
        let expectedResponse = PostV1FleetAssignmentsEndResponse(
            id: "x",
            vehicleId: "x",
            plateNumber: "plateNumber",
            employeeId: "x",
            employeeName: "employeeName",
            fromDate: "fromDate",
            toDate: Nullable<String>.value("toDate"),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt"
        )
        let response = try await client.fleet.postV1FleetAssignmentsEnd(
            request: .init(
                id: "x",
                toDate: "toDate"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "vehicleId": "vehicleId",
                      "plateNumber": "plateNumber",
                      "employeeId": "employeeId",
                      "employeeName": "employeeName",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "privateUse": true,
                      "employerPaysFuel": true,
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
        let expectedResponse = PostV1FleetAssignmentsListResponse(
            rows: [
                PostV1FleetAssignmentsListResponseRowsItem(
                    id: "id",
                    vehicleId: "vehicleId",
                    plateNumber: "plateNumber",
                    employeeId: "employeeId",
                    employeeName: "employeeName",
                    fromDate: "fromDate",
                    toDate: Nullable<String>.value("toDate"),
                    privateUse: true,
                    employerPaysFuel: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.fleet.postV1FleetAssignmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetAssignmentsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "vehicleId": "x",
                      "plateNumber": "plateNumber",
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "privateUse": true,
                      "employerPaysFuel": true,
                      "notes": "notes",
                      "createdAt": "createdAt"
                    },
                    {
                      "id": "x",
                      "vehicleId": "x",
                      "plateNumber": "plateNumber",
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "fromDate": "fromDate",
                      "toDate": "toDate",
                      "privateUse": true,
                      "employerPaysFuel": true,
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
        let expectedResponse = PostV1FleetAssignmentsListResponse(
            rows: [
                PostV1FleetAssignmentsListResponseRowsItem(
                    id: "x",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    employeeId: "x",
                    employeeName: "employeeName",
                    fromDate: "fromDate",
                    toDate: Nullable<String>.value("toDate"),
                    privateUse: true,
                    employerPaysFuel: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                ),
                PostV1FleetAssignmentsListResponseRowsItem(
                    id: "x",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    employeeId: "x",
                    employeeName: "employeeName",
                    fromDate: "fromDate",
                    toDate: Nullable<String>.value("toDate"),
                    privateUse: true,
                    employerPaysFuel: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt"
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.fleet.postV1FleetAssignmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetNaturaPreview1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "employeeId",
                      "employeeName": "employeeName",
                      "vehicleId": "vehicleId",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "marketValue": "marketValue",
                      "employerPaysFuel": true,
                      "ratePercent": "ratePercent",
                      "amount": "amount"
                    }
                  ],
                  "total": "total"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1FleetNaturaPreviewResponse(
            rows: [
                PostV1FleetNaturaPreviewResponseRowsItem(
                    employeeId: "employeeId",
                    employeeName: "employeeName",
                    vehicleId: "vehicleId",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    marketValue: "marketValue",
                    employerPaysFuel: true,
                    ratePercent: "ratePercent",
                    amount: "amount"
                )
            ],
            total: "total"
        )
        let response = try await client.fleet.postV1FleetNaturaPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1FleetNaturaPreview2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "vehicleId": "x",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "marketValue": "marketValue",
                      "employerPaysFuel": true,
                      "ratePercent": "ratePercent",
                      "amount": "amount"
                    },
                    {
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "vehicleId": "x",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "marketValue": "marketValue",
                      "employerPaysFuel": true,
                      "ratePercent": "ratePercent",
                      "amount": "amount"
                    }
                  ],
                  "total": "total"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1FleetNaturaPreviewResponse(
            rows: [
                PostV1FleetNaturaPreviewResponseRowsItem(
                    employeeId: "x",
                    employeeName: "employeeName",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    marketValue: "marketValue",
                    employerPaysFuel: true,
                    ratePercent: "ratePercent",
                    amount: "amount"
                ),
                PostV1FleetNaturaPreviewResponseRowsItem(
                    employeeId: "x",
                    employeeName: "employeeName",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    marketValue: "marketValue",
                    employerPaysFuel: true,
                    ratePercent: "ratePercent",
                    amount: "amount"
                )
            ],
            total: "total"
        )
        let response = try await client.fleet.postV1FleetNaturaPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
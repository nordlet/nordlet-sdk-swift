import Foundation
import Testing
import Api

@Suite("FleetClient Wire Tests") struct FleetClientWireTests {
    @Test func vehiclesCreate1() async throws -> Void {
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
                  "acquisitionDate": "2026-07-01",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "2026-07-01",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesCreateFleetResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesCreateFleetResponseDocumentsItem]>.value([
                VehiclesCreateFleetResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            currentAssignment: Nullable<VehiclesCreateFleetResponseCurrentAssignment>.value(VehiclesCreateFleetResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: CalendarDate("2026-07-01")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesCreate(
            request: .init(
                plateNumber: "plateNumber",
                make: "make",
                model: "model"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesCreate2() async throws -> Void {
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
                  "acquisitionDate": "2023-01-15",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "2023-01-15",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesCreateFleetResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesCreateFleetResponseDocumentsItem]>.value([
                VehiclesCreateFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                VehiclesCreateFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            currentAssignment: Nullable<VehiclesCreateFleetResponseCurrentAssignment>.value(VehiclesCreateFleetResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: CalendarDate("2023-01-15")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesCreate(
            request: .init(
                plateNumber: "x",
                make: "x",
                model: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesUpdate1() async throws -> Void {
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
                  "acquisitionDate": "2026-07-01",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "2026-07-01",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesUpdateFleetResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesUpdateFleetResponseDocumentsItem]>.value([
                VehiclesUpdateFleetResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            currentAssignment: Nullable<VehiclesUpdateFleetResponseCurrentAssignment>.value(VehiclesUpdateFleetResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: CalendarDate("2026-07-01")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesUpdate(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesUpdate2() async throws -> Void {
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
                  "acquisitionDate": "2023-01-15",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "2023-01-15",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesUpdateFleetResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesUpdateFleetResponseDocumentsItem]>.value([
                VehiclesUpdateFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                VehiclesUpdateFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            currentAssignment: Nullable<VehiclesUpdateFleetResponseCurrentAssignment>.value(VehiclesUpdateFleetResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: CalendarDate("2023-01-15")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesUpdate(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesGet1() async throws -> Void {
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
                  "acquisitionDate": "2026-07-01",
                  "marketValue": "marketValue",
                  "fixedAssetId": "fixedAssetId",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "name",
                      "ref": "ref"
                    }
                  ],
                  "currentAssignment": {
                    "id": "id",
                    "employeeId": "employeeId",
                    "employeeName": "employeeName",
                    "fromDate": "2026-07-01",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesGetFleetResponse(
            id: "id",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("fixedAssetId"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesGetFleetResponseDocumentsItem]>.value([
                VehiclesGetFleetResponseDocumentsItem(
                    name: "name",
                    ref: "ref"
                )
            ]),
            currentAssignment: Nullable<VehiclesGetFleetResponseCurrentAssignment>.value(VehiclesGetFleetResponseCurrentAssignment(
                id: "id",
                employeeId: "employeeId",
                employeeName: "employeeName",
                fromDate: CalendarDate("2026-07-01")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesGet2() async throws -> Void {
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
                  "acquisitionDate": "2023-01-15",
                  "marketValue": "marketValue",
                  "fixedAssetId": "x",
                  "technicalInspectionDue": "technicalInspectionDue",
                  "insuranceDue": "insuranceDue",
                  "status": "active",
                  "notes": "notes",
                  "documents": [
                    {
                      "name": "x",
                      "ref": "x"
                    },
                    {
                      "name": "x",
                      "ref": "x"
                    }
                  ],
                  "currentAssignment": {
                    "id": "x",
                    "employeeId": "x",
                    "employeeName": "employeeName",
                    "fromDate": "2023-01-15",
                    "privateUse": true,
                    "employerPaysFuel": true
                  },
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = VehiclesGetFleetResponse(
            id: "x",
            plateNumber: "plateNumber",
            make: "make",
            model: "model",
            year: Nullable<Int64>.value(1000000),
            vin: Nullable<String>.value("vin"),
            fuelType: Nullable<String>.value("fuelType"),
            acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            marketValue: "marketValue",
            fixedAssetId: Nullable<String>.value("x"),
            technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
            insuranceDue: Nullable<String>.value("insuranceDue"),
            status: .active,
            notes: Nullable<String>.value("notes"),
            documents: Nullable<[VehiclesGetFleetResponseDocumentsItem]>.value([
                VehiclesGetFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                ),
                VehiclesGetFleetResponseDocumentsItem(
                    name: "x",
                    ref: "x"
                )
            ]),
            currentAssignment: Nullable<VehiclesGetFleetResponseCurrentAssignment>.value(VehiclesGetFleetResponseCurrentAssignment(
                id: "x",
                employeeId: "x",
                employeeName: "employeeName",
                fromDate: CalendarDate("2023-01-15")!,
                privateUse: true,
                employerPaysFuel: true
            )),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.vehiclesGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesList1() async throws -> Void {
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
                      "acquisitionDate": "2026-07-01",
                      "marketValue": "marketValue",
                      "fixedAssetId": "fixedAssetId",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "documents": [
                        {
                          "name": "name",
                          "ref": "ref"
                        }
                      ],
                      "currentAssignment": {
                        "id": "id",
                        "employeeId": "employeeId",
                        "employeeName": "employeeName",
                        "fromDate": "2026-07-01",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
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
        let expectedResponse = VehiclesListFleetResponse(
            rows: [
                VehiclesListFleetResponseRowsItem(
                    id: "id",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("fixedAssetId"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    documents: Nullable<[VehiclesListFleetResponseRowsItemDocumentsItem]>.value([
                        VehiclesListFleetResponseRowsItemDocumentsItem(
                            name: "name",
                            ref: "ref"
                        )
                    ]),
                    currentAssignment: Nullable<VehiclesListFleetResponseRowsItemCurrentAssignment>.value(VehiclesListFleetResponseRowsItemCurrentAssignment(
                        id: "id",
                        employeeId: "employeeId",
                        employeeName: "employeeName",
                        fromDate: CalendarDate("2026-07-01")!,
                        privateUse: true,
                        employerPaysFuel: true
                    )),
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
        let response = try await client.fleet.vehiclesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func vehiclesList2() async throws -> Void {
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
                      "acquisitionDate": "2023-01-15",
                      "marketValue": "marketValue",
                      "fixedAssetId": "x",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "documents": [
                        {
                          "name": "x",
                          "ref": "x"
                        },
                        {
                          "name": "x",
                          "ref": "x"
                        }
                      ],
                      "currentAssignment": {
                        "id": "x",
                        "employeeId": "x",
                        "employeeName": "employeeName",
                        "fromDate": "2023-01-15",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "plateNumber": "plateNumber",
                      "make": "make",
                      "model": "model",
                      "year": 1000000,
                      "vin": "vin",
                      "fuelType": "fuelType",
                      "acquisitionDate": "2023-01-15",
                      "marketValue": "marketValue",
                      "fixedAssetId": "x",
                      "technicalInspectionDue": "technicalInspectionDue",
                      "insuranceDue": "insuranceDue",
                      "status": "active",
                      "notes": "notes",
                      "documents": [
                        {
                          "name": "x",
                          "ref": "x"
                        },
                        {
                          "name": "x",
                          "ref": "x"
                        }
                      ],
                      "currentAssignment": {
                        "id": "x",
                        "employeeId": "x",
                        "employeeName": "employeeName",
                        "fromDate": "2023-01-15",
                        "privateUse": true,
                        "employerPaysFuel": true
                      },
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
        let expectedResponse = VehiclesListFleetResponse(
            rows: [
                VehiclesListFleetResponseRowsItem(
                    id: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("x"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    documents: Nullable<[VehiclesListFleetResponseRowsItemDocumentsItem]>.value([
                        VehiclesListFleetResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        VehiclesListFleetResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    currentAssignment: Nullable<VehiclesListFleetResponseRowsItemCurrentAssignment>.value(VehiclesListFleetResponseRowsItemCurrentAssignment(
                        id: "x",
                        employeeId: "x",
                        employeeName: "employeeName",
                        fromDate: CalendarDate("2023-01-15")!,
                        privateUse: true,
                        employerPaysFuel: true
                    )),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                VehiclesListFleetResponseRowsItem(
                    id: "x",
                    plateNumber: "plateNumber",
                    make: "make",
                    model: "model",
                    year: Nullable<Int64>.value(1000000),
                    vin: Nullable<String>.value("vin"),
                    fuelType: Nullable<String>.value("fuelType"),
                    acquisitionDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    marketValue: "marketValue",
                    fixedAssetId: Nullable<String>.value("x"),
                    technicalInspectionDue: Nullable<String>.value("technicalInspectionDue"),
                    insuranceDue: Nullable<String>.value("insuranceDue"),
                    status: .active,
                    notes: Nullable<String>.value("notes"),
                    documents: Nullable<[VehiclesListFleetResponseRowsItemDocumentsItem]>.value([
                        VehiclesListFleetResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        ),
                        VehiclesListFleetResponseRowsItemDocumentsItem(
                            name: "x",
                            ref: "x"
                        )
                    ]),
                    currentAssignment: Nullable<VehiclesListFleetResponseRowsItemCurrentAssignment>.value(VehiclesListFleetResponseRowsItemCurrentAssignment(
                        id: "x",
                        employeeId: "x",
                        employeeName: "employeeName",
                        fromDate: CalendarDate("2023-01-15")!,
                        privateUse: true,
                        employerPaysFuel: true
                    )),
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
        let response = try await client.fleet.vehiclesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsCreate1() async throws -> Void {
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
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssignmentsCreateFleetResponse(
            id: "id",
            vehicleId: "vehicleId",
            plateNumber: "plateNumber",
            employeeId: "employeeId",
            employeeName: "employeeName",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.assignmentsCreate(
            request: .init(
                vehicleId: "vehicleId",
                employeeId: "employeeId",
                fromDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsCreate2() async throws -> Void {
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
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssignmentsCreateFleetResponse(
            id: "x",
            vehicleId: "x",
            plateNumber: "plateNumber",
            employeeId: "x",
            employeeName: "employeeName",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.assignmentsCreate(
            request: .init(
                vehicleId: "x",
                employeeId: "x",
                fromDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsEnd1() async throws -> Void {
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
                  "fromDate": "2026-07-01",
                  "toDate": "2026-07-01",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
                  "createdAt": "2026-07-01T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssignmentsEndFleetResponse(
            id: "id",
            vehicleId: "vehicleId",
            plateNumber: "plateNumber",
            employeeId: "employeeId",
            employeeName: "employeeName",
            fromDate: CalendarDate("2026-07-01")!,
            toDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.assignmentsEnd(
            request: .init(
                id: "id",
                toDate: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsEnd2() async throws -> Void {
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
                  "fromDate": "2023-01-15",
                  "toDate": "2023-01-15",
                  "privateUse": true,
                  "employerPaysFuel": true,
                  "notes": "notes",
                  "createdAt": "2024-01-15T09:30:00Z"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AssignmentsEndFleetResponse(
            id: "x",
            vehicleId: "x",
            plateNumber: "plateNumber",
            employeeId: "x",
            employeeName: "employeeName",
            fromDate: CalendarDate("2023-01-15")!,
            toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            privateUse: true,
            employerPaysFuel: true,
            notes: Nullable<String>.value("notes"),
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
        )
        let response = try await client.fleet.assignmentsEnd(
            request: .init(
                id: "x",
                toDate: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsList1() async throws -> Void {
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
                      "fromDate": "2026-07-01",
                      "toDate": "2026-07-01",
                      "privateUse": true,
                      "employerPaysFuel": true,
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
        let expectedResponse = AssignmentsListFleetResponse(
            rows: [
                AssignmentsListFleetResponseRowsItem(
                    id: "id",
                    vehicleId: "vehicleId",
                    plateNumber: "plateNumber",
                    employeeId: "employeeId",
                    employeeName: "employeeName",
                    fromDate: CalendarDate("2026-07-01")!,
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    privateUse: true,
                    employerPaysFuel: true,
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
        let response = try await client.fleet.assignmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func assignmentsList2() async throws -> Void {
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
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "privateUse": true,
                      "employerPaysFuel": true,
                      "notes": "notes",
                      "createdAt": "2024-01-15T09:30:00Z"
                    },
                    {
                      "id": "x",
                      "vehicleId": "x",
                      "plateNumber": "plateNumber",
                      "employeeId": "x",
                      "employeeName": "employeeName",
                      "fromDate": "2023-01-15",
                      "toDate": "2023-01-15",
                      "privateUse": true,
                      "employerPaysFuel": true,
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
        let expectedResponse = AssignmentsListFleetResponse(
            rows: [
                AssignmentsListFleetResponseRowsItem(
                    id: "x",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    employeeId: "x",
                    employeeName: "employeeName",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    privateUse: true,
                    employerPaysFuel: true,
                    notes: Nullable<String>.value("notes"),
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)
                ),
                AssignmentsListFleetResponseRowsItem(
                    id: "x",
                    vehicleId: "x",
                    plateNumber: "plateNumber",
                    employeeId: "x",
                    employeeName: "employeeName",
                    fromDate: CalendarDate("2023-01-15")!,
                    toDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    privateUse: true,
                    employerPaysFuel: true,
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
        let response = try await client.fleet.assignmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func naturaPreview1() async throws -> Void {
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
        let expectedResponse = NaturaPreviewFleetResponse(
            rows: [
                NaturaPreviewFleetResponseRowsItem(
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
        let response = try await client.fleet.naturaPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func naturaPreview2() async throws -> Void {
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
        let expectedResponse = NaturaPreviewFleetResponse(
            rows: [
                NaturaPreviewFleetResponseRowsItem(
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
                NaturaPreviewFleetResponseRowsItem(
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
        let response = try await client.fleet.naturaPreview(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
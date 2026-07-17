import Foundation
import Testing
import Api

@Suite("PayrollClient Wire Tests") struct PayrollClientWireTests {
    @Test func postV1PayrollDepartmentsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollDepartmentsCreateResponse(
            id: "id",
            code: "code",
            name: "name"
        )
        let response = try await client.payroll.postV1PayrollDepartmentsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollDepartmentsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollDepartmentsCreateResponse(
            id: "x",
            code: "code",
            name: "name"
        )
        let response = try await client.payroll.postV1PayrollDepartmentsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollDepartmentsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name"
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
        let expectedResponse = PostV1PayrollDepartmentsListResponse(
            rows: [
                PostV1PayrollDepartmentsListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollDepartmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollDepartmentsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name"
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
        let expectedResponse = PostV1PayrollDepartmentsListResponse(
            rows: [
                PostV1PayrollDepartmentsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                ),
                PostV1PayrollDepartmentsListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollDepartmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollSchedulesCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "code": "code",
                  "name": "name",
                  "hoursPerWeek": "hoursPerWeek"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollSchedulesCreateResponse(
            id: "id",
            code: "code",
            name: "name",
            hoursPerWeek: "hoursPerWeek"
        )
        let response = try await client.payroll.postV1PayrollSchedulesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollSchedulesCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "code": "code",
                  "name": "name",
                  "hoursPerWeek": "hoursPerWeek"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollSchedulesCreateResponse(
            id: "x",
            code: "code",
            name: "name",
            hoursPerWeek: "hoursPerWeek"
        )
        let response = try await client.payroll.postV1PayrollSchedulesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollSchedulesList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "code": "code",
                      "name": "name",
                      "hoursPerWeek": "hoursPerWeek"
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
        let expectedResponse = PostV1PayrollSchedulesListResponse(
            rows: [
                PostV1PayrollSchedulesListResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollSchedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollSchedulesList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "hoursPerWeek": "hoursPerWeek"
                    },
                    {
                      "id": "x",
                      "code": "code",
                      "name": "name",
                      "hoursPerWeek": "hoursPerWeek"
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
        let expectedResponse = PostV1PayrollSchedulesListResponse(
            rows: [
                PostV1PayrollSchedulesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                ),
                PostV1PayrollSchedulesListResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollSchedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollCalc1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "npd": "npd",
                  "gpm": "gpm",
                  "sodraEmployee": "sodraEmployee",
                  "sodraEmployer": "sodraEmployer",
                  "net": "net"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollCalcResponse(
            npd: "npd",
            gpm: "gpm",
            sodraEmployee: "sodraEmployee",
            sodraEmployer: "sodraEmployer",
            net: "net"
        )
        let response = try await client.payroll.postV1PayrollCalc(
            request: .init(
                taxableBase: "taxableBase",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollCalc2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "npd": "npd",
                  "gpm": "gpm",
                  "sodraEmployee": "sodraEmployee",
                  "sodraEmployer": "sodraEmployer",
                  "net": "net"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollCalcResponse(
            npd: "npd",
            gpm: "gpm",
            sodraEmployee: "sodraEmployee",
            sodraEmployer: "sodraEmployer",
            net: "net"
        )
        let response = try await client.payroll.postV1PayrollCalc(
            request: .init(
                taxableBase: "taxableBase",
                date: "date"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt",
                  "lines": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
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
        let expectedResponse = PostV1PayrollRunsCreateResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt"),
            lines: [
                PostV1PayrollRunsCreateResponseLinesItem(
                    id: "id",
                    employeeId: "employeeId",
                    contractId: Nullable<String>.value("contractId"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsCreateResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsCreateResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollRunsCreate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt",
                  "lines": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        },
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        },
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        },
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        },
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
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
        let expectedResponse = PostV1PayrollRunsCreateResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt"),
            lines: [
                PostV1PayrollRunsCreateResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsCreateResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        PostV1PayrollRunsCreateResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsCreateResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        PostV1PayrollRunsCreateResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                ),
                PostV1PayrollRunsCreateResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsCreateResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        PostV1PayrollRunsCreateResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsCreateResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        PostV1PayrollRunsCreateResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollRunsCreate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt",
                  "lines": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
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
        let expectedResponse = PostV1PayrollRunsGetResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt"),
            lines: [
                PostV1PayrollRunsGetResponseLinesItem(
                    id: "id",
                    employeeId: "employeeId",
                    contractId: Nullable<String>.value("contractId"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsGetResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsGetResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollRunsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt",
                  "lines": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        },
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        },
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "additions": [
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        },
                        {
                          "name": "name",
                          "amount": "amount",
                          "taxable": true
                        }
                      ],
                      "deductions": [
                        {
                          "name": "name",
                          "amount": "amount"
                        },
                        {
                          "name": "name",
                          "amount": "amount"
                        }
                      ],
                      "taxableBase": "taxableBase",
                      "npd": "npd",
                      "gpm": "gpm",
                      "sodraEmployee": "sodraEmployee",
                      "sodraEmployer": "sodraEmployer",
                      "net": "net"
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
        let expectedResponse = PostV1PayrollRunsGetResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt"),
            lines: [
                PostV1PayrollRunsGetResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsGetResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        PostV1PayrollRunsGetResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsGetResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        PostV1PayrollRunsGetResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                ),
                PostV1PayrollRunsGetResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    additions: [
                        PostV1PayrollRunsGetResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        PostV1PayrollRunsGetResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        PostV1PayrollRunsGetResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        PostV1PayrollRunsGetResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    npd: "npd",
                    gpm: "gpm",
                    sodraEmployee: "sodraEmployee",
                    sodraEmployer: "sodraEmployer",
                    net: "net"
                )
            ]
        )
        let response = try await client.payroll.postV1PayrollRunsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsList1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "id",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "npdTotal": "npdTotal",
                      "gpmTotal": "gpmTotal",
                      "sodraEmployeeTotal": "sodraEmployeeTotal",
                      "sodraEmployerTotal": "sodraEmployerTotal",
                      "netTotal": "netTotal",
                      "journalTransactionId": "journalTransactionId",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "approvedAt": "approvedAt"
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
        let expectedResponse = PostV1PayrollRunsListResponse(
            rows: [
                PostV1PayrollRunsListResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    month: 1000000,
                    status: .draft,
                    grossTotal: "grossTotal",
                    npdTotal: "npdTotal",
                    gpmTotal: "gpmTotal",
                    sodraEmployeeTotal: "sodraEmployeeTotal",
                    sodraEmployerTotal: "sodraEmployerTotal",
                    netTotal: "netTotal",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    approvedAt: Nullable<String>.value("approvedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.payroll.postV1PayrollRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsList2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "rows": [
                    {
                      "id": "x",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "npdTotal": "npdTotal",
                      "gpmTotal": "gpmTotal",
                      "sodraEmployeeTotal": "sodraEmployeeTotal",
                      "sodraEmployerTotal": "sodraEmployerTotal",
                      "netTotal": "netTotal",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "approvedAt": "approvedAt"
                    },
                    {
                      "id": "x",
                      "year": 1000000,
                      "month": 1000000,
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "npdTotal": "npdTotal",
                      "gpmTotal": "gpmTotal",
                      "sodraEmployeeTotal": "sodraEmployeeTotal",
                      "sodraEmployerTotal": "sodraEmployerTotal",
                      "netTotal": "netTotal",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "createdAt": "createdAt",
                      "approvedAt": "approvedAt"
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
        let expectedResponse = PostV1PayrollRunsListResponse(
            rows: [
                PostV1PayrollRunsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .draft,
                    grossTotal: "grossTotal",
                    npdTotal: "npdTotal",
                    gpmTotal: "gpmTotal",
                    sodraEmployeeTotal: "sodraEmployeeTotal",
                    sodraEmployerTotal: "sodraEmployerTotal",
                    netTotal: "netTotal",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    approvedAt: Nullable<String>.value("approvedAt")
                ),
                PostV1PayrollRunsListResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    status: .draft,
                    grossTotal: "grossTotal",
                    npdTotal: "npdTotal",
                    gpmTotal: "gpmTotal",
                    sodraEmployeeTotal: "sodraEmployeeTotal",
                    sodraEmployerTotal: "sodraEmployerTotal",
                    netTotal: "netTotal",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    createdAt: "createdAt",
                    approvedAt: Nullable<String>.value("approvedAt")
                )
            ],
            page: 1000000,
            pageSize: 1000000,
            total: 1000000
        )
        let response = try await client.payroll.postV1PayrollRunsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsApprove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollRunsApproveResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt")
        )
        let response = try await client.payroll.postV1PayrollRunsApprove(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsApprove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "npdTotal": "npdTotal",
                  "gpmTotal": "gpmTotal",
                  "sodraEmployeeTotal": "sodraEmployeeTotal",
                  "sodraEmployerTotal": "sodraEmployerTotal",
                  "netTotal": "netTotal",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "createdAt": "createdAt",
                  "approvedAt": "approvedAt"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PostV1PayrollRunsApproveResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            status: .draft,
            grossTotal: "grossTotal",
            npdTotal: "npdTotal",
            gpmTotal: "gpmTotal",
            sodraEmployeeTotal: "sodraEmployeeTotal",
            sodraEmployerTotal: "sodraEmployerTotal",
            netTotal: "netTotal",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            createdAt: "createdAt",
            approvedAt: Nullable<String>.value("approvedAt")
        )
        let response = try await client.payroll.postV1PayrollRunsApprove(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsCancel1() async throws -> Void {
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
        let expectedResponse = PostV1PayrollRunsCancelResponse(
            deleted: true
        )
        let response = try await client.payroll.postV1PayrollRunsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollRunsCancel2() async throws -> Void {
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
        let expectedResponse = PostV1PayrollRunsCancelResponse(
            deleted: true
        )
        let response = try await client.payroll.postV1PayrollRunsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollPaymentsExport1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
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
        let expectedResponse = PostV1PayrollPaymentsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.payroll.postV1PayrollPaymentsExport(
            request: .init(
                runId: "runId",
                bankAccountId: "bankAccountId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func postV1PayrollPaymentsExport2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "messageId": "messageId",
                  "fileName": "fileName",
                  "transactionCount": 1000000,
                  "controlSum": "controlSum",
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
        let expectedResponse = PostV1PayrollPaymentsExportResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.payroll.postV1PayrollPaymentsExport(
            request: .init(
                runId: "x",
                bankAccountId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
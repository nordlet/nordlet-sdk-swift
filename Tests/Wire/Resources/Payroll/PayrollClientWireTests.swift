import Foundation
import Testing
import Api

@Suite("PayrollClient Wire Tests") struct PayrollClientWireTests {
    @Test func departmentsCreate1() async throws -> Void {
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
        let expectedResponse = DepartmentsCreatePayrollResponse(
            id: "id",
            code: "code",
            name: "name"
        )
        let response = try await client.payroll.departmentsCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func departmentsCreate2() async throws -> Void {
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
        let expectedResponse = DepartmentsCreatePayrollResponse(
            id: "x",
            code: "code",
            name: "name"
        )
        let response = try await client.payroll.departmentsCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func departmentsList1() async throws -> Void {
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
        let expectedResponse = DepartmentsListPayrollResponse(
            rows: [
                DepartmentsListPayrollResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name"
                )
            ]
        )
        let response = try await client.payroll.departmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func departmentsList2() async throws -> Void {
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
        let expectedResponse = DepartmentsListPayrollResponse(
            rows: [
                DepartmentsListPayrollResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                ),
                DepartmentsListPayrollResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name"
                )
            ]
        )
        let response = try await client.payroll.departmentsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func schedulesCreate1() async throws -> Void {
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
        let expectedResponse = SchedulesCreatePayrollResponse(
            id: "id",
            code: "code",
            name: "name",
            hoursPerWeek: "hoursPerWeek"
        )
        let response = try await client.payroll.schedulesCreate(
            request: .init(
                code: "code",
                name: "name"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func schedulesCreate2() async throws -> Void {
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
        let expectedResponse = SchedulesCreatePayrollResponse(
            id: "x",
            code: "code",
            name: "name",
            hoursPerWeek: "hoursPerWeek"
        )
        let response = try await client.payroll.schedulesCreate(
            request: .init(
                code: "x",
                name: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func schedulesList1() async throws -> Void {
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
        let expectedResponse = SchedulesListPayrollResponse(
            rows: [
                SchedulesListPayrollResponseRowsItem(
                    id: "id",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                )
            ]
        )
        let response = try await client.payroll.schedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func schedulesList2() async throws -> Void {
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
        let expectedResponse = SchedulesListPayrollResponse(
            rows: [
                SchedulesListPayrollResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                ),
                SchedulesListPayrollResponseRowsItem(
                    id: "x",
                    code: "code",
                    name: "name",
                    hoursPerWeek: "hoursPerWeek"
                )
            ]
        )
        let response = try await client.payroll.schedulesList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func calc1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "taxAllowance": "taxAllowance",
                  "incomeTax": "incomeTax",
                  "employeeContributions": "employeeContributions",
                  "employerContributions": "employerContributions",
                  "components": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
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
        let expectedResponse = CalcPayrollResponse(
            countryCode: "countryCode",
            taxAllowance: "taxAllowance",
            incomeTax: "incomeTax",
            employeeContributions: "employeeContributions",
            employerContributions: "employerContributions",
            components: [
                CalcPayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            net: "net"
        )
        let response = try await client.payroll.calc(
            request: .init(
                taxableBase: "121.00",
                date: CalendarDate("2026-07-01")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func calc2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "countryCode": "countryCode",
                  "taxAllowance": "taxAllowance",
                  "incomeTax": "incomeTax",
                  "employeeContributions": "employeeContributions",
                  "employerContributions": "employerContributions",
                  "components": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
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
        let expectedResponse = CalcPayrollResponse(
            countryCode: "countryCode",
            taxAllowance: "taxAllowance",
            incomeTax: "incomeTax",
            employeeContributions: "employeeContributions",
            employerContributions: "employerContributions",
            components: [
                CalcPayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                CalcPayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            net: "net"
        )
        let response = try await client.payroll.calc(
            request: .init(
                taxableBase: "taxableBase",
                date: CalendarDate("2023-01-15")!
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsCreate1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2026-07-01",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "warnings": [
                    "warnings"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "reversedAt": "2026-07-01T09:30:00Z",
                  "reversalJournalTransactionId": "reversalJournalTransactionId",
                  "reversalReason": "reversalReason",
                  "lines": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
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
        let expectedResponse = RunsCreatePayrollResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsCreatePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("reversalJournalTransactionId"),
            reversalReason: Nullable<String>.value("reversalReason"),
            lines: [
                RunsCreatePayrollResponseLinesItem(
                    id: "id",
                    employeeId: "employeeId",
                    contractId: Nullable<String>.value("contractId"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsCreatePayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsCreatePayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsCreatePayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount"
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                )
            ]
        )
        let response = try await client.payroll.runsCreate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsCreate2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2023-01-15",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "reversedAt": "2024-01-15T09:30:00Z",
                  "reversalJournalTransactionId": "x",
                  "reversalReason": "reversalReason",
                  "lines": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
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
        let expectedResponse = RunsCreatePayrollResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsCreatePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                RunsCreatePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings",
                "warnings"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("x"),
            reversalReason: Nullable<String>.value("reversalReason"),
            lines: [
                RunsCreatePayrollResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsCreatePayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        RunsCreatePayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsCreatePayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        RunsCreatePayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsCreatePayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsCreatePayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                ),
                RunsCreatePayrollResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsCreatePayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        RunsCreatePayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsCreatePayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        RunsCreatePayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsCreatePayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsCreatePayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                )
            ]
        )
        let response = try await client.payroll.runsCreate(
            request: .init(
                year: 1000000,
                month: 1000000
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsGet1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2026-07-01",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "warnings": [
                    "warnings"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "reversedAt": "2026-07-01T09:30:00Z",
                  "reversalJournalTransactionId": "reversalJournalTransactionId",
                  "reversalReason": "reversalReason",
                  "lines": [
                    {
                      "id": "id",
                      "employeeId": "employeeId",
                      "contractId": "contractId",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
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
        let expectedResponse = RunsGetPayrollResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsGetPayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("reversalJournalTransactionId"),
            reversalReason: Nullable<String>.value("reversalReason"),
            lines: [
                RunsGetPayrollResponseLinesItem(
                    id: "id",
                    employeeId: "employeeId",
                    contractId: Nullable<String>.value("contractId"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsGetPayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsGetPayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsGetPayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount"
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                )
            ]
        )
        let response = try await client.payroll.runsGet(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsGet2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2023-01-15",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "reversedAt": "2024-01-15T09:30:00Z",
                  "reversalJournalTransactionId": "x",
                  "reversalReason": "reversalReason",
                  "lines": [
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
                    },
                    {
                      "id": "x",
                      "employeeId": "x",
                      "contractId": "x",
                      "employeeName": "employeeName",
                      "gross": "gross",
                      "natura": "natura",
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
                      "taxAllowance": "taxAllowance",
                      "incomeTax": "incomeTax",
                      "employeeContributions": "employeeContributions",
                      "employerContributions": "employerContributions",
                      "components": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "net": "net",
                      "daysWorked": "daysWorked",
                      "hoursWorked": "hoursWorked",
                      "registeredDays": "registeredDays",
                      "averageHourlyEarnings": "averageHourlyEarnings"
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
        let expectedResponse = RunsGetPayrollResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsGetPayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                RunsGetPayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings",
                "warnings"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("x"),
            reversalReason: Nullable<String>.value("reversalReason"),
            lines: [
                RunsGetPayrollResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsGetPayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        RunsGetPayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsGetPayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        RunsGetPayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsGetPayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsGetPayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                ),
                RunsGetPayrollResponseLinesItem(
                    id: "x",
                    employeeId: "x",
                    contractId: Nullable<String>.value("x"),
                    employeeName: "employeeName",
                    gross: "gross",
                    natura: "natura",
                    additions: [
                        RunsGetPayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        ),
                        RunsGetPayrollResponseLinesItemAdditionsItem(
                            name: "name",
                            amount: "amount",
                            taxable: true
                        )
                    ],
                    deductions: [
                        RunsGetPayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        ),
                        RunsGetPayrollResponseLinesItemDeductionsItem(
                            name: "name",
                            amount: "amount"
                        )
                    ],
                    taxableBase: "taxableBase",
                    taxAllowance: "taxAllowance",
                    incomeTax: "incomeTax",
                    employeeContributions: "employeeContributions",
                    employerContributions: "employerContributions",
                    components: [
                        RunsGetPayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsGetPayrollResponseLinesItemComponentsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    net: "net",
                    daysWorked: Nullable<String>.value("daysWorked"),
                    hoursWorked: Nullable<String>.value("hoursWorked"),
                    registeredDays: Nullable<String>.value("registeredDays"),
                    averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
                )
            ]
        )
        let response = try await client.payroll.runsGet(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsList1() async throws -> Void {
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
                      "countryCode": "countryCode",
                      "payDate": "2026-07-01",
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "taxAllowanceTotal": "taxAllowanceTotal",
                      "incomeTaxTotal": "incomeTaxTotal",
                      "employeeContributionsTotal": "employeeContributionsTotal",
                      "employerContributionsTotal": "employerContributionsTotal",
                      "componentTotals": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount"
                        }
                      ],
                      "netTotal": "netTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "journalTransactionId",
                      "notes": "notes",
                      "warnings": [
                        "warnings"
                      ],
                      "createdAt": "2026-07-01T09:30:00Z",
                      "approvedAt": "2026-07-01T09:30:00Z",
                      "reversedAt": "2026-07-01T09:30:00Z",
                      "reversalJournalTransactionId": "reversalJournalTransactionId",
                      "reversalReason": "reversalReason"
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
        let expectedResponse = RunsListPayrollResponse(
            rows: [
                RunsListPayrollResponseRowsItem(
                    id: "id",
                    year: 1000000,
                    month: 1000000,
                    countryCode: "countryCode",
                    payDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
                    status: .draft,
                    grossTotal: "grossTotal",
                    taxAllowanceTotal: "taxAllowanceTotal",
                    incomeTaxTotal: "incomeTaxTotal",
                    employeeContributionsTotal: "employeeContributionsTotal",
                    employerContributionsTotal: "employerContributionsTotal",
                    componentTotals: [
                        RunsListPayrollResponseRowsItemComponentTotalsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount"
                        )
                    ],
                    netTotal: "netTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("journalTransactionId"),
                    notes: Nullable<String>.value("notes"),
                    warnings: [
                        "warnings"
                    ],
                    createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
                    approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    reversedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
                    reversalJournalTransactionId: Nullable<String>.value("reversalJournalTransactionId"),
                    reversalReason: Nullable<String>.value("reversalReason")
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
        let response = try await client.payroll.runsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsList2() async throws -> Void {
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
                      "countryCode": "countryCode",
                      "payDate": "2023-01-15",
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "taxAllowanceTotal": "taxAllowanceTotal",
                      "incomeTaxTotal": "incomeTaxTotal",
                      "employeeContributionsTotal": "employeeContributionsTotal",
                      "employerContributionsTotal": "employerContributionsTotal",
                      "componentTotals": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "netTotal": "netTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ],
                      "createdAt": "2024-01-15T09:30:00Z",
                      "approvedAt": "2024-01-15T09:30:00Z",
                      "reversedAt": "2024-01-15T09:30:00Z",
                      "reversalJournalTransactionId": "x",
                      "reversalReason": "reversalReason"
                    },
                    {
                      "id": "x",
                      "year": 1000000,
                      "month": 1000000,
                      "countryCode": "countryCode",
                      "payDate": "2023-01-15",
                      "status": "draft",
                      "grossTotal": "grossTotal",
                      "taxAllowanceTotal": "taxAllowanceTotal",
                      "incomeTaxTotal": "incomeTaxTotal",
                      "employeeContributionsTotal": "employeeContributionsTotal",
                      "employerContributionsTotal": "employerContributionsTotal",
                      "componentTotals": [
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        },
                        {
                          "code": "code",
                          "kind": "allowance",
                          "amount": "amount",
                          "rate": "rate",
                          "base": "base"
                        }
                      ],
                      "netTotal": "netTotal",
                      "paidAmount": "paidAmount",
                      "journalTransactionId": "x",
                      "notes": "notes",
                      "warnings": [
                        "warnings",
                        "warnings"
                      ],
                      "createdAt": "2024-01-15T09:30:00Z",
                      "approvedAt": "2024-01-15T09:30:00Z",
                      "reversedAt": "2024-01-15T09:30:00Z",
                      "reversalJournalTransactionId": "x",
                      "reversalReason": "reversalReason"
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
        let expectedResponse = RunsListPayrollResponse(
            rows: [
                RunsListPayrollResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    countryCode: "countryCode",
                    payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    status: .draft,
                    grossTotal: "grossTotal",
                    taxAllowanceTotal: "taxAllowanceTotal",
                    incomeTaxTotal: "incomeTaxTotal",
                    employeeContributionsTotal: "employeeContributionsTotal",
                    employerContributionsTotal: "employerContributionsTotal",
                    componentTotals: [
                        RunsListPayrollResponseRowsItemComponentTotalsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsListPayrollResponseRowsItemComponentTotalsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    netTotal: "netTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    warnings: [
                        "warnings",
                        "warnings"
                    ],
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reversalJournalTransactionId: Nullable<String>.value("x"),
                    reversalReason: Nullable<String>.value("reversalReason")
                ),
                RunsListPayrollResponseRowsItem(
                    id: "x",
                    year: 1000000,
                    month: 1000000,
                    countryCode: "countryCode",
                    payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
                    status: .draft,
                    grossTotal: "grossTotal",
                    taxAllowanceTotal: "taxAllowanceTotal",
                    incomeTaxTotal: "incomeTaxTotal",
                    employeeContributionsTotal: "employeeContributionsTotal",
                    employerContributionsTotal: "employerContributionsTotal",
                    componentTotals: [
                        RunsListPayrollResponseRowsItemComponentTotalsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        ),
                        RunsListPayrollResponseRowsItemComponentTotalsItem(
                            code: "code",
                            kind: .allowance,
                            amount: "amount",
                            rate: Optional("rate"),
                            base: Optional("base")
                        )
                    ],
                    netTotal: "netTotal",
                    paidAmount: "paidAmount",
                    journalTransactionId: Nullable<String>.value("x"),
                    notes: Nullable<String>.value("notes"),
                    warnings: [
                        "warnings",
                        "warnings"
                    ],
                    createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
                    approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
                    reversalJournalTransactionId: Nullable<String>.value("x"),
                    reversalReason: Nullable<String>.value("reversalReason")
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
        let response = try await client.payroll.runsList(
            request: .init(),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func linesAttendance1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "employeeId": "employeeId",
                  "contractId": "contractId",
                  "employeeName": "employeeName",
                  "gross": "gross",
                  "natura": "natura",
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
                  "taxAllowance": "taxAllowance",
                  "incomeTax": "incomeTax",
                  "employeeContributions": "employeeContributions",
                  "employerContributions": "employerContributions",
                  "components": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "net": "net",
                  "daysWorked": "daysWorked",
                  "hoursWorked": "hoursWorked",
                  "registeredDays": "registeredDays",
                  "averageHourlyEarnings": "averageHourlyEarnings"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LinesAttendancePayrollResponse(
            id: "id",
            employeeId: "employeeId",
            contractId: Nullable<String>.value("contractId"),
            employeeName: "employeeName",
            gross: "gross",
            natura: "natura",
            additions: [
                LinesAttendancePayrollResponseAdditionsItem(
                    name: "name",
                    amount: "amount",
                    taxable: true
                )
            ],
            deductions: [
                LinesAttendancePayrollResponseDeductionsItem(
                    name: "name",
                    amount: "amount"
                )
            ],
            taxableBase: "taxableBase",
            taxAllowance: "taxAllowance",
            incomeTax: "incomeTax",
            employeeContributions: "employeeContributions",
            employerContributions: "employerContributions",
            components: [
                LinesAttendancePayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            net: "net",
            daysWorked: Nullable<String>.value("daysWorked"),
            hoursWorked: Nullable<String>.value("hoursWorked"),
            registeredDays: Nullable<String>.value("registeredDays"),
            averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
        )
        let response = try await client.payroll.linesAttendance(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func linesAttendance2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "employeeId": "x",
                  "contractId": "x",
                  "employeeName": "employeeName",
                  "gross": "gross",
                  "natura": "natura",
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
                  "taxAllowance": "taxAllowance",
                  "incomeTax": "incomeTax",
                  "employeeContributions": "employeeContributions",
                  "employerContributions": "employerContributions",
                  "components": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "net": "net",
                  "daysWorked": "daysWorked",
                  "hoursWorked": "hoursWorked",
                  "registeredDays": "registeredDays",
                  "averageHourlyEarnings": "averageHourlyEarnings"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = LinesAttendancePayrollResponse(
            id: "x",
            employeeId: "x",
            contractId: Nullable<String>.value("x"),
            employeeName: "employeeName",
            gross: "gross",
            natura: "natura",
            additions: [
                LinesAttendancePayrollResponseAdditionsItem(
                    name: "name",
                    amount: "amount",
                    taxable: true
                ),
                LinesAttendancePayrollResponseAdditionsItem(
                    name: "name",
                    amount: "amount",
                    taxable: true
                )
            ],
            deductions: [
                LinesAttendancePayrollResponseDeductionsItem(
                    name: "name",
                    amount: "amount"
                ),
                LinesAttendancePayrollResponseDeductionsItem(
                    name: "name",
                    amount: "amount"
                )
            ],
            taxableBase: "taxableBase",
            taxAllowance: "taxAllowance",
            incomeTax: "incomeTax",
            employeeContributions: "employeeContributions",
            employerContributions: "employerContributions",
            components: [
                LinesAttendancePayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                LinesAttendancePayrollResponseComponentsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            net: "net",
            daysWorked: Nullable<String>.value("daysWorked"),
            hoursWorked: Nullable<String>.value("hoursWorked"),
            registeredDays: Nullable<String>.value("registeredDays"),
            averageHourlyEarnings: Nullable<String>.value("averageHourlyEarnings")
        )
        let response = try await client.payroll.linesAttendance(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsApprove1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2026-07-01",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "warnings": [
                    "warnings"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "reversedAt": "2026-07-01T09:30:00Z",
                  "reversalJournalTransactionId": "reversalJournalTransactionId",
                  "reversalReason": "reversalReason"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunsApprovePayrollResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsApprovePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("reversalJournalTransactionId"),
            reversalReason: Nullable<String>.value("reversalReason")
        )
        let response = try await client.payroll.runsApprove(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsApprove2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2023-01-15",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "reversedAt": "2024-01-15T09:30:00Z",
                  "reversalJournalTransactionId": "x",
                  "reversalReason": "reversalReason"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunsApprovePayrollResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsApprovePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                RunsApprovePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings",
                "warnings"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("x"),
            reversalReason: Nullable<String>.value("reversalReason")
        )
        let response = try await client.payroll.runsApprove(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsReverse1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2026-07-01",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "journalTransactionId",
                  "notes": "notes",
                  "warnings": [
                    "warnings"
                  ],
                  "createdAt": "2026-07-01T09:30:00Z",
                  "approvedAt": "2026-07-01T09:30:00Z",
                  "reversedAt": "2026-07-01T09:30:00Z",
                  "reversalJournalTransactionId": "reversalJournalTransactionId",
                  "reversalReason": "reversalReason"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunsReversePayrollResponse(
            id: "id",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2026-07-01")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsReversePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("journalTransactionId"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings"
            ],
            createdAt: try! Date("2026-07-01T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2026-07-01T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("reversalJournalTransactionId"),
            reversalReason: Nullable<String>.value("reversalReason")
        )
        let response = try await client.payroll.runsReverse(
            request: .init(
                id: "id",
                reason: "reason"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsReverse2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "x",
                  "year": 1000000,
                  "month": 1000000,
                  "countryCode": "countryCode",
                  "payDate": "2023-01-15",
                  "status": "draft",
                  "grossTotal": "grossTotal",
                  "taxAllowanceTotal": "taxAllowanceTotal",
                  "incomeTaxTotal": "incomeTaxTotal",
                  "employeeContributionsTotal": "employeeContributionsTotal",
                  "employerContributionsTotal": "employerContributionsTotal",
                  "componentTotals": [
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    },
                    {
                      "code": "code",
                      "kind": "allowance",
                      "amount": "amount",
                      "rate": "rate",
                      "base": "base"
                    }
                  ],
                  "netTotal": "netTotal",
                  "paidAmount": "paidAmount",
                  "journalTransactionId": "x",
                  "notes": "notes",
                  "warnings": [
                    "warnings",
                    "warnings"
                  ],
                  "createdAt": "2024-01-15T09:30:00Z",
                  "approvedAt": "2024-01-15T09:30:00Z",
                  "reversedAt": "2024-01-15T09:30:00Z",
                  "reversalJournalTransactionId": "x",
                  "reversalReason": "reversalReason"
                }
                """#.utf8
            )
        )
        let client = ApiClient(
            baseURL: "https://api.fern.com",
            token: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunsReversePayrollResponse(
            id: "x",
            year: 1000000,
            month: 1000000,
            countryCode: "countryCode",
            payDate: Nullable<CalendarDate>.value(CalendarDate("2023-01-15")!),
            status: .draft,
            grossTotal: "grossTotal",
            taxAllowanceTotal: "taxAllowanceTotal",
            incomeTaxTotal: "incomeTaxTotal",
            employeeContributionsTotal: "employeeContributionsTotal",
            employerContributionsTotal: "employerContributionsTotal",
            componentTotals: [
                RunsReversePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                ),
                RunsReversePayrollResponseComponentTotalsItem(
                    code: "code",
                    kind: .allowance,
                    amount: "amount",
                    rate: Optional("rate"),
                    base: Optional("base")
                )
            ],
            netTotal: "netTotal",
            paidAmount: "paidAmount",
            journalTransactionId: Nullable<String>.value("x"),
            notes: Nullable<String>.value("notes"),
            warnings: [
                "warnings",
                "warnings"
            ],
            createdAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            approvedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversedAt: Nullable<Date>.value(try! Date("2024-01-15T09:30:00Z", strategy: .iso8601)),
            reversalJournalTransactionId: Nullable<String>.value("x"),
            reversalReason: Nullable<String>.value("reversalReason")
        )
        let response = try await client.payroll.runsReverse(
            request: .init(
                id: "x",
                reason: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsCancel1() async throws -> Void {
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
        let expectedResponse = RunsCancelPayrollResponse(
            deleted: true
        )
        let response = try await client.payroll.runsCancel(
            request: .init(id: "id"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func runsCancel2() async throws -> Void {
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
        let expectedResponse = RunsCancelPayrollResponse(
            deleted: true
        )
        let response = try await client.payroll.runsCancel(
            request: .init(id: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsExport1() async throws -> Void {
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
        let expectedResponse = PaymentsExportPayrollResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.payroll.paymentsExport(
            request: .init(
                runId: "runId",
                bankAccountId: "bankAccountId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func paymentsExport2() async throws -> Void {
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
        let expectedResponse = PaymentsExportPayrollResponse(
            messageId: "messageId",
            fileName: "fileName",
            transactionCount: 1000000,
            controlSum: "controlSum",
            xml: "xml"
        )
        let response = try await client.payroll.paymentsExport(
            request: .init(
                runId: "x",
                bankAccountId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}
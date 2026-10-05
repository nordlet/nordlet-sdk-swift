import Foundation

public final class PayrollClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func departmentsCreate(request: Requests.DepartmentsCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> DepartmentsCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: DepartmentsCreatePayrollResponse.self
        )
    }

    public func departmentsList(request: Requests.DepartmentsListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> DepartmentsListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DepartmentsListPayrollResponse.self
        )
    }

    public func schedulesCreate(request: Requests.SchedulesCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> SchedulesCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SchedulesCreatePayrollResponse.self
        )
    }

    public func schedulesList(request: Requests.SchedulesListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> SchedulesListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SchedulesListPayrollResponse.self
        )
    }

    public func calc(request: Requests.CalcPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> CalcPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/calc",
            body: request,
            requestOptions: requestOptions,
            responseType: CalcPayrollResponse.self
        )
    }

    public func runsCreate(request: Requests.RunsCreatePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsCreatePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsCreatePayrollResponse.self
        )
    }

    public func runsGet(request: Requests.RunsGetPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsGetPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsGetPayrollResponse.self
        )
    }

    public func runsList(request: Requests.RunsListPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsListPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsListPayrollResponse.self
        )
    }

    /// The days and hours worked, the days on the register and the average hourly earnings that some countries report per employment. The Czech monthly employer report asks for all four. They can be set while the run is a draft.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func linesAttendance(request: Requests.LinesAttendancePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> LinesAttendancePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/lines/attendance",
            body: request,
            requestOptions: requestOptions,
            responseType: LinesAttendancePayrollResponse.self
        )
    }

    public func runsApprove(request: Requests.RunsApprovePayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsApprovePayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsApprovePayrollResponse.self
        )
    }

    public func runsCancel(request: Requests.RunsCancelPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> RunsCancelPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: RunsCancelPayrollResponse.self
        )
    }

    public func paymentsExport(request: Requests.PaymentsExportPayrollRequest, requestOptions: RequestOptions? = nil) async throws -> PaymentsExportPayrollResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PaymentsExportPayrollResponse.self
        )
    }
}
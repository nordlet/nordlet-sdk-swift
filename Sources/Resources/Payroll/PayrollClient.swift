import Foundation

public final class PayrollClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1PayrollDepartmentsCreate(request: Requests.PostV1PayrollDepartmentsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollDepartmentsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollDepartmentsCreateResponse.self
        )
    }

    public func postV1PayrollDepartmentsList(request: Requests.PostV1PayrollDepartmentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollDepartmentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/departments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollDepartmentsListResponse.self
        )
    }

    public func postV1PayrollSchedulesCreate(request: Requests.PostV1PayrollSchedulesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollSchedulesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollSchedulesCreateResponse.self
        )
    }

    public func postV1PayrollSchedulesList(request: Requests.PostV1PayrollSchedulesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollSchedulesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/schedules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollSchedulesListResponse.self
        )
    }

    public func postV1PayrollCalc(request: Requests.PostV1PayrollCalcRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollCalcResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/calc",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollCalcResponse.self
        )
    }

    public func postV1PayrollRunsCreate(request: Requests.PostV1PayrollRunsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollRunsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollRunsCreateResponse.self
        )
    }

    public func postV1PayrollRunsGet(request: Requests.PostV1PayrollRunsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollRunsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollRunsGetResponse.self
        )
    }

    public func postV1PayrollRunsList(request: Requests.PostV1PayrollRunsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollRunsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollRunsListResponse.self
        )
    }

    public func postV1PayrollRunsApprove(request: Requests.PostV1PayrollRunsApproveRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollRunsApproveResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollRunsApproveResponse.self
        )
    }

    public func postV1PayrollRunsCancel(request: Requests.PostV1PayrollRunsCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollRunsCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/runs/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollRunsCancelResponse.self
        )
    }

    public func postV1PayrollPaymentsExport(request: Requests.PostV1PayrollPaymentsExportRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1PayrollPaymentsExportResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/payroll/payments/export",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1PayrollPaymentsExportResponse.self
        )
    }
}
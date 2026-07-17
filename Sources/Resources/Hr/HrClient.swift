import Foundation

public final class HrClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1HrPositionsCreate(request: Requests.PostV1HrPositionsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrPositionsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrPositionsCreateResponse.self
        )
    }

    public func postV1HrPositionsUpdate(request: Requests.PostV1HrPositionsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrPositionsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrPositionsUpdateResponse.self
        )
    }

    public func postV1HrPositionsList(request: Requests.PostV1HrPositionsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrPositionsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/positions/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrPositionsListResponse.self
        )
    }

    public func postV1HrEmployeesCreate(request: Requests.PostV1HrEmployeesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesCreateResponse.self
        )
    }

    public func postV1HrEmployeesUpdate(request: Requests.PostV1HrEmployeesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesUpdateResponse.self
        )
    }

    public func postV1HrEmployeesGet(request: Requests.PostV1HrEmployeesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesGetResponse.self
        )
    }

    public func postV1HrEmployeesList(request: Requests.PostV1HrEmployeesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesListResponse.self
        )
    }

    public func postV1HrContractsCreate(request: Requests.PostV1HrContractsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrContractsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrContractsCreateResponse.self
        )
    }

    public func postV1HrContractsEnd(request: Requests.PostV1HrContractsEndRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrContractsEndResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/end",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrContractsEndResponse.self
        )
    }

    public func postV1HrContractsList(request: Requests.PostV1HrContractsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrContractsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/contracts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrContractsListResponse.self
        )
    }

    public func postV1HrLeaveBalancesSet(request: Requests.PostV1HrLeaveBalancesSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrLeaveBalancesSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrLeaveBalancesSetResponse.self
        )
    }

    public func postV1HrLeaveBalancesList(request: Requests.PostV1HrLeaveBalancesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrLeaveBalancesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/leave-balances/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrLeaveBalancesListResponse.self
        )
    }

    public func postV1HrIncapacityCertificatesCreate(request: Requests.PostV1HrIncapacityCertificatesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrIncapacityCertificatesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrIncapacityCertificatesCreateResponse.self
        )
    }

    public func postV1HrIncapacityCertificatesList(request: Requests.PostV1HrIncapacityCertificatesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrIncapacityCertificatesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/incapacity-certificates/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrIncapacityCertificatesListResponse.self
        )
    }

    public func postV1HrEmployeesRecordsCreate(request: Requests.PostV1HrEmployeesRecordsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesRecordsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesRecordsCreateResponse.self
        )
    }

    public func postV1HrEmployeesRecordsUpdate(request: Requests.PostV1HrEmployeesRecordsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesRecordsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesRecordsUpdateResponse.self
        )
    }

    public func postV1HrEmployeesRecordsDelete(request: Requests.PostV1HrEmployeesRecordsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesRecordsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesRecordsDeleteResponse.self
        )
    }

    public func postV1HrEmployeesRecordsList(request: Requests.PostV1HrEmployeesRecordsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesRecordsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/records/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesRecordsListResponse.self
        )
    }

    public func postV1HrEmployeesAttachmentsList(request: Requests.PostV1HrEmployeesAttachmentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrEmployeesAttachmentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/employees/attachments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrEmployeesAttachmentsListResponse.self
        )
    }

    public func postV1HrTimesheetsGenerate(request: Requests.PostV1HrTimesheetsGenerateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrTimesheetsGenerateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/generate",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrTimesheetsGenerateResponse.self
        )
    }

    public func postV1HrTimesheetsUpsert(request: Requests.PostV1HrTimesheetsUpsertRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrTimesheetsUpsertResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrTimesheetsUpsertResponse.self
        )
    }

    public func postV1HrTimesheetsGet(request: Requests.PostV1HrTimesheetsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrTimesheetsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrTimesheetsGetResponse.self
        )
    }

    public func postV1HrTimesheetsList(request: Requests.PostV1HrTimesheetsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrTimesheetsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrTimesheetsListResponse.self
        )
    }

    public func postV1HrTimesheetsDelete(request: Requests.PostV1HrTimesheetsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1HrTimesheetsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/hr/timesheets/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1HrTimesheetsDeleteResponse.self
        )
    }
}
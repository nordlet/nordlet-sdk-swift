import Foundation

public final class ProductionClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1ProductionWorkCentersCreate(request: Requests.PostV1ProductionWorkCentersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionWorkCentersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionWorkCentersCreateResponse.self
        )
    }

    public func postV1ProductionWorkCentersUpdate(request: Requests.PostV1ProductionWorkCentersUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionWorkCentersUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionWorkCentersUpdateResponse.self
        )
    }

    public func postV1ProductionWorkCentersList(request: Requests.PostV1ProductionWorkCentersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionWorkCentersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/work-centers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionWorkCentersListResponse.self
        )
    }

    public func postV1ProductionRoutingsCreate(request: Requests.PostV1ProductionRoutingsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionRoutingsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionRoutingsCreateResponse.self
        )
    }

    public func postV1ProductionRoutingsGet(request: Requests.PostV1ProductionRoutingsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionRoutingsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionRoutingsGetResponse.self
        )
    }

    public func postV1ProductionRoutingsList(request: Requests.PostV1ProductionRoutingsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionRoutingsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/routings/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionRoutingsListResponse.self
        )
    }

    public func postV1ProductionMaintenanceCreate(request: Requests.PostV1ProductionMaintenanceCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionMaintenanceCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionMaintenanceCreateResponse.self
        )
    }

    public func postV1ProductionMaintenanceComplete(request: Requests.PostV1ProductionMaintenanceCompleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionMaintenanceCompleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionMaintenanceCompleteResponse.self
        )
    }

    public func postV1ProductionMaintenanceCancel(request: Requests.PostV1ProductionMaintenanceCancelRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionMaintenanceCancelResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionMaintenanceCancelResponse.self
        )
    }

    public func postV1ProductionMaintenanceList(request: Requests.PostV1ProductionMaintenanceListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionMaintenanceListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/maintenance/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionMaintenanceListResponse.self
        )
    }

    public func postV1ProductionBomsCreate(request: Requests.PostV1ProductionBomsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsCreateResponse.self
        )
    }

    public func postV1ProductionBomsGet(request: Requests.PostV1ProductionBomsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsGetResponse.self
        )
    }

    public func postV1ProductionBomsList(request: Requests.PostV1ProductionBomsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionBomsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/boms/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionBomsListResponse.self
        )
    }

    public func postV1ProductionOrdersCreate(request: Requests.PostV1ProductionOrdersCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersCreateResponse.self
        )
    }

    public func postV1ProductionOrdersRecordOperation(request: Requests.PostV1ProductionOrdersRecordOperationRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersRecordOperationResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/record-operation",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersRecordOperationResponse.self
        )
    }

    public func postV1ProductionQualityChecksAdd(request: Requests.PostV1ProductionQualityChecksAddRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionQualityChecksAddResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/add",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionQualityChecksAddResponse.self
        )
    }

    public func postV1ProductionQualityChecksRecord(request: Requests.PostV1ProductionQualityChecksRecordRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionQualityChecksRecordResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/record",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionQualityChecksRecordResponse.self
        )
    }

    public func postV1ProductionQualityChecksList(request: Requests.PostV1ProductionQualityChecksListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionQualityChecksListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/quality-checks/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionQualityChecksListResponse.self
        )
    }

    public func postV1ProductionOrdersComplete(request: Requests.PostV1ProductionOrdersCompleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersCompleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/complete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersCompleteResponse.self
        )
    }

    public func postV1ProductionOrdersGet(request: Requests.PostV1ProductionOrdersGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersGetResponse.self
        )
    }

    public func postV1ProductionOrdersList(request: Requests.PostV1ProductionOrdersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1ProductionOrdersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/production/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1ProductionOrdersListResponse.self
        )
    }
}
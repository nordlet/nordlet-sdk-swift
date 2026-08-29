import Foundation

public final class FleetClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1FleetVehiclesCreate(request: Requests.PostV1FleetVehiclesCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetVehiclesCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetVehiclesCreateResponse.self
        )
    }

    public func postV1FleetVehiclesUpdate(request: Requests.PostV1FleetVehiclesUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetVehiclesUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetVehiclesUpdateResponse.self
        )
    }

    public func postV1FleetVehiclesGet(request: Requests.PostV1FleetVehiclesGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetVehiclesGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetVehiclesGetResponse.self
        )
    }

    public func postV1FleetVehiclesList(request: Requests.PostV1FleetVehiclesListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetVehiclesListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetVehiclesListResponse.self
        )
    }

    public func postV1FleetAssignmentsCreate(request: Requests.PostV1FleetAssignmentsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetAssignmentsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetAssignmentsCreateResponse.self
        )
    }

    public func postV1FleetAssignmentsEnd(request: Requests.PostV1FleetAssignmentsEndRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetAssignmentsEndResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/end",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetAssignmentsEndResponse.self
        )
    }

    public func postV1FleetAssignmentsList(request: Requests.PostV1FleetAssignmentsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetAssignmentsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetAssignmentsListResponse.self
        )
    }

    public func postV1FleetNaturaPreview(request: Requests.PostV1FleetNaturaPreviewRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1FleetNaturaPreviewResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/natura/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1FleetNaturaPreviewResponse.self
        )
    }
}
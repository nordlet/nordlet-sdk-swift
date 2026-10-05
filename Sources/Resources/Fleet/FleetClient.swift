import Foundation

public final class FleetClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func vehiclesCreate(request: Requests.VehiclesCreateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesCreateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/create",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesCreateFleetResponse.self
        )
    }

    public func vehiclesUpdate(request: Requests.VehiclesUpdateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesUpdateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/update",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesUpdateFleetResponse.self
        )
    }

    public func vehiclesGet(request: Requests.VehiclesGetFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesGetFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/get",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesGetFleetResponse.self
        )
    }

    public func vehiclesList(request: Requests.VehiclesListFleetRequest, requestOptions: RequestOptions? = nil) async throws -> VehiclesListFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/vehicles/list",
            body: request,
            requestOptions: requestOptions,
            responseType: VehiclesListFleetResponse.self
        )
    }

    public func assignmentsCreate(request: Requests.AssignmentsCreateFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsCreateFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/create",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsCreateFleetResponse.self
        )
    }

    public func assignmentsEnd(request: Requests.AssignmentsEndFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsEndFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/end",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsEndFleetResponse.self
        )
    }

    public func assignmentsList(request: Requests.AssignmentsListFleetRequest, requestOptions: RequestOptions? = nil) async throws -> AssignmentsListFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/assignments/list",
            body: request,
            requestOptions: requestOptions,
            responseType: AssignmentsListFleetResponse.self
        )
    }

    public func naturaPreview(request: Requests.NaturaPreviewFleetRequest, requestOptions: RequestOptions? = nil) async throws -> NaturaPreviewFleetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/fleet/natura/preview",
            body: request,
            requestOptions: requestOptions,
            responseType: NaturaPreviewFleetResponse.self
        )
    }
}
import Foundation

public final class OperationTypesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func create(request: Requests.CreateOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> CreateOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateOperationTypesResponse.self
        )
    }

    public func update(request: Requests.UpdateOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateOperationTypesResponse.self
        )
    }

    public func get(request: Requests.GetOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> GetOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetOperationTypesResponse.self
        )
    }

    public func delete(request: Requests.DeleteOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteOperationTypesResponse.self
        )
    }

    public func list(request: Requests.ListOperationTypesRequest, requestOptions: RequestOptions? = nil) async throws -> ListOperationTypesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/operation-types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListOperationTypesResponse.self
        )
    }
}
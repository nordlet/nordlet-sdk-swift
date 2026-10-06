import Foundation

public final class LeadsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func create(request: Requests.CreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateLeadsResponse.self
        )
    }

    public func get(request: Requests.GetLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> GetLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetLeadsResponse.self
        )
    }

    public func update(request: Requests.UpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateLeadsResponse.self
        )
    }

    public func delete(request: Requests.DeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteLeadsResponse.self
        )
    }

    public func list(request: Requests.ListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> ListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListLeadsResponse.self
        )
    }

    public func notesCreate(request: Requests.NotesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/create",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesCreateLeadsResponse.self
        )
    }

    public func notesDelete(request: Requests.NotesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesDeleteLeadsResponse.self
        )
    }

    public func notesList(request: Requests.NotesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/list",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesListLeadsResponse.self
        )
    }

    public func filesList(request: Requests.FilesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> FilesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FilesListLeadsResponse.self
        )
    }

    public func sourcesCreate(request: Requests.SourcesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesCreateLeadsResponse.self
        )
    }

    public func sourcesUpdate(request: Requests.SourcesUpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesUpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesUpdateLeadsResponse.self
        )
    }

    public func sourcesDelete(request: Requests.SourcesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesDeleteLeadsResponse.self
        )
    }

    public func sourcesList(request: Requests.SourcesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesListLeadsResponse.self
        )
    }

    public func sourcesOptions(request: Requests.SourcesOptionsLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesOptionsLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/options",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesOptionsLeadsResponse.self
        )
    }

    public func typesCreate(request: Requests.TypesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesCreateLeadsResponse.self
        )
    }

    public func typesUpdate(request: Requests.TypesUpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesUpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesUpdateLeadsResponse.self
        )
    }

    public func typesDelete(request: Requests.TypesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesDeleteLeadsResponse.self
        )
    }

    public func typesList(request: Requests.TypesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesListLeadsResponse.self
        )
    }

    public func typesOptions(request: Requests.TypesOptionsLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesOptionsLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/options",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesOptionsLeadsResponse.self
        )
    }

    /// Create a customer partner from the lead, move the lead files to the partner, copy the lead notes into the partner notes and mark the lead as converted.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func convert(request: Requests.ConvertLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> ConvertLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/convert",
            body: request,
            requestOptions: requestOptions,
            responseType: ConvertLeadsResponse.self
        )
    }
}
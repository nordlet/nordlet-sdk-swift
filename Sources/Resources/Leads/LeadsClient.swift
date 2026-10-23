import Foundation

public final class LeadsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Creates a lead in status `new`, `contacted`, `qualified` or `lost`. `assignedUserId` must be a member of the company and `sourceId` and `typeId` must exist in it; `countryCode` and `currency` are stored in upper case; `documents` attach uploaded files not yet linked to a record, and `notes` become the lead's first notes with the caller as author. Emits `lead.created`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(request: Requests.CreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> CreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/create",
            body: request,
            requestOptions: requestOptions,
            responseType: CreateLeadsResponse.self
        )
    }

    /// Returns one lead with its source and type names.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(request: Requests.GetLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> GetLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/get",
            body: request,
            requestOptions: requestOptions,
            responseType: GetLeadsResponse.self
        )
    }

    /// Changes the given fields of a lead; the clearable fields accept null, `documents` attach more uploaded files, and `countryCode` and `currency` are stored in upper case. A lead that is already converted cannot change `status` (409).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func update(request: Requests.UpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> UpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UpdateLeadsResponse.self
        )
    }

    /// Deletes a lead with its notes and detaches its files, which stay in the company's files without a record.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func delete(request: Requests.DeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> DeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: DeleteLeadsResponse.self
        )
    }

    /// Lists leads with their source and type names; filterable by `name`, `contactName`, `email`, `phone`, `status`, `sourceId`, `typeId`, `countryCode`, `assignedUserId`, `partnerId`, `estimatedValue` and `createdAt`, sortable by `name`, `status`, `estimatedValue`, `createdAt` and `updatedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(request: Requests.ListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> ListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ListLeadsResponse.self
        )
    }

    /// Adds a note to a lead with the caller as author and refreshes the lead's `updatedAt`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func notesCreate(request: Requests.NotesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/create",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesCreateLeadsResponse.self
        )
    }

    /// Deletes a lead note.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func notesDelete(request: Requests.NotesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesDeleteLeadsResponse.self
        )
    }

    /// Lists the notes of a lead, newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func notesList(request: Requests.NotesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> NotesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/notes/list",
            body: request,
            requestOptions: requestOptions,
            responseType: NotesListLeadsResponse.self
        )
    }

    /// Lists the files attached to a lead, newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func filesList(request: Requests.FilesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> FilesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: FilesListLeadsResponse.self
        )
    }

    /// Creates a lead source; a `name` already used by a source of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sourcesCreate(request: Requests.SourcesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/create",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesCreateLeadsResponse.self
        )
    }

    /// Changes the name or `isActive` flag of a lead source; a name already used by another source of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sourcesUpdate(request: Requests.SourcesUpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesUpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesUpdateLeadsResponse.self
        )
    }

    /// Deletes a lead source; one still referenced by a lead is refused with 409 and should be deactivated with `leads/sources/update` instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sourcesDelete(request: Requests.SourcesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesDeleteLeadsResponse.self
        )
    }

    /// Lists all lead sources of the company, active and inactive, ordered by name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sourcesList(request: Requests.SourcesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/list",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesListLeadsResponse.self
        )
    }

    /// Lists the id and name of the active lead sources, ordered by name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func sourcesOptions(request: Requests.SourcesOptionsLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> SourcesOptionsLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/sources/options",
            body: request,
            requestOptions: requestOptions,
            responseType: SourcesOptionsLeadsResponse.self
        )
    }

    /// Creates a lead type; a `name` already used by a type of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesCreate(request: Requests.TypesCreateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesCreateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/create",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesCreateLeadsResponse.self
        )
    }

    /// Changes the name or `isActive` flag of a lead type; a name already used by another type of the company is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesUpdate(request: Requests.TypesUpdateLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesUpdateLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/update",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesUpdateLeadsResponse.self
        )
    }

    /// Deletes a lead type; one still referenced by a lead is refused with 409 and should be deactivated with `leads/types/update` instead.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesDelete(request: Requests.TypesDeleteLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesDeleteLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesDeleteLeadsResponse.self
        )
    }

    /// Lists all lead types of the company, active and inactive, ordered by name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func typesList(request: Requests.TypesListLeadsRequest, requestOptions: RequestOptions? = nil) async throws -> TypesListLeadsResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/leads/types/list",
            body: request,
            requestOptions: requestOptions,
            responseType: TypesListLeadsResponse.self
        )
    }

    /// Lists the id and name of the active lead types, ordered by name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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
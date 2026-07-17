import Foundation

public final class CatalogClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func postV1CatalogItemsCreate(request: Requests.PostV1CatalogItemsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsCreateResponse.self
        )
    }

    public func postV1CatalogItemsGet(request: Requests.PostV1CatalogItemsGetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsGetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/get",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsGetResponse.self
        )
    }

    public func postV1CatalogItemsUpdate(request: Requests.PostV1CatalogItemsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsUpdateResponse.self
        )
    }

    public func postV1CatalogItemsDelete(request: Requests.PostV1CatalogItemsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsDeleteResponse.self
        )
    }

    public func postV1CatalogItemsList(request: Requests.PostV1CatalogItemsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsListResponse.self
        )
    }

    public func postV1CatalogItemGroupsCreate(request: Requests.PostV1CatalogItemGroupsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemGroupsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemGroupsCreateResponse.self
        )
    }

    public func postV1CatalogItemGroupsUpdate(request: Requests.PostV1CatalogItemGroupsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemGroupsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemGroupsUpdateResponse.self
        )
    }

    public func postV1CatalogItemGroupsDelete(request: Requests.PostV1CatalogItemGroupsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemGroupsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemGroupsDeleteResponse.self
        )
    }

    public func postV1CatalogItemGroupsList(request: Requests.PostV1CatalogItemGroupsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemGroupsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemGroupsListResponse.self
        )
    }

    public func postV1CatalogItemsSuppliersUpsert(request: Requests.PostV1CatalogItemsSuppliersUpsertRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsSuppliersUpsertResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsSuppliersUpsertResponse.self
        )
    }

    public func postV1CatalogItemsSuppliersList(request: Requests.PostV1CatalogItemsSuppliersListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsSuppliersListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsSuppliersListResponse.self
        )
    }

    public func postV1CatalogItemsSuppliersDelete(request: Requests.PostV1CatalogItemsSuppliersDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogItemsSuppliersDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogItemsSuppliersDeleteResponse.self
        )
    }

    public func postV1CatalogPriceListsCreate(request: Requests.PostV1CatalogPriceListsCreateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsCreateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsCreateResponse.self
        )
    }

    public func postV1CatalogPriceListsUpdate(request: Requests.PostV1CatalogPriceListsUpdateRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsUpdateResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsUpdateResponse.self
        )
    }

    public func postV1CatalogPriceListsList(request: Requests.PostV1CatalogPriceListsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsListResponse.self
        )
    }

    public func postV1CatalogPriceListsItemsSet(request: Requests.PostV1CatalogPriceListsItemsSetRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsItemsSetResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsItemsSetResponse.self
        )
    }

    public func postV1CatalogPriceListsItemsList(request: Requests.PostV1CatalogPriceListsItemsListRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsItemsListResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsItemsListResponse.self
        )
    }

    public func postV1CatalogPriceListsItemsDelete(request: Requests.PostV1CatalogPriceListsItemsDeleteRequest, requestOptions: RequestOptions? = nil) async throws -> PostV1CatalogPriceListsItemsDeleteResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PostV1CatalogPriceListsItemsDeleteResponse.self
        )
    }
}
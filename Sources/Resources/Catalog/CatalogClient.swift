import Foundation

public final class CatalogClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    public func itemsCreate(request: Requests.ItemsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsCreateCatalogResponse.self
        )
    }

    public func itemsGet(request: Requests.ItemsGetCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsGetCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsGetCatalogResponse.self
        )
    }

    public func itemsUpdate(request: Requests.ItemsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsUpdateCatalogResponse.self
        )
    }

    public func itemsDelete(request: Requests.ItemsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsDeleteCatalogResponse.self
        )
    }

    public func itemsList(request: Requests.ItemsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsListCatalogResponse.self
        )
    }

    public func itemsFilesList(request: Requests.ItemsFilesListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsFilesListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsFilesListCatalogResponse.self
        )
    }

    public func itemsKindsCreate(request: Requests.ItemsKindsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsCreateCatalogResponse.self
        )
    }

    public func itemsKindsUpdate(request: Requests.ItemsKindsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsUpdateCatalogResponse.self
        )
    }

    public func itemsKindsDelete(request: Requests.ItemsKindsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsDeleteCatalogResponse.self
        )
    }

    public func itemsKindsList(request: Requests.ItemsKindsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsListCatalogResponse.self
        )
    }

    public func unitsCreate(request: Requests.UnitsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/create",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsCreateCatalogResponse.self
        )
    }

    public func unitsUpdate(request: Requests.UnitsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsUpdateCatalogResponse.self
        )
    }

    public func unitsDelete(request: Requests.UnitsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsDeleteCatalogResponse.self
        )
    }

    public func unitsList(request: Requests.UnitsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsListCatalogResponse.self
        )
    }

    public func unitsOptions(request: Requests.UnitsOptionsCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsOptionsCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/options",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsOptionsCatalogResponse.self
        )
    }

    public func itemGroupsCreate(request: Requests.ItemGroupsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsCreateCatalogResponse.self
        )
    }

    public func itemGroupsUpdate(request: Requests.ItemGroupsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsUpdateCatalogResponse.self
        )
    }

    public func itemGroupsDelete(request: Requests.ItemGroupsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsDeleteCatalogResponse.self
        )
    }

    public func itemGroupsList(request: Requests.ItemGroupsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsListCatalogResponse.self
        )
    }

    public func itemsSuppliersUpsert(request: Requests.ItemsSuppliersUpsertCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersUpsertCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersUpsertCatalogResponse.self
        )
    }

    public func itemsSuppliersList(request: Requests.ItemsSuppliersListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersListCatalogResponse.self
        )
    }

    public func itemsSuppliersDelete(request: Requests.ItemsSuppliersDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersDeleteCatalogResponse.self
        )
    }

    public func priceListsCreate(request: Requests.PriceListsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsCreateCatalogResponse.self
        )
    }

    public func priceListsUpdate(request: Requests.PriceListsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsUpdateCatalogResponse.self
        )
    }

    public func priceListsList(request: Requests.PriceListsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsListCatalogResponse.self
        )
    }

    public func priceListsItemsSet(request: Requests.PriceListsItemsSetCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsItemsSetCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsItemsSetCatalogResponse.self
        )
    }

    public func priceListsItemsList(request: Requests.PriceListsItemsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsItemsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsItemsListCatalogResponse.self
        )
    }

    public func priceListsItemsDelete(request: Requests.PriceListsItemsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsItemsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsItemsDeleteCatalogResponse.self
        )
    }
}
import Foundation

public final class CatalogClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a catalog item: a product, a service or a set of other items. `unit` must be `vnt`, a global measurement unit or one of the company's own units (`catalog/units/options`), the sale, purchase and expense account codes must be postable accounts of the chart, and `priceFrom`/`priceTo` and `validFrom`/`validTo` must be in order; otherwise 422. A `set` needs at least one component and none of them may be a set; `components` on any other type is refused with 422. 409 when an active item already carries the `code`. `documentRef` is the storage key of a file uploaded with `files/upload`, which is attached to the item. Emits `item.created`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsCreate(request: Requests.ItemsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsCreateCatalogResponse.self
        )
    }

    /// Return one item; a set comes with its components.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsGet(request: Requests.ItemsGetCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsGetCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsGetCatalogResponse.self
        )
    }

    /// Change the fields of an item; the fields that are nullable in the request can be set to null to clear them. The checks of `catalog/items/create` apply. `components` replaces the whole component list and is accepted only when the item is or becomes a set (422); turning an item into a set needs components and is refused with 409 while the item is itself a component of another set. Turning a set into another type removes its components. 409 when an active item already carries the new `code`. Emits `item.updated`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsUpdate(request: Requests.ItemsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsUpdateCatalogResponse.self
        )
    }

    /// Soft-delete an item. Refused with 409 while the item is a component of an active set. Emits `item.deleted`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsDelete(request: Requests.ItemsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsDeleteCatalogResponse.self
        )
    }

    /// List the active items. Filterable: name, code, barcode, type, vatClassifierCode, groupId, kindId, externalId, manufacturer, department. Sortable: name, code, createdAt, updatedAt, salePriceExclVat; default name ascending. Rows carry no components; `catalog/items/get` returns them.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsList(request: Requests.ItemsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsListCatalogResponse.self
        )
    }

    /// List the files attached to an item, newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsFilesList(request: Requests.ItemsFilesListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsFilesListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/files/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsFilesListCatalogResponse.self
        )
    }

    /// Create an item kind: a code, a name, the SAF-T item type, whether quantities are accounted for, and a sort order. 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsKindsCreate(request: Requests.ItemsKindsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsCreateCatalogResponse.self
        )
    }

    /// Change an item kind. 409 when the new code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsKindsUpdate(request: Requests.ItemsKindsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsUpdateCatalogResponse.self
        )
    }

    /// Delete an item kind. Refused with 409 while an active item uses it; soft-deleted items that still carry it are detached.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsKindsDelete(request: Requests.ItemsKindsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsDeleteCatalogResponse.self
        )
    }

    /// List the company's item kinds in sort order, then by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsKindsList(request: Requests.ItemsKindsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsKindsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/kinds/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsKindsListCatalogResponse.self
        )
    }

    /// Create a unit of measure of the company's own, in addition to the global measurement units (`reference/units/list`). 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsCreate(request: Requests.UnitsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/create",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsCreateCatalogResponse.self
        )
    }

    /// Change the code, name or active flag of a company unit. 409 when the new code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsUpdate(request: Requests.UnitsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/update",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsUpdateCatalogResponse.self
        )
    }

    /// Delete a company unit of measure.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsDelete(request: Requests.UnitsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsDeleteCatalogResponse.self
        )
    }

    /// List the company's own units of measure, ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsList(request: Requests.UnitsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/list",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsListCatalogResponse.self
        )
    }

    /// Return the unit codes an item can use: the company's active own units first, then the global measurement units, named in the requested `locale` (Lithuanian for `lt`, English otherwise). A company unit hides a global unit with the same code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func unitsOptions(request: Requests.UnitsOptionsCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> UnitsOptionsCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/units/options",
            body: request,
            requestOptions: requestOptions,
            responseType: UnitsOptionsCatalogResponse.self
        )
    }

    /// Create an item group, optionally under `parentId`. 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemGroupsCreate(request: Requests.ItemGroupsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsCreateCatalogResponse.self
        )
    }

    /// Change the code, name or parent of an item group; `parentId` null moves it to the top level. 422 when the new parent is the group itself or one of its descendants. 409 when the new code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemGroupsUpdate(request: Requests.ItemGroupsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsUpdateCatalogResponse.self
        )
    }

    /// Delete an item group. Refused with 409 while it has child groups or active items assigned.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemGroupsDelete(request: Requests.ItemGroupsDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsDeleteCatalogResponse.self
        )
    }

    /// List the company's item groups, ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemGroupsList(request: Requests.ItemGroupsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemGroupsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/item-groups/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemGroupsListCatalogResponse.self
        )
    }

    /// Create or replace the supplier record of an item for a partner (one per item and partner): supplier code, purchase price excluding VAT, currency (EUR when omitted) and notes. Fields omitted from the request are cleared on an existing record.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsSuppliersUpsert(request: Requests.ItemsSuppliersUpsertCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersUpsertCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/upsert",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersUpsertCatalogResponse.self
        )
    }

    /// List the supplier records, optionally for one `itemId` and/or `partnerId`, ordered by partner name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsSuppliersList(request: Requests.ItemsSuppliersListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersListCatalogResponse.self
        )
    }

    /// Delete the supplier record of an item.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func itemsSuppliersDelete(request: Requests.ItemsSuppliersDeleteCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> ItemsSuppliersDeleteCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/items/suppliers/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ItemsSuppliersDeleteCatalogResponse.self
        )
    }

    /// Create a price list (currency EUR and active when omitted). 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func priceListsCreate(request: Requests.PriceListsCreateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsCreateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/create",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsCreateCatalogResponse.self
        )
    }

    /// Change a price list. 409 when the new code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func priceListsUpdate(request: Requests.PriceListsUpdateCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsUpdateCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/update",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsUpdateCatalogResponse.self
        )
    }

    /// List the company's price lists, ordered by code.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func priceListsList(request: Requests.PriceListsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsListCatalogResponse.self
        )
    }

    /// Set the unit price excluding VAT of up to 500 items on a price list; a price already on the list is replaced and the other items on the list are kept. 422 when an item appears twice in the request. Emits `price_list.updated` with the item ids.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func priceListsItemsSet(request: Requests.PriceListsItemsSetCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsItemsSetCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/set",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsItemsSetCatalogResponse.self
        )
    }

    /// List the prices of a price list with the item name and code, ordered by item name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func priceListsItemsList(request: Requests.PriceListsItemsListCatalogRequest, requestOptions: RequestOptions? = nil) async throws -> PriceListsItemsListCatalogResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/catalog/price-lists/items/list",
            body: request,
            requestOptions: requestOptions,
            responseType: PriceListsItemsListCatalogResponse.self
        )
    }

    /// Remove one item from a price list.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
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
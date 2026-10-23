import Foundation

public final class InventoryClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Return the company's negative stock policy.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsGet(request: Requests.SettingsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/get",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsGetInventoryResponse.self
        )
    }

    /// Set the negative stock policy. With `reject` a consumption larger than the stock on hand of the item in the warehouse is refused with 422. With `allow` the missing quantity is written as a shortage priced at the unit cost of the last receipt in that warehouse (the item's purchase price when there is none); the next receipt of the item there settles the shortage and posts any cost difference between `inventory.cogs` and `inventory.stock`. A consumption from a named lot is refused with 422 under both policies.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func settingsUpdate(request: Requests.SettingsUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> SettingsUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/settings/update",
            body: request,
            requestOptions: requestOptions,
            responseType: SettingsUpdateInventoryResponse.self
        )
    }

    /// Create a warehouse. 409 when the code already exists.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func warehousesCreate(request: Requests.WarehousesCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/create",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesCreateInventoryResponse.self
        )
    }

    /// List the warehouses. Filterable and sortable: code, name.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func warehousesList(request: Requests.WarehousesListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/list",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesListInventoryResponse.self
        )
    }

    /// Change the name or the country code of a warehouse.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func warehousesUpdate(request: Requests.WarehousesUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> WarehousesUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/warehouses/update",
            body: request,
            requestOptions: requestOptions,
            responseType: WarehousesUpdateInventoryResponse.self
        )
    }

    /// Record a manual receipt of an item into a warehouse at `unitCost` (document type `manual_receipt`); the quantity must be positive (422). A lot- or serial-tracked item needs `lotNumber` (422); an unknown lot is created, and `expiryDate` is stored on a lot that has none. A serial-tracked item is received one unit at a time (422), and 409 when that serial number is already in stock. Open shortages of the item in the warehouse (negative stock policy `allow`) are settled from the receipt. Emits `stock.changed`. Receipts against a purchase order go through `purchases/receipts/create`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockReceive(request: Requests.StockReceiveInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockReceiveInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/receive",
            body: request,
            requestOptions: requestOptions,
            responseType: StockReceiveInventoryResponse.self
        )
    }

    /// Consume a quantity of an item from a warehouse, oldest layers first (from one lot when `lotNumber` is given), and post a journal entry: debit the expense account (`expenseAccountCode`, default the chart's inventory expense account), credit the stock account each consumed layer was received on (the chart's inventory account for layers without one), or `inventoryAccountCode` for the whole cost when given. 409 when the accounting period of `date` is locked; 422 when the stock is insufficient under the `reject` policy or in the named lot. Emits `stock.changed` and, when the consumption takes the available quantity from above a reorder rule's minimum to at or below it, `stock.reorder_needed`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockWriteOff(request: Requests.StockWriteOffInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockWriteOffInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/write-off",
            body: request,
            requestOptions: requestOptions,
            responseType: StockWriteOffInventoryResponse.self
        )
    }

    /// Move a quantity of an item from one warehouse to another: the source layers are consumed oldest first (from one lot when `lotNumber` is given) and received in the target with the same quantities, costs, lots and stock accounts (document type `warehouse_transfer`). 422 when both warehouses are the same or the source stock is insufficient under the `reject` policy. `inMovementId` is the first receipt when the consumption spans several lots or stock accounts. Emits `stock.changed` for both warehouses and `stock.reorder_needed` as `inventory/stock/write-off` does.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockTransfer(request: Requests.StockTransferInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockTransferInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/transfer",
            body: request,
            requestOptions: requestOptions,
            responseType: StockTransferInventoryResponse.self
        )
    }

    /// Post a stock count for a warehouse. Each line names an item by `itemId` or `barcode` with its `countedQty`; the difference to the quantity on hand in the warehouse (all lots together) is written off oldest layers first or received as a surplus at `unitCost` (the item's purchase price when omitted; 422 when neither is set), with document type `stock_take`, and a surplus of a lot- or serial-tracked item needs `lotNumber` (422). The shortage cost less the surplus cost is posted in one journal entry between the expense account (`expenseAccountCode`, default the chart's inventory expense account) and the stock accounts (`inventoryAccountCode` for everything when given, else the accounts of the consumed layers and the chart's inventory account for the surpluses); nothing is posted and `journalTransactionId` is null when the net is zero. 409 when the accounting period of `date` is locked. Emits `stock.changed` per adjusted item.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockTake(request: Requests.StockTakeInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockTakeInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/take",
            body: request,
            requestOptions: requestOptions,
            responseType: StockTakeInventoryResponse.self
        )
    }

    /// Return the quantity and value on hand per item and warehouse, summed from the stock movements, optionally for one `warehouseId` and/or `itemId`. Rows with a zero quantity are left out.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockLevels(request: Requests.StockLevelsInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockLevelsInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/levels",
            body: request,
            requestOptions: requestOptions,
            responseType: StockLevelsInventoryResponse.self
        )
    }

    /// List the stock movements. Filterable: itemId, warehouseId, lotId, direction, documentType, date, quantity, totalCost. Sortable: date, createdAt, quantity, totalCost; default newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stockMovementsList(request: Requests.StockMovementsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> StockMovementsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/stock/movements/list",
            body: request,
            requestOptions: requestOptions,
            responseType: StockMovementsListInventoryResponse.self
        )
    }

    /// List the lots with their quantity on hand (the remaining quantity of the lot's incoming movements). Filterable: itemId, lotNumber, expiryDate. Sortable: lotNumber, expiryDate, createdAt; default newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lotsList(request: Requests.LotsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsListInventoryResponse.self
        )
    }

    /// Return a lot with its quantity on hand and its movements in date order.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lotsGet(request: Requests.LotsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/get",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsGetInventoryResponse.self
        )
    }

    /// Change the expiry date or the notes of a lot; null clears the value.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func lotsUpdate(request: Requests.LotsUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LotsUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/lots/update",
            body: request,
            requestOptions: requestOptions,
            responseType: LotsUpdateInventoryResponse.self
        )
    }

    /// Allocate an extra cost `amount` (positive, whole cents; 422 otherwise) over incoming stock movements, named by `movementIds` or taken from the lines of a goods receipt (`goodsReceiptId`; 422 when the receipt has no stock movements), in proportion to their cost (`by_value`) or quantity (`by_quantity`), largest remainder to the cent. The part of each share that belongs to the quantity still on hand raises the movement's remaining cost and recomputes its unit cost; the part that belongs to quantity already consumed is posted in a journal entry dated `date` debiting `inventory.cogs` and crediting the movement's stock account (`inventory.stock` when it has none), 409 when that period is locked. 422 when a movement is not incoming or the weights sum to zero. `sourceInvoiceId` records the purchase invoice the cost came from. Goods receipts come from `purchases/receipts/create`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func landedCostsCreate(request: Requests.LandedCostsCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/create",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsCreateInventoryResponse.self
        )
    }

    /// Return a landed cost with its allocation lines and the journal transaction it posted, if any.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func landedCostsGet(request: Requests.LandedCostsGetInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsGetInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/get",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsGetInventoryResponse.self
        )
    }

    /// List the landed costs without their lines. Filterable: date, method, goodsReceiptId, sourceInvoiceId. Sortable: date, createdAt, amount; default newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func landedCostsList(request: Requests.LandedCostsListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> LandedCostsListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/landed-costs/list",
            body: request,
            requestOptions: requestOptions,
            responseType: LandedCostsListInventoryResponse.self
        )
    }

    /// Create a reorder rule for an item, for one warehouse or, without `warehouseId`, for the item over all warehouses; one rule per item and warehouse (409). While the rule is active, an outgoing movement or a reservation that takes the available quantity (on hand less reserved) from above `minQty` to at or below it emits `stock.reorder_needed` with the `reorderQty`. `inventory/reorder-rules/check` lists the rules currently at or below their minimum.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderRulesCreate(request: Requests.ReorderRulesCreateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesCreateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesCreateInventoryResponse.self
        )
    }

    /// Change the minimum quantity, the reorder quantity (null clears it), the active flag or the notes of a reorder rule.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderRulesUpdate(request: Requests.ReorderRulesUpdateInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesUpdateInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/update",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesUpdateInventoryResponse.self
        )
    }

    /// Delete a reorder rule.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderRulesDelete(request: Requests.ReorderRulesDeleteInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesDeleteInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesDeleteInventoryResponse.self
        )
    }

    /// List the reorder rules. Filterable: itemId, warehouseId, isActive. Sortable: createdAt, minQty; default newest first.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderRulesList(request: Requests.ReorderRulesListInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesListInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesListInventoryResponse.self
        )
    }

    /// Return the active reorder rules whose available quantity (on hand less reserved, in the rule's warehouse or over all warehouses) is at or below `minQty`, with the quantities. Emits no event.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reorderRulesCheck(request: Requests.ReorderRulesCheckInventoryRequest, requestOptions: RequestOptions? = nil) async throws -> ReorderRulesCheckInventoryResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/inventory/reorder-rules/check",
            body: request,
            requestOptions: requestOptions,
            responseType: ReorderRulesCheckInventoryResponse.self
        )
    }
}
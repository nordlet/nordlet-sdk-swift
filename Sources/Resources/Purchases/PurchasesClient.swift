import Foundation

public final class PurchasesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Create a draft purchase invoice or credit note (`type`) from a supplier document; it is posted with `purchases/invoices/register`. Lines without a unit price take the item's supplier or purchase price, `currency` defaults to the company's invoice currency, `documentRef` links an uploaded file, and the gross total leaves out self-assessed VAT. `creditedInvoiceId` (credit notes only) must be an invoice of the same partner, `purchaseOrderId` an order of the same partner that is not draft, submitted or cancelled, and `operationTypeId` an active purchase operation type, each 422 otherwise; the same `documentNumber` for the same partner is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesCreate(request: Requests.InvoicesCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/create",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesCreatePurchasesResponse.self
        )
    }

    /// Return one purchase invoice or credit note with its lines.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesGet(request: Requests.InvoicesGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/get",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesGetPurchasesResponse.self
        )
    }

    /// Change a draft purchase invoice (409 once registered); only the fields sent are changed, and `lines` replace all existing lines with the totals recomputed. `purchaseOrderId` and `operationTypeId` are checked as on `purchases/invoices/create` (422). A `documentNumber` already used for the partner is refused with 409.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesUpdate(request: Requests.InvoicesUpdatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesUpdatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/update",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesUpdatePurchasesResponse.self
        )
    }

    /// Mark a draft purchase invoice as deleted (409 once registered). A document capture linked to it goes back to `extracted` (or `pending` when it has no extraction) and can be confirmed again.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesDelete(request: Requests.InvoicesDeletePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesDeletePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesDeletePurchasesResponse.self
        )
    }

    /// Register a draft purchase invoice or credit note: posts the journal entry dated `registrationDate` (default the document date) and sets the status to `registered`. The entry debits each line's expense account (the line's `accountCode`, else the item's purchase or expense account, else the operation type's expense account, else the `purchases.goodsForResale` or `purchases.defaultExpense` rule account), debits VAT receivable (a company that is not a VAT payer books the VAT into the expense instead), credits payables (the operation type's credit account when set) and credits output VAT for self-assessed VAT; a credit note posts the reverse. Lines with `deferralStartDate` and `deferralEndDate` are debited to the `purchases.prepaidExpenses` account instead and get a monthly release schedule for `purchases/deferrals/post`. With `warehouseId` the product lines of an invoice are received into stock at their base-currency cost (422 on an order-linked invoice, whose goods arrive through `purchases/receipts/create`, and for a line that is also deferred); `returnFromStock` on a credit note that credits an invoice takes the goods back out of stock at their FIFO cost and books the difference to the credited amount on the `inventory.cogs` account (422 on an invoice, without `creditedInvoiceId`, or when no goods of the credited invoice are in stock). A credit note that credits a registered invoice in the same currency is applied to it as a payment up to the open amount. Refused with 409 when already registered or the accounting period is locked, and with 422 when the credit notes would exceed the credited invoice, a posting account is missing or no exchange rate exists for the date. Emits `purchase_invoice.registered`, `purchase_invoice.paid` when the credited invoice becomes fully paid, and `stock.changed` when stock moves.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesRegister(request: Requests.InvoicesRegisterPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesRegisterPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/register",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesRegisterPurchasesResponse.self
        )
    }

    /// List the monthly release rows that `purchases/invoices/register` creates for lines booked as prepaid expenses, each with its amount, expense and prepaid account and `status` (`pending`, `posted`, `cancelled`). Filterable by `invoiceId`, `status` and `scheduleDate`; sortable by `scheduleDate`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deferralsList(request: Requests.DeferralsListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> DeferralsListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/deferrals/list",
            body: request,
            requestOptions: requestOptions,
            responseType: DeferralsListPurchasesResponse.self
        )
    }

    /// Post every `pending` prepaid-expense release row dated on or before `asOfDate` (default today in the company's time zone): one journal entry per schedule date debiting the expense account and crediting the prepaid account, and the rows become `posted`. A locked accounting period is refused with 409. The scheduled job `expense-deferrals` runs the same release for every active company.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deferralsPost(request: Requests.DeferralsPostPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> DeferralsPostPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/deferrals/post",
            body: request,
            requestOptions: requestOptions,
            responseType: DeferralsPostPurchasesResponse.self
        )
    }

    /// List purchase invoices and credit notes without lines, with the supplier's `partnerName`. Filterable by `partnerId`, `type`, `status`, `paymentStatus`, `documentNumber`, `documentDate`, `currency`, `operationTypeId`, `purchaseOrderId`, `grossTotal`, `netTotal`, `vatTotal` and `dueDate`; sortable by `createdAt`, `documentDate`, `documentNumber`, `grossTotal` and `dueDate`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesList(request: Requests.InvoicesListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/list",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesListPurchasesResponse.self
        )
    }

    /// Create a draft purchase order for a supplier. Lines without a unit price take the item's supplier or purchase price; `orderNumber` comes from the `purchase_order` series with prefix PO when not given; `currency` defaults to the company's invoice currency; `documentRef` links an uploaded file to the order. A number already in use is refused with 409. The order continues with `purchases/orders/submit`, `purchases/orders/approve` and `purchases/receipts/create`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersCreate(request: Requests.OrdersCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/create",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCreatePurchasesResponse.self
        )
    }

    /// Change a draft purchase order (409 once it is submitted); only the fields sent are changed. `lines` replace all existing lines and the totals are recomputed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersUpdate(request: Requests.OrdersUpdatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersUpdatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/update",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersUpdatePurchasesResponse.self
        )
    }

    /// Return one purchase order with its lines; each line carries `receivedQty` and `remainingQty`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersGet(request: Requests.OrdersGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/get",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersGetPurchasesResponse.self
        )
    }

    /// List purchase orders without lines, with the supplier's `partnerName`. Filterable by `partnerId`, `status`, `orderNumber`, `orderDate`, `currency` and `grossTotal`; sortable by `createdAt`, `orderDate`, `orderNumber` and `grossTotal`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersList(request: Requests.OrdersListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/list",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersListPurchasesResponse.self
        )
    }

    /// Move a `draft` purchase order to `submitted` for approval (409 from any other status). `reason` is kept in the audit log.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersSubmit(request: Requests.OrdersSubmitPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersSubmitPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/submit",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersSubmitPurchasesResponse.self
        )
    }

    /// Approve a `submitted` purchase order (409 from any other status), recording who approved it and when; needs the `purchases:approve` scope. Goods are then received with `purchases/receipts/create`. Emits `purchase_order.approved`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersApprove(request: Requests.OrdersApprovePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersApprovePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/approve",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersApprovePurchasesResponse.self
        )
    }

    /// Send a `submitted` purchase order back to `draft` (409 from any other status); needs the `purchases:approve` scope. `reason` is kept in the audit log.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersReject(request: Requests.OrdersRejectPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersRejectPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/reject",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersRejectPurchasesResponse.self
        )
    }

    /// Cancel a `draft`, `submitted` or `approved` purchase order (409 from any other status, or when the order already has a goods receipt).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersCancel(request: Requests.OrdersCancelPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersCancelPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/cancel",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersCancelPurchasesResponse.self
        )
    }

    /// Close an `approved`, `partially_received` or `received` purchase order (409 from any other status); a closed order accepts no further goods receipts.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersClose(request: Requests.OrdersClosePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersClosePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/close",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersClosePurchasesResponse.self
        )
    }

    /// Mark a `draft` purchase order as deleted (409 once it is submitted).
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ordersDelete(request: Requests.OrdersDeletePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> OrdersDeletePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/orders/delete",
            body: request,
            requestOptions: requestOptions,
            responseType: OrdersDeletePurchasesResponse.self
        )
    }

    /// Record a goods receipt against an `approved` or `partially_received` purchase order (409 otherwise), numbered from the `goods_receipt` series with prefix GR. Lines whose item is a product go into stock in `warehouseId`, else the order's warehouse (422 when neither is set), at their share of the order line's net amount converted at the receipt date's rate; `lotNumber` and `expiryDate` receive them into a lot, and an item that needs lot or serial tracking is refused with 422 without one. A quantity above the line's remaining quantity is refused with 409; the order becomes `received` when every line is fully received, else `partially_received`. Emits `goods_receipt.posted`, `stock.changed` and, when fully received, `purchase_order.received`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsCreate(request: Requests.ReceiptsCreatePurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsCreatePurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/create",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsCreatePurchasesResponse.self
        )
    }

    /// Return one goods receipt with its lines and their stock movement ids.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsGet(request: Requests.ReceiptsGetPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsGetPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/get",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsGetPurchasesResponse.self
        )
    }

    /// List goods receipts without lines. Filterable by `orderId`, `warehouseId`, `receiptDate` and `receiptNumber`; sortable by `createdAt` and `receiptDate`.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func receiptsList(request: Requests.ReceiptsListPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> ReceiptsListPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/receipts/list",
            body: request,
            requestOptions: requestOptions,
            responseType: ReceiptsListPurchasesResponse.self
        )
    }

    /// Compare a purchase invoice with its linked purchase order and the goods received so far, grouped by item (by description for lines without one). Each row is `matched`, `not_received` (invoiced but nothing received), `over_invoiced` (invoiced more than received), `price_mismatch` (unit price differs by more than `priceTolerancePercent`), `not_on_order` or `not_invoiced`; `status` is `mismatched` when any row other than `not_invoiced` is not matched. Refused with 422 when the invoice has no `purchaseOrderId` or its currency differs from the order's. Nothing is changed.
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func invoicesMatch(request: Requests.InvoicesMatchPurchasesRequest, requestOptions: RequestOptions? = nil) async throws -> InvoicesMatchPurchasesResponse {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/purchases/invoices/match",
            body: request,
            requestOptions: requestOptions,
            responseType: InvoicesMatchPurchasesResponse.self
        )
    }
}
import Foundation

/// Use this class to access the different functions within the SDK. You can instantiate any number of clients with different configuration that will propagate to these functions.
public final class ApiClient: Sendable {
    public let reference: ReferenceClient
    public let partners: PartnersClient
    public let catalog: CatalogClient
    public let sales: SalesClient
    public let purchases: PurchasesClient
    public let declarations: DeclarationsClient
    public let ledger: LedgerClient
    public let assets: AssetsClient
    public let hr: HrClient
    public let payroll: PayrollClient
    public let agreements: AgreementsClient
    public let inventory: InventoryClient
    public let production: ProductionClient
    public let ecommerce: EcommerceClient
    public let cash: CashClient
    public let transport: TransportClient
    public let pos: PosClient
    public let audit: AuditClient
    public let webhooks: WebhooksClient
    public let bank: BankClient
    public let files: FilesClient
    public let reports: ReportsClient
    public let consolidation: ConsolidationClient
    public let `public`: PublicClient
    public let account: AccountClient
    private let httpClient: HTTPClient

    /// Initialize the client with the specified configuration and a static bearer token.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: Bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = ApiEnvironment.production.rawValue,
        token: String,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .staticToken(token)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    /// Initialize the client with the specified configuration and an async bearer token provider.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter token: An async function that returns the bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = ApiEnvironment.production.rawValue,
        token: @escaping ClientConfig.CredentialProvider,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .provider(token)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    init(
        baseURL: String,
        headerAuth: ClientConfig.HeaderAuth? = nil,
        bearerAuth: ClientConfig.BearerAuth? = nil,
        basicAuth: ClientConfig.BasicAuth? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        let config = ClientConfig(
            baseURL: baseURL,
            headerAuth: headerAuth,
            bearerAuth: bearerAuth,
            basicAuth: basicAuth,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
        self.reference = ReferenceClient(config: config)
        self.partners = PartnersClient(config: config)
        self.catalog = CatalogClient(config: config)
        self.sales = SalesClient(config: config)
        self.purchases = PurchasesClient(config: config)
        self.declarations = DeclarationsClient(config: config)
        self.ledger = LedgerClient(config: config)
        self.assets = AssetsClient(config: config)
        self.hr = HrClient(config: config)
        self.payroll = PayrollClient(config: config)
        self.agreements = AgreementsClient(config: config)
        self.inventory = InventoryClient(config: config)
        self.production = ProductionClient(config: config)
        self.ecommerce = EcommerceClient(config: config)
        self.cash = CashClient(config: config)
        self.transport = TransportClient(config: config)
        self.pos = PosClient(config: config)
        self.audit = AuditClient(config: config)
        self.webhooks = WebhooksClient(config: config)
        self.bank = BankClient(config: config)
        self.files = FilesClient(config: config)
        self.reports = ReportsClient(config: config)
        self.consolidation = ConsolidationClient(config: config)
        self.public = PublicClient(config: config)
        self.account = AccountClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}
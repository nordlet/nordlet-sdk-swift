import Foundation

public struct PostV1TransportWaybillsUpdateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let status: PostV1TransportWaybillsUpdateResponseStatus
    public let series: String
    public let fullNumber: Nullable<String>
    public let documentDate: String
    public let dispatchAt: String
    public let estimatedArrivalAt: Nullable<String>
    public let consigneePartnerId: String
    public let transporterPartnerId: Nullable<String>
    public let vehiclePlate: Nullable<String>
    public let trailerPlate: Nullable<String>
    public let driverName: Nullable<String>
    public let driverSurname: Nullable<String>
    public let loadWarehouseId: Nullable<String>
    public let loadAddress: String
    public let unloadAddress: String
    public let valueEur: Nullable<String>
    public let saleInvoiceId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    public let lines: [PostV1TransportWaybillsUpdateResponseLinesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        status: PostV1TransportWaybillsUpdateResponseStatus,
        series: String,
        fullNumber: Nullable<String>,
        documentDate: String,
        dispatchAt: String,
        estimatedArrivalAt: Nullable<String>,
        consigneePartnerId: String,
        transporterPartnerId: Nullable<String>,
        vehiclePlate: Nullable<String>,
        trailerPlate: Nullable<String>,
        driverName: Nullable<String>,
        driverSurname: Nullable<String>,
        loadWarehouseId: Nullable<String>,
        loadAddress: String,
        unloadAddress: String,
        valueEur: Nullable<String>,
        saleInvoiceId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        updatedAt: String,
        lines: [PostV1TransportWaybillsUpdateResponseLinesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.status = status
        self.series = series
        self.fullNumber = fullNumber
        self.documentDate = documentDate
        self.dispatchAt = dispatchAt
        self.estimatedArrivalAt = estimatedArrivalAt
        self.consigneePartnerId = consigneePartnerId
        self.transporterPartnerId = transporterPartnerId
        self.vehiclePlate = vehiclePlate
        self.trailerPlate = trailerPlate
        self.driverName = driverName
        self.driverSurname = driverSurname
        self.loadWarehouseId = loadWarehouseId
        self.loadAddress = loadAddress
        self.unloadAddress = unloadAddress
        self.valueEur = valueEur
        self.saleInvoiceId = saleInvoiceId
        self.notes = notes
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.status = try container.decode(PostV1TransportWaybillsUpdateResponseStatus.self, forKey: .status)
        self.series = try container.decode(String.self, forKey: .series)
        self.fullNumber = try container.decode(Nullable<String>.self, forKey: .fullNumber)
        self.documentDate = try container.decode(String.self, forKey: .documentDate)
        self.dispatchAt = try container.decode(String.self, forKey: .dispatchAt)
        self.estimatedArrivalAt = try container.decode(Nullable<String>.self, forKey: .estimatedArrivalAt)
        self.consigneePartnerId = try container.decode(String.self, forKey: .consigneePartnerId)
        self.transporterPartnerId = try container.decode(Nullable<String>.self, forKey: .transporterPartnerId)
        self.vehiclePlate = try container.decode(Nullable<String>.self, forKey: .vehiclePlate)
        self.trailerPlate = try container.decode(Nullable<String>.self, forKey: .trailerPlate)
        self.driverName = try container.decode(Nullable<String>.self, forKey: .driverName)
        self.driverSurname = try container.decode(Nullable<String>.self, forKey: .driverSurname)
        self.loadWarehouseId = try container.decode(Nullable<String>.self, forKey: .loadWarehouseId)
        self.loadAddress = try container.decode(String.self, forKey: .loadAddress)
        self.unloadAddress = try container.decode(String.self, forKey: .unloadAddress)
        self.valueEur = try container.decode(Nullable<String>.self, forKey: .valueEur)
        self.saleInvoiceId = try container.decode(Nullable<String>.self, forKey: .saleInvoiceId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
        self.lines = try container.decode([PostV1TransportWaybillsUpdateResponseLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.series, forKey: .series)
        try container.encode(self.fullNumber, forKey: .fullNumber)
        try container.encode(self.documentDate, forKey: .documentDate)
        try container.encode(self.dispatchAt, forKey: .dispatchAt)
        try container.encode(self.estimatedArrivalAt, forKey: .estimatedArrivalAt)
        try container.encode(self.consigneePartnerId, forKey: .consigneePartnerId)
        try container.encode(self.transporterPartnerId, forKey: .transporterPartnerId)
        try container.encode(self.vehiclePlate, forKey: .vehiclePlate)
        try container.encode(self.trailerPlate, forKey: .trailerPlate)
        try container.encode(self.driverName, forKey: .driverName)
        try container.encode(self.driverSurname, forKey: .driverSurname)
        try container.encode(self.loadWarehouseId, forKey: .loadWarehouseId)
        try container.encode(self.loadAddress, forKey: .loadAddress)
        try container.encode(self.unloadAddress, forKey: .unloadAddress)
        try container.encode(self.valueEur, forKey: .valueEur)
        try container.encode(self.saleInvoiceId, forKey: .saleInvoiceId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
        try container.encode(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case status
        case series
        case fullNumber
        case documentDate
        case dispatchAt
        case estimatedArrivalAt
        case consigneePartnerId
        case transporterPartnerId
        case vehiclePlate
        case trailerPlate
        case driverName
        case driverSurname
        case loadWarehouseId
        case loadAddress
        case unloadAddress
        case valueEur
        case saleInvoiceId
        case notes
        case createdAt
        case updatedAt
        case lines
    }
}
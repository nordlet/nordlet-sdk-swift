import Foundation

public struct InvoiceTemplatesGetSalesResponse: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let documentType: InvoiceTemplatesGetSalesResponseDocumentType
    public let partnerId: Nullable<String>
    public let currency: Nullable<String>
    public let paymentTermDays: Nullable<Int64>
    public let vatScheme: Nullable<String>
    public let vatCountryCode: Nullable<String>
    public let agreementId: Nullable<String>
    public let operationTypeId: Nullable<String>
    public let documentSeriesId: Nullable<String>
    public let discountPercent: Nullable<String>
    public let issuedByName: Nullable<String>
    public let issuedByTitle: Nullable<String>
    public let receivedByName: Nullable<String>
    public let receivedByTitle: Nullable<String>
    public let notes: Nullable<String>
    public let supplyType: Nullable<InvoiceTemplatesGetSalesResponseSupplyType>
    public let seriesLabel: Nullable<String>
    public let orderNumber: Nullable<String>
    public let intrastatTransportMode: Nullable<String>
    public let intrastatDeliveryTerms: Nullable<String>
    public let intrastatRegion: Nullable<String>
    public let intrastatNatureOfTransaction: Nullable<String>
    public let lines: [InvoiceTemplatesGetSalesResponseLinesItem]
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        documentType: InvoiceTemplatesGetSalesResponseDocumentType,
        partnerId: Nullable<String>,
        currency: Nullable<String>,
        paymentTermDays: Nullable<Int64>,
        vatScheme: Nullable<String>,
        vatCountryCode: Nullable<String>,
        agreementId: Nullable<String>,
        operationTypeId: Nullable<String>,
        documentSeriesId: Nullable<String>,
        discountPercent: Nullable<String>,
        issuedByName: Nullable<String>,
        issuedByTitle: Nullable<String>,
        receivedByName: Nullable<String>,
        receivedByTitle: Nullable<String>,
        notes: Nullable<String>,
        supplyType: Nullable<InvoiceTemplatesGetSalesResponseSupplyType>,
        seriesLabel: Nullable<String>,
        orderNumber: Nullable<String>,
        intrastatTransportMode: Nullable<String>,
        intrastatDeliveryTerms: Nullable<String>,
        intrastatRegion: Nullable<String>,
        intrastatNatureOfTransaction: Nullable<String>,
        lines: [InvoiceTemplatesGetSalesResponseLinesItem],
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.documentType = documentType
        self.partnerId = partnerId
        self.currency = currency
        self.paymentTermDays = paymentTermDays
        self.vatScheme = vatScheme
        self.vatCountryCode = vatCountryCode
        self.agreementId = agreementId
        self.operationTypeId = operationTypeId
        self.documentSeriesId = documentSeriesId
        self.discountPercent = discountPercent
        self.issuedByName = issuedByName
        self.issuedByTitle = issuedByTitle
        self.receivedByName = receivedByName
        self.receivedByTitle = receivedByTitle
        self.notes = notes
        self.supplyType = supplyType
        self.seriesLabel = seriesLabel
        self.orderNumber = orderNumber
        self.intrastatTransportMode = intrastatTransportMode
        self.intrastatDeliveryTerms = intrastatDeliveryTerms
        self.intrastatRegion = intrastatRegion
        self.intrastatNatureOfTransaction = intrastatNatureOfTransaction
        self.lines = lines
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.documentType = try container.decode(InvoiceTemplatesGetSalesResponseDocumentType.self, forKey: .documentType)
        self.partnerId = try container.decode(Nullable<String>.self, forKey: .partnerId)
        self.currency = try container.decode(Nullable<String>.self, forKey: .currency)
        self.paymentTermDays = try container.decode(Nullable<Int64>.self, forKey: .paymentTermDays)
        self.vatScheme = try container.decode(Nullable<String>.self, forKey: .vatScheme)
        self.vatCountryCode = try container.decode(Nullable<String>.self, forKey: .vatCountryCode)
        self.agreementId = try container.decode(Nullable<String>.self, forKey: .agreementId)
        self.operationTypeId = try container.decode(Nullable<String>.self, forKey: .operationTypeId)
        self.documentSeriesId = try container.decode(Nullable<String>.self, forKey: .documentSeriesId)
        self.discountPercent = try container.decode(Nullable<String>.self, forKey: .discountPercent)
        self.issuedByName = try container.decode(Nullable<String>.self, forKey: .issuedByName)
        self.issuedByTitle = try container.decode(Nullable<String>.self, forKey: .issuedByTitle)
        self.receivedByName = try container.decode(Nullable<String>.self, forKey: .receivedByName)
        self.receivedByTitle = try container.decode(Nullable<String>.self, forKey: .receivedByTitle)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.supplyType = try container.decode(Nullable<InvoiceTemplatesGetSalesResponseSupplyType>.self, forKey: .supplyType)
        self.seriesLabel = try container.decode(Nullable<String>.self, forKey: .seriesLabel)
        self.orderNumber = try container.decode(Nullable<String>.self, forKey: .orderNumber)
        self.intrastatTransportMode = try container.decode(Nullable<String>.self, forKey: .intrastatTransportMode)
        self.intrastatDeliveryTerms = try container.decode(Nullable<String>.self, forKey: .intrastatDeliveryTerms)
        self.intrastatRegion = try container.decode(Nullable<String>.self, forKey: .intrastatRegion)
        self.intrastatNatureOfTransaction = try container.decode(Nullable<String>.self, forKey: .intrastatNatureOfTransaction)
        self.lines = try container.decode([InvoiceTemplatesGetSalesResponseLinesItem].self, forKey: .lines)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.documentType, forKey: .documentType)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.currency, forKey: .currency)
        try container.encode(self.paymentTermDays, forKey: .paymentTermDays)
        try container.encode(self.vatScheme, forKey: .vatScheme)
        try container.encode(self.vatCountryCode, forKey: .vatCountryCode)
        try container.encode(self.agreementId, forKey: .agreementId)
        try container.encode(self.operationTypeId, forKey: .operationTypeId)
        try container.encode(self.documentSeriesId, forKey: .documentSeriesId)
        try container.encode(self.discountPercent, forKey: .discountPercent)
        try container.encode(self.issuedByName, forKey: .issuedByName)
        try container.encode(self.issuedByTitle, forKey: .issuedByTitle)
        try container.encode(self.receivedByName, forKey: .receivedByName)
        try container.encode(self.receivedByTitle, forKey: .receivedByTitle)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.supplyType, forKey: .supplyType)
        try container.encode(self.seriesLabel, forKey: .seriesLabel)
        try container.encode(self.orderNumber, forKey: .orderNumber)
        try container.encode(self.intrastatTransportMode, forKey: .intrastatTransportMode)
        try container.encode(self.intrastatDeliveryTerms, forKey: .intrastatDeliveryTerms)
        try container.encode(self.intrastatRegion, forKey: .intrastatRegion)
        try container.encode(self.intrastatNatureOfTransaction, forKey: .intrastatNatureOfTransaction)
        try container.encode(self.lines, forKey: .lines)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case documentType
        case partnerId
        case currency
        case paymentTermDays
        case vatScheme
        case vatCountryCode
        case agreementId
        case operationTypeId
        case documentSeriesId
        case discountPercent
        case issuedByName
        case issuedByTitle
        case receivedByName
        case receivedByTitle
        case notes
        case supplyType
        case seriesLabel
        case orderNumber
        case intrastatTransportMode
        case intrastatDeliveryTerms
        case intrastatRegion
        case intrastatNatureOfTransaction
        case lines
        case createdAt
        case updatedAt
    }
}
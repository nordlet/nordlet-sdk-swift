import Foundation

public struct LtIvazAmendDeclarationsRequestCorrectionsItem: Codable, Hashable, Sendable {
    public let waybillId: String
    public let consigneePartnerId: String?
    public let unloadAddress: String?
    public let vehiclePlate: String?
    public let trailerPlate: Nullable<String>?
    public let driverName: Nullable<String>?
    public let driverSurname: Nullable<String>?
    public let lines: [LtIvazAmendDeclarationsRequestCorrectionsItemLinesItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        waybillId: String,
        consigneePartnerId: String? = nil,
        unloadAddress: String? = nil,
        vehiclePlate: String? = nil,
        trailerPlate: Nullable<String>? = nil,
        driverName: Nullable<String>? = nil,
        driverSurname: Nullable<String>? = nil,
        lines: [LtIvazAmendDeclarationsRequestCorrectionsItemLinesItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.waybillId = waybillId
        self.consigneePartnerId = consigneePartnerId
        self.unloadAddress = unloadAddress
        self.vehiclePlate = vehiclePlate
        self.trailerPlate = trailerPlate
        self.driverName = driverName
        self.driverSurname = driverSurname
        self.lines = lines
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.waybillId = try container.decode(String.self, forKey: .waybillId)
        self.consigneePartnerId = try container.decodeIfPresent(String.self, forKey: .consigneePartnerId)
        self.unloadAddress = try container.decodeIfPresent(String.self, forKey: .unloadAddress)
        self.vehiclePlate = try container.decodeIfPresent(String.self, forKey: .vehiclePlate)
        self.trailerPlate = try container.decodeNullableIfPresent(String.self, forKey: .trailerPlate)
        self.driverName = try container.decodeNullableIfPresent(String.self, forKey: .driverName)
        self.driverSurname = try container.decodeNullableIfPresent(String.self, forKey: .driverSurname)
        self.lines = try container.decodeIfPresent([LtIvazAmendDeclarationsRequestCorrectionsItemLinesItem].self, forKey: .lines)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.waybillId, forKey: .waybillId)
        try container.encodeIfPresent(self.consigneePartnerId, forKey: .consigneePartnerId)
        try container.encodeIfPresent(self.unloadAddress, forKey: .unloadAddress)
        try container.encodeIfPresent(self.vehiclePlate, forKey: .vehiclePlate)
        try container.encodeNullableIfPresent(self.trailerPlate, forKey: .trailerPlate)
        try container.encodeNullableIfPresent(self.driverName, forKey: .driverName)
        try container.encodeNullableIfPresent(self.driverSurname, forKey: .driverSurname)
        try container.encodeIfPresent(self.lines, forKey: .lines)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case waybillId
        case consigneePartnerId
        case unloadAddress
        case vehiclePlate
        case trailerPlate
        case driverName
        case driverSurname
        case lines
    }
}
import Foundation

public struct PostV1LedgerOwnersListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let name: String
    public let code: Nullable<String>
    public let equityAccountCode: String
    public let sharesQuantity: Nullable<String>
    public let sharesAmount: Nullable<String>
    public let sharesType: Nullable<String>
    public let sharesAcquisitionDate: Nullable<String>
    public let address: Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        name: String,
        code: Nullable<String>,
        equityAccountCode: String,
        sharesQuantity: Nullable<String>,
        sharesAmount: Nullable<String>,
        sharesType: Nullable<String>,
        sharesAcquisitionDate: Nullable<String>,
        address: Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.name = name
        self.code = code
        self.equityAccountCode = equityAccountCode
        self.sharesQuantity = sharesQuantity
        self.sharesAmount = sharesAmount
        self.sharesType = sharesType
        self.sharesAcquisitionDate = sharesAcquisitionDate
        self.address = address
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.code = try container.decode(Nullable<String>.self, forKey: .code)
        self.equityAccountCode = try container.decode(String.self, forKey: .equityAccountCode)
        self.sharesQuantity = try container.decode(Nullable<String>.self, forKey: .sharesQuantity)
        self.sharesAmount = try container.decode(Nullable<String>.self, forKey: .sharesAmount)
        self.sharesType = try container.decode(Nullable<String>.self, forKey: .sharesType)
        self.sharesAcquisitionDate = try container.decode(Nullable<String>.self, forKey: .sharesAcquisitionDate)
        self.address = try container.decode(Nullable<PostV1LedgerOwnersListResponseRowsItemAddress>.self, forKey: .address)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.code, forKey: .code)
        try container.encode(self.equityAccountCode, forKey: .equityAccountCode)
        try container.encode(self.sharesQuantity, forKey: .sharesQuantity)
        try container.encode(self.sharesAmount, forKey: .sharesAmount)
        try container.encode(self.sharesType, forKey: .sharesType)
        try container.encode(self.sharesAcquisitionDate, forKey: .sharesAcquisitionDate)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case code
        case equityAccountCode
        case sharesQuantity
        case sharesAmount
        case sharesType
        case sharesAcquisitionDate
        case address
        case createdAt
    }
}
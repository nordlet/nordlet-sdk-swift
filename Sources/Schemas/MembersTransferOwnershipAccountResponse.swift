import Foundation

public struct MembersTransferOwnershipAccountResponse: Codable, Hashable, Sendable {
    public let ownerUserId: String
    public let previousOwnerRole: String
    public let payerUserId: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        ownerUserId: String,
        previousOwnerRole: String,
        payerUserId: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.ownerUserId = ownerUserId
        self.previousOwnerRole = previousOwnerRole
        self.payerUserId = payerUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.ownerUserId = try container.decode(String.self, forKey: .ownerUserId)
        self.previousOwnerRole = try container.decode(String.self, forKey: .previousOwnerRole)
        self.payerUserId = try container.decode(Nullable<String>.self, forKey: .payerUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.ownerUserId, forKey: .ownerUserId)
        try container.encode(self.previousOwnerRole, forKey: .previousOwnerRole)
        try container.encode(self.payerUserId, forKey: .payerUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case ownerUserId
        case previousOwnerRole
        case payerUserId
    }
}
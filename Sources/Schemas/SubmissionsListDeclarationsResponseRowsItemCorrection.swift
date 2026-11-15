import Foundation

public struct SubmissionsListDeclarationsResponseRowsItemCorrection: Codable, Hashable, Sendable {
    public let required: [SubmissionsListDeclarationsResponseRowsItemCorrectionRequiredItem]
    public let optional: [SubmissionsListDeclarationsResponseRowsItemCorrectionOptionalItem]
    public let reasonCodes: [SubmissionsListDeclarationsResponseRowsItemCorrectionReasonCodesItem]
    public let carry: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        required: [SubmissionsListDeclarationsResponseRowsItemCorrectionRequiredItem],
        optional: [SubmissionsListDeclarationsResponseRowsItemCorrectionOptionalItem],
        reasonCodes: [SubmissionsListDeclarationsResponseRowsItemCorrectionReasonCodesItem],
        carry: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.required = required
        self.optional = optional
        self.reasonCodes = reasonCodes
        self.carry = carry
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.required = try container.decode([SubmissionsListDeclarationsResponseRowsItemCorrectionRequiredItem].self, forKey: .required)
        self.optional = try container.decode([SubmissionsListDeclarationsResponseRowsItemCorrectionOptionalItem].self, forKey: .optional)
        self.reasonCodes = try container.decode([SubmissionsListDeclarationsResponseRowsItemCorrectionReasonCodesItem].self, forKey: .reasonCodes)
        self.carry = try container.decode(Bool.self, forKey: .carry)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.required, forKey: .required)
        try container.encode(self.optional, forKey: .optional)
        try container.encode(self.reasonCodes, forKey: .reasonCodes)
        try container.encode(self.carry, forKey: .carry)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case required
        case optional
        case reasonCodes
        case carry
    }
}
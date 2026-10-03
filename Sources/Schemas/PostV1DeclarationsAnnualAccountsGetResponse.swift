import Foundation

public struct PostV1DeclarationsAnnualAccountsGetResponse: Codable, Hashable, Sendable {
    public let approval: Nullable<PostV1DeclarationsAnnualAccountsGetResponseApproval>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        approval: Nullable<PostV1DeclarationsAnnualAccountsGetResponseApproval>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.approval = approval
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.approval = try container.decode(Nullable<PostV1DeclarationsAnnualAccountsGetResponseApproval>.self, forKey: .approval)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.approval, forKey: .approval)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case approval
    }
}
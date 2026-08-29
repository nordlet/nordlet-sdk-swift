import Foundation

public struct PostV1PartnersVatReviewsResolveResponseDetails: Codable, Hashable, Sendable {
    public let message: String?
    public let partnerName: String?
    public let viesName: Nullable<String>?
    public let viesAddress: Nullable<String>?
    public let requestIdentifier: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        message: String? = nil,
        partnerName: String? = nil,
        viesName: Nullable<String>? = nil,
        viesAddress: Nullable<String>? = nil,
        requestIdentifier: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.message = message
        self.partnerName = partnerName
        self.viesName = viesName
        self.viesAddress = viesAddress
        self.requestIdentifier = requestIdentifier
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.message = try container.decodeIfPresent(String.self, forKey: .message)
        self.partnerName = try container.decodeIfPresent(String.self, forKey: .partnerName)
        self.viesName = try container.decodeNullableIfPresent(String.self, forKey: .viesName)
        self.viesAddress = try container.decodeNullableIfPresent(String.self, forKey: .viesAddress)
        self.requestIdentifier = try container.decodeNullableIfPresent(String.self, forKey: .requestIdentifier)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.message, forKey: .message)
        try container.encodeIfPresent(self.partnerName, forKey: .partnerName)
        try container.encodeNullableIfPresent(self.viesName, forKey: .viesName)
        try container.encodeNullableIfPresent(self.viesAddress, forKey: .viesAddress)
        try container.encodeNullableIfPresent(self.requestIdentifier, forKey: .requestIdentifier)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case message
        case partnerName
        case viesName
        case viesAddress
        case requestIdentifier
    }
}
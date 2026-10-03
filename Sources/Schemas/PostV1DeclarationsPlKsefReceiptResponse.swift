import Foundation

public struct PostV1DeclarationsPlKsefReceiptResponse: Codable, Hashable, Sendable {
    public let referenceNumber: String
    public let state: PostV1DeclarationsPlKsefReceiptResponseState
    public let detail: Nullable<String>
    public let invoiceCount: Nullable<Int64>
    public let upoXml: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        referenceNumber: String,
        state: PostV1DeclarationsPlKsefReceiptResponseState,
        detail: Nullable<String>,
        invoiceCount: Nullable<Int64>,
        upoXml: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.referenceNumber = referenceNumber
        self.state = state
        self.detail = detail
        self.invoiceCount = invoiceCount
        self.upoXml = upoXml
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.referenceNumber = try container.decode(String.self, forKey: .referenceNumber)
        self.state = try container.decode(PostV1DeclarationsPlKsefReceiptResponseState.self, forKey: .state)
        self.detail = try container.decode(Nullable<String>.self, forKey: .detail)
        self.invoiceCount = try container.decode(Nullable<Int64>.self, forKey: .invoiceCount)
        self.upoXml = try container.decode(Nullable<String>.self, forKey: .upoXml)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.referenceNumber, forKey: .referenceNumber)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.detail, forKey: .detail)
        try container.encode(self.invoiceCount, forKey: .invoiceCount)
        try container.encode(self.upoXml, forKey: .upoXml)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case referenceNumber
        case state
        case detail
        case invoiceCount
        case upoXml
    }
}
import Foundation

public struct PostV1SalesRecognitionSummaryResponseTotals: Codable, Hashable, Sendable {
    public let deferredTotal: String
    public let recognizedToDate: String
    public let remaining: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        deferredTotal: String,
        recognizedToDate: String,
        remaining: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.deferredTotal = deferredTotal
        self.recognizedToDate = recognizedToDate
        self.remaining = remaining
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.deferredTotal = try container.decode(String.self, forKey: .deferredTotal)
        self.recognizedToDate = try container.decode(String.self, forKey: .recognizedToDate)
        self.remaining = try container.decode(String.self, forKey: .remaining)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.deferredTotal, forKey: .deferredTotal)
        try container.encode(self.recognizedToDate, forKey: .recognizedToDate)
        try container.encode(self.remaining, forKey: .remaining)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case deferredTotal
        case recognizedToDate
        case remaining
    }
}
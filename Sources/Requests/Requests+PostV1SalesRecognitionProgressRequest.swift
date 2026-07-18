import Foundation

extension Requests {
    public struct PostV1SalesRecognitionProgressRequest: Codable, Hashable, Sendable {
        public let invoiceLineId: String
        public let percentComplete: String
        public let date: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            invoiceLineId: String,
            percentComplete: String,
            date: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.invoiceLineId = invoiceLineId
            self.percentComplete = percentComplete
            self.date = date
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.invoiceLineId = try container.decode(String.self, forKey: .invoiceLineId)
            self.percentComplete = try container.decode(String.self, forKey: .percentComplete)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.invoiceLineId, forKey: .invoiceLineId)
            try container.encode(self.percentComplete, forKey: .percentComplete)
            try container.encodeIfPresent(self.date, forKey: .date)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case invoiceLineId
            case percentComplete
            case date
        }
    }
}
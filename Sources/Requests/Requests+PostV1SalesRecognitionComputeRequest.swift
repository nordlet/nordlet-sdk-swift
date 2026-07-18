import Foundation

extension Requests {
    public struct PostV1SalesRecognitionComputeRequest: Codable, Hashable, Sendable {
        public let asOfDate: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            asOfDate: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.asOfDate = asOfDate
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.asOfDate = try container.decodeIfPresent(String.self, forKey: .asOfDate)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.asOfDate, forKey: .asOfDate)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case asOfDate
        }
    }
}
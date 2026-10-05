import Foundation

extension Requests {
    public struct PlKsefReceiptDeclarationsRequest: Codable, Hashable, Sendable {
        public let sessionReferenceNumber: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionReferenceNumber: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionReferenceNumber = sessionReferenceNumber
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionReferenceNumber = try container.decodeIfPresent(String.self, forKey: .sessionReferenceNumber)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.sessionReferenceNumber, forKey: .sessionReferenceNumber)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionReferenceNumber
        }
    }
}
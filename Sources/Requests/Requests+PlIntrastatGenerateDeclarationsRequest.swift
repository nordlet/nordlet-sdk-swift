import Foundation

extension Requests {
    public struct PlIntrastatGenerateDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let flow: PlIntrastatGenerateDeclarationsRequestFlow
        public let transactionNature: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            flow: PlIntrastatGenerateDeclarationsRequestFlow,
            transactionNature: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.flow = flow
            self.transactionNature = transactionNature
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.flow = try container.decode(PlIntrastatGenerateDeclarationsRequestFlow.self, forKey: .flow)
            self.transactionNature = try container.decodeIfPresent(String.self, forKey: .transactionNature)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encode(self.flow, forKey: .flow)
            try container.encodeIfPresent(self.transactionNature, forKey: .transactionNature)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case flow
            case transactionNature
        }
    }
}
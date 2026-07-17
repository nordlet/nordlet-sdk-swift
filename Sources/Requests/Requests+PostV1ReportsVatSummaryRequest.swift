import Foundation

extension Requests {
    public struct PostV1ReportsVatSummaryRequest: Codable, Hashable, Sendable {
        public let fromDate: String
        public let toDate: String
        public let side: PostV1ReportsVatSummaryRequestSide?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: String,
            toDate: String,
            side: PostV1ReportsVatSummaryRequestSide? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.side = side
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.side = try container.decodeIfPresent(PostV1ReportsVatSummaryRequestSide.self, forKey: .side)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.side, forKey: .side)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case side
        }
    }
}
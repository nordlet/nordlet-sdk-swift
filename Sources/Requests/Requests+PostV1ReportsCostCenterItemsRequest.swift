import Foundation

extension Requests {
    public struct PostV1ReportsCostCenterItemsRequest: Codable, Hashable, Sendable {
        public let fromDate: String
        public let toDate: String
        public let costCenterId: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: String,
            toDate: String,
            costCenterId: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.costCenterId = costCenterId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.costCenterId = try container.decodeIfPresent(String.self, forKey: .costCenterId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.costCenterId, forKey: .costCenterId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case costCenterId
        }
    }
}
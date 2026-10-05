import Foundation

extension Requests {
    public struct LtSaftGenerateDeclarationsRequest: Codable, Hashable, Sendable {
        public let fromDate: CalendarDate
        public let toDate: CalendarDate
        public let dataType: LtSaftGenerateDeclarationsRequestDataType?
        public let persist: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: CalendarDate,
            toDate: CalendarDate,
            dataType: LtSaftGenerateDeclarationsRequestDataType? = nil,
            persist: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.dataType = dataType
            self.persist = persist
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
            self.dataType = try container.decodeIfPresent(LtSaftGenerateDeclarationsRequestDataType.self, forKey: .dataType)
            self.persist = try container.decodeIfPresent(Bool.self, forKey: .persist)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.dataType, forKey: .dataType)
            try container.encodeIfPresent(self.persist, forKey: .persist)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case dataType
            case persist
        }
    }
}
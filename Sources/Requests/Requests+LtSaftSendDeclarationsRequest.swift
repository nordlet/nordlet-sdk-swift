import Foundation

extension Requests {
    public struct LtSaftSendDeclarationsRequest: Codable, Hashable, Sendable {
        public let fromDate: CalendarDate
        public let toDate: CalendarDate
        public let dataType: LtSaftSendDeclarationsRequestDataType?
        public let confirm: Bool?
        public let amend: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fromDate: CalendarDate,
            toDate: CalendarDate,
            dataType: LtSaftSendDeclarationsRequestDataType? = nil,
            confirm: Bool? = nil,
            amend: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fromDate = fromDate
            self.toDate = toDate
            self.dataType = dataType
            self.confirm = confirm
            self.amend = amend
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
            self.dataType = try container.decodeIfPresent(LtSaftSendDeclarationsRequestDataType.self, forKey: .dataType)
            self.confirm = try container.decodeIfPresent(Bool.self, forKey: .confirm)
            self.amend = try container.decodeIfPresent(Bool.self, forKey: .amend)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.dataType, forKey: .dataType)
            try container.encodeIfPresent(self.confirm, forKey: .confirm)
            try container.encodeIfPresent(self.amend, forKey: .amend)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fromDate
            case toDate
            case dataType
            case confirm
            case amend
        }
    }
}
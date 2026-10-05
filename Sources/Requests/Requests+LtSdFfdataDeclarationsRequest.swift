import Foundation

extension Requests {
    public struct LtSdFfdataDeclarationsRequest: Codable, Hashable, Sendable {
        public let type: LtSdFfdataDeclarationsRequestType
        public let fromDate: CalendarDate
        public let toDate: CalendarDate
        public let managerFullName: String?
        public let preparatorDetails: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: LtSdFfdataDeclarationsRequestType,
            fromDate: CalendarDate,
            toDate: CalendarDate,
            managerFullName: String? = nil,
            preparatorDetails: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.fromDate = fromDate
            self.toDate = toDate
            self.managerFullName = managerFullName
            self.preparatorDetails = preparatorDetails
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decode(LtSdFfdataDeclarationsRequestType.self, forKey: .type)
            self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
            self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
            self.managerFullName = try container.decodeIfPresent(String.self, forKey: .managerFullName)
            self.preparatorDetails = try container.decodeIfPresent(String.self, forKey: .preparatorDetails)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.managerFullName, forKey: .managerFullName)
            try container.encodeIfPresent(self.preparatorDetails, forKey: .preparatorDetails)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case fromDate
            case toDate
            case managerFullName
            case preparatorDetails
        }
    }
}
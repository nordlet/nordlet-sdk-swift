import Foundation

extension Requests {
    public struct PostV1CashOrdersCreateRequest: Codable, Hashable, Sendable {
        public let type: PostV1CashOrdersCreateRequestType
        public let date: String
        public let amount: String
        public let purpose: String
        public let counterAccountCode: String
        public let cashAccountCode: String?
        public let series: String?
        public let partnerId: String?
        public let employeeId: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            type: PostV1CashOrdersCreateRequestType,
            date: String,
            amount: String,
            purpose: String,
            counterAccountCode: String,
            cashAccountCode: String? = nil,
            series: String? = nil,
            partnerId: String? = nil,
            employeeId: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.type = type
            self.date = date
            self.amount = amount
            self.purpose = purpose
            self.counterAccountCode = counterAccountCode
            self.cashAccountCode = cashAccountCode
            self.series = series
            self.partnerId = partnerId
            self.employeeId = employeeId
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.type = try container.decode(PostV1CashOrdersCreateRequestType.self, forKey: .type)
            self.date = try container.decode(String.self, forKey: .date)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.purpose = try container.decode(String.self, forKey: .purpose)
            self.counterAccountCode = try container.decode(String.self, forKey: .counterAccountCode)
            self.cashAccountCode = try container.decodeIfPresent(String.self, forKey: .cashAccountCode)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.partnerId = try container.decodeIfPresent(String.self, forKey: .partnerId)
            self.employeeId = try container.decodeIfPresent(String.self, forKey: .employeeId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.type, forKey: .type)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.amount, forKey: .amount)
            try container.encode(self.purpose, forKey: .purpose)
            try container.encode(self.counterAccountCode, forKey: .counterAccountCode)
            try container.encodeIfPresent(self.cashAccountCode, forKey: .cashAccountCode)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encodeIfPresent(self.partnerId, forKey: .partnerId)
            try container.encodeIfPresent(self.employeeId, forKey: .employeeId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case type
            case date
            case amount
            case purpose
            case counterAccountCode
            case cashAccountCode
            case series
            case partnerId
            case employeeId
            case notes
        }
    }
}
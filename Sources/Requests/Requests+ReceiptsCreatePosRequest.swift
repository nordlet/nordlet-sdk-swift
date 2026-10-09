import Foundation

extension Requests {
    public struct ReceiptsCreatePosRequest: Codable, Hashable, Sendable {
        public let shiftId: String
        public let lines: [ReceiptsCreatePosRequestLinesItem]
        public let cashAmount: String?
        public let cardAmount: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            shiftId: String,
            lines: [ReceiptsCreatePosRequestLinesItem],
            cashAmount: String? = nil,
            cardAmount: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.shiftId = shiftId
            self.lines = lines
            self.cashAmount = cashAmount
            self.cardAmount = cardAmount
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.shiftId = try container.decode(String.self, forKey: .shiftId)
            self.lines = try container.decode([ReceiptsCreatePosRequestLinesItem].self, forKey: .lines)
            self.cashAmount = try container.decodeIfPresent(String.self, forKey: .cashAmount)
            self.cardAmount = try container.decodeIfPresent(String.self, forKey: .cardAmount)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.shiftId, forKey: .shiftId)
            try container.encode(self.lines, forKey: .lines)
            try container.encodeIfPresent(self.cashAmount, forKey: .cashAmount)
            try container.encodeIfPresent(self.cardAmount, forKey: .cardAmount)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case shiftId
            case lines
            case cashAmount
            case cardAmount
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1AssetsAssetsModernizeRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: String
        public let amount: String
        public let addedLifeMonths: Int64?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: String,
            amount: String,
            addedLifeMonths: Int64? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.amount = amount
            self.addedLifeMonths = addedLifeMonths
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decode(String.self, forKey: .date)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.addedLifeMonths = try container.decodeIfPresent(Int64.self, forKey: .addedLifeMonths)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.date, forKey: .date)
            try container.encode(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.addedLifeMonths, forKey: .addedLifeMonths)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case amount
            case addedLifeMonths
            case notes
        }
    }
}
import Foundation

extension Requests {
    public struct PostV1EcommerceOrdersFulfillRequest: Codable, Hashable, Sendable {
        public let id: String
        public let date: String?
        public let cogsAccountCode: String?
        public let inventoryAccountCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            date: String? = nil,
            cogsAccountCode: String? = nil,
            inventoryAccountCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.date = date
            self.cogsAccountCode = cogsAccountCode
            self.inventoryAccountCode = inventoryAccountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.date = try container.decodeIfPresent(String.self, forKey: .date)
            self.cogsAccountCode = try container.decodeIfPresent(String.self, forKey: .cogsAccountCode)
            self.inventoryAccountCode = try container.decodeIfPresent(String.self, forKey: .inventoryAccountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.date, forKey: .date)
            try container.encodeIfPresent(self.cogsAccountCode, forKey: .cogsAccountCode)
            try container.encodeIfPresent(self.inventoryAccountCode, forKey: .inventoryAccountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case date
            case cogsAccountCode
            case inventoryAccountCode
        }
    }
}
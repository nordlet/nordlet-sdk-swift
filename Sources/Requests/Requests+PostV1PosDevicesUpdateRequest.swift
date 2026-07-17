import Foundation

extension Requests {
    public struct PostV1PosDevicesUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let isActive: Bool?
        public let name: String?
        public let serialNumber: String?
        public let model: String?
        public let registrationNumber: String?
        public let address: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            isActive: Bool? = nil,
            name: String? = nil,
            serialNumber: String? = nil,
            model: String? = nil,
            registrationNumber: String? = nil,
            address: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.isActive = isActive
            self.name = name
            self.serialNumber = serialNumber
            self.model = model
            self.registrationNumber = registrationNumber
            self.address = address
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.isActive = try container.decodeIfPresent(Bool.self, forKey: .isActive)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.serialNumber = try container.decodeIfPresent(String.self, forKey: .serialNumber)
            self.model = try container.decodeIfPresent(String.self, forKey: .model)
            self.registrationNumber = try container.decodeIfPresent(String.self, forKey: .registrationNumber)
            self.address = try container.decodeIfPresent(String.self, forKey: .address)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.isActive, forKey: .isActive)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encodeIfPresent(self.serialNumber, forKey: .serialNumber)
            try container.encodeIfPresent(self.model, forKey: .model)
            try container.encodeIfPresent(self.registrationNumber, forKey: .registrationNumber)
            try container.encodeIfPresent(self.address, forKey: .address)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case isActive
            case name
            case serialNumber
            case model
            case registrationNumber
            case address
        }
    }
}
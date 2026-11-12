import Foundation

extension Requests {
    public struct BrandUpdateAccountRequest: Codable, Hashable, Sendable {
        public let name: Nullable<String>
        public let logoUrl: Nullable<String>
        public let color: Nullable<String>
        public let footer: Nullable<String>
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            name: Nullable<String>,
            logoUrl: Nullable<String>,
            color: Nullable<String>,
            footer: Nullable<String>,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.name = name
            self.logoUrl = logoUrl
            self.color = color
            self.footer = footer
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.name = try container.decode(Nullable<String>.self, forKey: .name)
            self.logoUrl = try container.decode(Nullable<String>.self, forKey: .logoUrl)
            self.color = try container.decode(Nullable<String>.self, forKey: .color)
            self.footer = try container.decode(Nullable<String>.self, forKey: .footer)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.name, forKey: .name)
            try container.encode(self.logoUrl, forKey: .logoUrl)
            try container.encode(self.color, forKey: .color)
            try container.encode(self.footer, forKey: .footer)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case name
            case logoUrl
            case color
            case footer
        }
    }
}
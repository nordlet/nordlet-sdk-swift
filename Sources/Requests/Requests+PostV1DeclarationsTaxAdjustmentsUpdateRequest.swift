import Foundation

extension Requests {
    public struct PostV1DeclarationsTaxAdjustmentsUpdateRequest: Codable, Hashable, Sendable {
        public let id: String
        public let kind: PostV1DeclarationsTaxAdjustmentsUpdateRequestKind?
        public let code: String?
        public let amount: String?
        public let description: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            kind: PostV1DeclarationsTaxAdjustmentsUpdateRequestKind? = nil,
            code: String? = nil,
            amount: String? = nil,
            description: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.kind = kind
            self.code = code
            self.amount = amount
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.kind = try container.decodeIfPresent(PostV1DeclarationsTaxAdjustmentsUpdateRequestKind.self, forKey: .kind)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.amount = try container.decodeIfPresent(String.self, forKey: .amount)
            self.description = try container.decodeIfPresent(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.kind, forKey: .kind)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encodeIfPresent(self.amount, forKey: .amount)
            try container.encodeIfPresent(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case kind
            case code
            case amount
            case description
        }
    }
}
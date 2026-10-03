import Foundation

extension Requests {
    public struct PostV1DeclarationsTaxAdjustmentsCreateRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let kind: PostV1DeclarationsTaxAdjustmentsCreateRequestKind
        public let code: String?
        public let amount: String
        public let description: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            kind: PostV1DeclarationsTaxAdjustmentsCreateRequestKind,
            code: String? = nil,
            amount: String,
            description: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.kind = kind
            self.code = code
            self.amount = amount
            self.description = description
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.kind = try container.decode(PostV1DeclarationsTaxAdjustmentsCreateRequestKind.self, forKey: .kind)
            self.code = try container.decodeIfPresent(String.self, forKey: .code)
            self.amount = try container.decode(String.self, forKey: .amount)
            self.description = try container.decode(String.self, forKey: .description)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.kind, forKey: .kind)
            try container.encodeIfPresent(self.code, forKey: .code)
            try container.encode(self.amount, forKey: .amount)
            try container.encode(self.description, forKey: .description)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case kind
            case code
            case amount
            case description
        }
    }
}
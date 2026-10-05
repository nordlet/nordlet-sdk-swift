import Foundation

extension Requests {
    public struct AnnualAccountsAttachmentsAddDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let kind: AnnualAccountsAttachmentsAddDeclarationsRequestKind
        public let name: String?
        public let ref: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            kind: AnnualAccountsAttachmentsAddDeclarationsRequestKind,
            name: String? = nil,
            ref: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.kind = kind
            self.name = name
            self.ref = ref
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.kind = try container.decode(AnnualAccountsAttachmentsAddDeclarationsRequestKind.self, forKey: .kind)
            self.name = try container.decodeIfPresent(String.self, forKey: .name)
            self.ref = try container.decode(String.self, forKey: .ref)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.kind, forKey: .kind)
            try container.encodeIfPresent(self.name, forKey: .name)
            try container.encode(self.ref, forKey: .ref)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case kind
            case name
            case ref
        }
    }
}
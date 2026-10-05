import Foundation

extension Requests {
    public struct LtCitiesListReferenceRequest: Codable, Hashable, Sendable {
        public let municipalityCode: String?
        public let q: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            municipalityCode: String? = nil,
            q: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.municipalityCode = municipalityCode
            self.q = q
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.municipalityCode = try container.decodeIfPresent(String.self, forKey: .municipalityCode)
            self.q = try container.decodeIfPresent(String.self, forKey: .q)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.municipalityCode, forKey: .municipalityCode)
            try container.encodeIfPresent(self.q, forKey: .q)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case municipalityCode
            case q
        }
    }
}
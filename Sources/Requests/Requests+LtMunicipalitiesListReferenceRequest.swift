import Foundation

extension Requests {
    public struct LtMunicipalitiesListReferenceRequest: Codable, Hashable, Sendable {
        public let countyCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            countyCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.countyCode = countyCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.countyCode = try container.decodeIfPresent(String.self, forKey: .countyCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.countyCode, forKey: .countyCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case countyCode
        }
    }
}
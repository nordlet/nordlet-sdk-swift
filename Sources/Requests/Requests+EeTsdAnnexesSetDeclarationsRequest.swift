import Foundation

extension Requests {
    public struct EeTsdAnnexesSetDeclarationsRequest: Codable, Hashable, Sendable {
        public let year: Int64
        public let month: Int64
        public let annex4: EeTsdAnnexesSetDeclarationsRequestAnnex4?
        public let annex5: EeTsdAnnexesSetDeclarationsRequestAnnex5?
        public let annex6: EeTsdAnnexesSetDeclarationsRequestAnnex6?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            year: Int64,
            month: Int64,
            annex4: EeTsdAnnexesSetDeclarationsRequestAnnex4? = nil,
            annex5: EeTsdAnnexesSetDeclarationsRequestAnnex5? = nil,
            annex6: EeTsdAnnexesSetDeclarationsRequestAnnex6? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.year = year
            self.month = month
            self.annex4 = annex4
            self.annex5 = annex5
            self.annex6 = annex6
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.year = try container.decode(Int64.self, forKey: .year)
            self.month = try container.decode(Int64.self, forKey: .month)
            self.annex4 = try container.decodeIfPresent(EeTsdAnnexesSetDeclarationsRequestAnnex4.self, forKey: .annex4)
            self.annex5 = try container.decodeIfPresent(EeTsdAnnexesSetDeclarationsRequestAnnex5.self, forKey: .annex5)
            self.annex6 = try container.decodeIfPresent(EeTsdAnnexesSetDeclarationsRequestAnnex6.self, forKey: .annex6)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.year, forKey: .year)
            try container.encode(self.month, forKey: .month)
            try container.encodeIfPresent(self.annex4, forKey: .annex4)
            try container.encodeIfPresent(self.annex5, forKey: .annex5)
            try container.encodeIfPresent(self.annex6, forKey: .annex6)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case year
            case month
            case annex4
            case annex5
            case annex6
        }
    }
}
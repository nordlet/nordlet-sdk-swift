import Foundation

extension Requests {
    public struct VatProrataAdjustmentPostDeclarationsRequest: Codable, Hashable, Sendable {
        public let fiscalYear: Int64
        public let accountCode: String
        public let definitivePercent: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            fiscalYear: Int64,
            accountCode: String,
            definitivePercent: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.fiscalYear = fiscalYear
            self.accountCode = accountCode
            self.definitivePercent = definitivePercent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.fiscalYear = try container.decode(Int64.self, forKey: .fiscalYear)
            self.accountCode = try container.decode(String.self, forKey: .accountCode)
            self.definitivePercent = try container.decodeIfPresent(String.self, forKey: .definitivePercent)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.fiscalYear, forKey: .fiscalYear)
            try container.encode(self.accountCode, forKey: .accountCode)
            try container.encodeIfPresent(self.definitivePercent, forKey: .definitivePercent)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case fiscalYear
            case accountCode
            case definitivePercent
        }
    }
}
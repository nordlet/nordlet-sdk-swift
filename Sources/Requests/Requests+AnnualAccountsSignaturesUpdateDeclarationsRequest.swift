import Foundation

extension Requests {
    public struct AnnualAccountsSignaturesUpdateDeclarationsRequest: Codable, Hashable, Sendable {
        public let id: String
        public let directorName: String
        public let directorType: AnnualAccountsSignaturesUpdateDeclarationsRequestDirectorType
        public let signed: Bool
        public let signedOn: CalendarDate?
        public let signedAt: Date?
        public let reasonNotSigned: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            directorName: String,
            directorType: AnnualAccountsSignaturesUpdateDeclarationsRequestDirectorType,
            signed: Bool,
            signedOn: CalendarDate? = nil,
            signedAt: Date? = nil,
            reasonNotSigned: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.directorName = directorName
            self.directorType = directorType
            self.signed = signed
            self.signedOn = signedOn
            self.signedAt = signedAt
            self.reasonNotSigned = reasonNotSigned
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.directorName = try container.decode(String.self, forKey: .directorName)
            self.directorType = try container.decode(AnnualAccountsSignaturesUpdateDeclarationsRequestDirectorType.self, forKey: .directorType)
            self.signed = try container.decode(Bool.self, forKey: .signed)
            self.signedOn = try container.decodeIfPresent(CalendarDate.self, forKey: .signedOn)
            self.signedAt = try container.decodeIfPresent(Date.self, forKey: .signedAt)
            self.reasonNotSigned = try container.decodeIfPresent(String.self, forKey: .reasonNotSigned)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.directorName, forKey: .directorName)
            try container.encode(self.directorType, forKey: .directorType)
            try container.encode(self.signed, forKey: .signed)
            try container.encodeIfPresent(self.signedOn, forKey: .signedOn)
            try container.encodeIfPresent(self.signedAt, forKey: .signedAt)
            try container.encodeIfPresent(self.reasonNotSigned, forKey: .reasonNotSigned)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case directorName
            case directorType
            case signed
            case signedOn
            case signedAt
            case reasonNotSigned
        }
    }
}
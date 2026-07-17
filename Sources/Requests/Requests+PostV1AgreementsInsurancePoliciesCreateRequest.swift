import Foundation

extension Requests {
    public struct PostV1AgreementsInsurancePoliciesCreateRequest: Codable, Hashable, Sendable {
        public let insurerPartnerId: String?
        public let policyNumber: String
        public let insuredObject: String
        public let fromDate: String
        public let toDate: String
        public let premium: String?
        public let currency: String?
        public let notes: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            insurerPartnerId: String? = nil,
            policyNumber: String,
            insuredObject: String,
            fromDate: String,
            toDate: String,
            premium: String? = nil,
            currency: String? = nil,
            notes: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.insurerPartnerId = insurerPartnerId
            self.policyNumber = policyNumber
            self.insuredObject = insuredObject
            self.fromDate = fromDate
            self.toDate = toDate
            self.premium = premium
            self.currency = currency
            self.notes = notes
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.insurerPartnerId = try container.decodeIfPresent(String.self, forKey: .insurerPartnerId)
            self.policyNumber = try container.decode(String.self, forKey: .policyNumber)
            self.insuredObject = try container.decode(String.self, forKey: .insuredObject)
            self.fromDate = try container.decode(String.self, forKey: .fromDate)
            self.toDate = try container.decode(String.self, forKey: .toDate)
            self.premium = try container.decodeIfPresent(String.self, forKey: .premium)
            self.currency = try container.decodeIfPresent(String.self, forKey: .currency)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.insurerPartnerId, forKey: .insurerPartnerId)
            try container.encode(self.policyNumber, forKey: .policyNumber)
            try container.encode(self.insuredObject, forKey: .insuredObject)
            try container.encode(self.fromDate, forKey: .fromDate)
            try container.encode(self.toDate, forKey: .toDate)
            try container.encodeIfPresent(self.premium, forKey: .premium)
            try container.encodeIfPresent(self.currency, forKey: .currency)
            try container.encodeIfPresent(self.notes, forKey: .notes)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case insurerPartnerId
            case policyNumber
            case insuredObject
            case fromDate
            case toDate
            case premium
            case currency
            case notes
        }
    }
}
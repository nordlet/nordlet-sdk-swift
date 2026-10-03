import Foundation

extension Requests {
    public struct PostV1PayrollCalcRequest: Codable, Hashable, Sendable {
        public let taxableBase: String
        public let date: String
        public let applyAllowance: Bool?
        public let allowanceOverride: String?
        public let pensionAccumulation: Bool?
        public let fixedTerm: Bool?
        public let benefitInKind: String?
        public let options: [String: String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taxableBase: String,
            date: String,
            applyAllowance: Bool? = nil,
            allowanceOverride: String? = nil,
            pensionAccumulation: Bool? = nil,
            fixedTerm: Bool? = nil,
            benefitInKind: String? = nil,
            options: [String: String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taxableBase = taxableBase
            self.date = date
            self.applyAllowance = applyAllowance
            self.allowanceOverride = allowanceOverride
            self.pensionAccumulation = pensionAccumulation
            self.fixedTerm = fixedTerm
            self.benefitInKind = benefitInKind
            self.options = options
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taxableBase = try container.decode(String.self, forKey: .taxableBase)
            self.date = try container.decode(String.self, forKey: .date)
            self.applyAllowance = try container.decodeIfPresent(Bool.self, forKey: .applyAllowance)
            self.allowanceOverride = try container.decodeIfPresent(String.self, forKey: .allowanceOverride)
            self.pensionAccumulation = try container.decodeIfPresent(Bool.self, forKey: .pensionAccumulation)
            self.fixedTerm = try container.decodeIfPresent(Bool.self, forKey: .fixedTerm)
            self.benefitInKind = try container.decodeIfPresent(String.self, forKey: .benefitInKind)
            self.options = try container.decodeIfPresent([String: String].self, forKey: .options)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taxableBase, forKey: .taxableBase)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.applyAllowance, forKey: .applyAllowance)
            try container.encodeIfPresent(self.allowanceOverride, forKey: .allowanceOverride)
            try container.encodeIfPresent(self.pensionAccumulation, forKey: .pensionAccumulation)
            try container.encodeIfPresent(self.fixedTerm, forKey: .fixedTerm)
            try container.encodeIfPresent(self.benefitInKind, forKey: .benefitInKind)
            try container.encodeIfPresent(self.options, forKey: .options)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taxableBase
            case date
            case applyAllowance
            case allowanceOverride
            case pensionAccumulation
            case fixedTerm
            case benefitInKind
            case options
        }
    }
}
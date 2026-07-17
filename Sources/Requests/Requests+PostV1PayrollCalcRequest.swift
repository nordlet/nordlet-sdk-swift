import Foundation

extension Requests {
    public struct PostV1PayrollCalcRequest: Codable, Hashable, Sendable {
        public let taxableBase: String
        public let date: String
        public let applyNpd: Bool?
        public let npdOverride: String?
        public let pensionAccumulation: Bool?
        public let fixedTerm: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            taxableBase: String,
            date: String,
            applyNpd: Bool? = nil,
            npdOverride: String? = nil,
            pensionAccumulation: Bool? = nil,
            fixedTerm: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.taxableBase = taxableBase
            self.date = date
            self.applyNpd = applyNpd
            self.npdOverride = npdOverride
            self.pensionAccumulation = pensionAccumulation
            self.fixedTerm = fixedTerm
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.taxableBase = try container.decode(String.self, forKey: .taxableBase)
            self.date = try container.decode(String.self, forKey: .date)
            self.applyNpd = try container.decodeIfPresent(Bool.self, forKey: .applyNpd)
            self.npdOverride = try container.decodeIfPresent(String.self, forKey: .npdOverride)
            self.pensionAccumulation = try container.decodeIfPresent(Bool.self, forKey: .pensionAccumulation)
            self.fixedTerm = try container.decodeIfPresent(Bool.self, forKey: .fixedTerm)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.taxableBase, forKey: .taxableBase)
            try container.encode(self.date, forKey: .date)
            try container.encodeIfPresent(self.applyNpd, forKey: .applyNpd)
            try container.encodeIfPresent(self.npdOverride, forKey: .npdOverride)
            try container.encodeIfPresent(self.pensionAccumulation, forKey: .pensionAccumulation)
            try container.encodeIfPresent(self.fixedTerm, forKey: .fixedTerm)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case taxableBase
            case date
            case applyNpd
            case npdOverride
            case pensionAccumulation
            case fixedTerm
        }
    }
}
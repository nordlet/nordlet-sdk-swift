import Foundation

extension Requests {
    public struct PostV1PayrollRunsApproveRequest: Codable, Hashable, Sendable {
        public let id: String
        public let wageAccountCode: String?
        public let employerAccountCode: String?
        public let payableAccountCode: String?
        public let gpmAccountCode: String?
        public let sodraAccountCode: String?
        public let deductionAccountCode: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            wageAccountCode: String? = nil,
            employerAccountCode: String? = nil,
            payableAccountCode: String? = nil,
            gpmAccountCode: String? = nil,
            sodraAccountCode: String? = nil,
            deductionAccountCode: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.wageAccountCode = wageAccountCode
            self.employerAccountCode = employerAccountCode
            self.payableAccountCode = payableAccountCode
            self.gpmAccountCode = gpmAccountCode
            self.sodraAccountCode = sodraAccountCode
            self.deductionAccountCode = deductionAccountCode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.wageAccountCode = try container.decodeIfPresent(String.self, forKey: .wageAccountCode)
            self.employerAccountCode = try container.decodeIfPresent(String.self, forKey: .employerAccountCode)
            self.payableAccountCode = try container.decodeIfPresent(String.self, forKey: .payableAccountCode)
            self.gpmAccountCode = try container.decodeIfPresent(String.self, forKey: .gpmAccountCode)
            self.sodraAccountCode = try container.decodeIfPresent(String.self, forKey: .sodraAccountCode)
            self.deductionAccountCode = try container.decodeIfPresent(String.self, forKey: .deductionAccountCode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encodeIfPresent(self.wageAccountCode, forKey: .wageAccountCode)
            try container.encodeIfPresent(self.employerAccountCode, forKey: .employerAccountCode)
            try container.encodeIfPresent(self.payableAccountCode, forKey: .payableAccountCode)
            try container.encodeIfPresent(self.gpmAccountCode, forKey: .gpmAccountCode)
            try container.encodeIfPresent(self.sodraAccountCode, forKey: .sodraAccountCode)
            try container.encodeIfPresent(self.deductionAccountCode, forKey: .deductionAccountCode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case wageAccountCode
            case employerAccountCode
            case payableAccountCode
            case gpmAccountCode
            case sodraAccountCode
            case deductionAccountCode
        }
    }
}
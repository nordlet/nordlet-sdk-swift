import Foundation

extension Requests {
    public struct PostV1AssetsAssetsInputVatRequest: Codable, Hashable, Sendable {
        public let id: String
        public let inputVatAmount: Nullable<String>
        public let inputVatFirstUseDate: Nullable<String>
        public let inputVatDeductiblePercent: Nullable<String>
        public let inputVatRealEstate: Bool
        public let inputVatUseChanges: [PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            id: String,
            inputVatAmount: Nullable<String>,
            inputVatFirstUseDate: Nullable<String>,
            inputVatDeductiblePercent: Nullable<String>,
            inputVatRealEstate: Bool,
            inputVatUseChanges: [PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.id = id
            self.inputVatAmount = inputVatAmount
            self.inputVatFirstUseDate = inputVatFirstUseDate
            self.inputVatDeductiblePercent = inputVatDeductiblePercent
            self.inputVatRealEstate = inputVatRealEstate
            self.inputVatUseChanges = inputVatUseChanges
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.id = try container.decode(String.self, forKey: .id)
            self.inputVatAmount = try container.decode(Nullable<String>.self, forKey: .inputVatAmount)
            self.inputVatFirstUseDate = try container.decode(Nullable<String>.self, forKey: .inputVatFirstUseDate)
            self.inputVatDeductiblePercent = try container.decode(Nullable<String>.self, forKey: .inputVatDeductiblePercent)
            self.inputVatRealEstate = try container.decode(Bool.self, forKey: .inputVatRealEstate)
            self.inputVatUseChanges = try container.decode([PostV1AssetsAssetsInputVatRequestInputVatUseChangesItem].self, forKey: .inputVatUseChanges)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.inputVatAmount, forKey: .inputVatAmount)
            try container.encode(self.inputVatFirstUseDate, forKey: .inputVatFirstUseDate)
            try container.encode(self.inputVatDeductiblePercent, forKey: .inputVatDeductiblePercent)
            try container.encode(self.inputVatRealEstate, forKey: .inputVatRealEstate)
            try container.encode(self.inputVatUseChanges, forKey: .inputVatUseChanges)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case id
            case inputVatAmount
            case inputVatFirstUseDate
            case inputVatDeductiblePercent
            case inputVatRealEstate
            case inputVatUseChanges
        }
    }
}
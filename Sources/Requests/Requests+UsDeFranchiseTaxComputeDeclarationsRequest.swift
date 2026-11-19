import Foundation

extension Requests {
    public struct UsDeFranchiseTaxComputeDeclarationsRequest: Codable, Hashable, Sendable {
        public let authorizedShares: [UsDeFranchiseTaxComputeDeclarationsRequestAuthorizedSharesItem]
        public let issuedShares: Int64?
        public let totalGrossAssets: String?
        public let largeCorporateFiler: Bool?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            authorizedShares: [UsDeFranchiseTaxComputeDeclarationsRequestAuthorizedSharesItem],
            issuedShares: Int64? = nil,
            totalGrossAssets: String? = nil,
            largeCorporateFiler: Bool? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.authorizedShares = authorizedShares
            self.issuedShares = issuedShares
            self.totalGrossAssets = totalGrossAssets
            self.largeCorporateFiler = largeCorporateFiler
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.authorizedShares = try container.decode([UsDeFranchiseTaxComputeDeclarationsRequestAuthorizedSharesItem].self, forKey: .authorizedShares)
            self.issuedShares = try container.decodeIfPresent(Int64.self, forKey: .issuedShares)
            self.totalGrossAssets = try container.decodeIfPresent(String.self, forKey: .totalGrossAssets)
            self.largeCorporateFiler = try container.decodeIfPresent(Bool.self, forKey: .largeCorporateFiler)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.authorizedShares, forKey: .authorizedShares)
            try container.encodeIfPresent(self.issuedShares, forKey: .issuedShares)
            try container.encodeIfPresent(self.totalGrossAssets, forKey: .totalGrossAssets)
            try container.encodeIfPresent(self.largeCorporateFiler, forKey: .largeCorporateFiler)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case authorizedShares
            case issuedShares
            case totalGrossAssets
            case largeCorporateFiler
        }
    }
}
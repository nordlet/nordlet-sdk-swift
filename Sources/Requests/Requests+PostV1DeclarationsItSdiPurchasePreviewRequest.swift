import Foundation

extension Requests {
    public struct PostV1DeclarationsItSdiPurchasePreviewRequest: Codable, Hashable, Sendable {
        public let purchaseInvoiceId: String
        public let vatRatePercent: String?
        public let tipoDocumento: PostV1DeclarationsItSdiPurchasePreviewRequestTipoDocumento?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            purchaseInvoiceId: String,
            vatRatePercent: String? = nil,
            tipoDocumento: PostV1DeclarationsItSdiPurchasePreviewRequestTipoDocumento? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.purchaseInvoiceId = purchaseInvoiceId
            self.vatRatePercent = vatRatePercent
            self.tipoDocumento = tipoDocumento
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.purchaseInvoiceId = try container.decode(String.self, forKey: .purchaseInvoiceId)
            self.vatRatePercent = try container.decodeIfPresent(String.self, forKey: .vatRatePercent)
            self.tipoDocumento = try container.decodeIfPresent(PostV1DeclarationsItSdiPurchasePreviewRequestTipoDocumento.self, forKey: .tipoDocumento)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.purchaseInvoiceId, forKey: .purchaseInvoiceId)
            try container.encodeIfPresent(self.vatRatePercent, forKey: .vatRatePercent)
            try container.encodeIfPresent(self.tipoDocumento, forKey: .tipoDocumento)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case purchaseInvoiceId
            case vatRatePercent
            case tipoDocumento
        }
    }
}
import Foundation

public struct PostV1DeclarationsItSdiPurchasePreviewResponse: Codable, Hashable, Sendable {
    public let tipoDocumento: PostV1DeclarationsItSdiPurchasePreviewResponseTipoDocumento
    public let fileName: String
    public let contentType: String
    public let data: String
    public let net: String
    public let vat: String
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        tipoDocumento: PostV1DeclarationsItSdiPurchasePreviewResponseTipoDocumento,
        fileName: String,
        contentType: String,
        data: String,
        net: String,
        vat: String,
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.tipoDocumento = tipoDocumento
        self.fileName = fileName
        self.contentType = contentType
        self.data = data
        self.net = net
        self.vat = vat
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.tipoDocumento = try container.decode(PostV1DeclarationsItSdiPurchasePreviewResponseTipoDocumento.self, forKey: .tipoDocumento)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.contentType = try container.decode(String.self, forKey: .contentType)
        self.data = try container.decode(String.self, forKey: .data)
        self.net = try container.decode(String.self, forKey: .net)
        self.vat = try container.decode(String.self, forKey: .vat)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.tipoDocumento, forKey: .tipoDocumento)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.contentType, forKey: .contentType)
        try container.encode(self.data, forKey: .data)
        try container.encode(self.net, forKey: .net)
        try container.encode(self.vat, forKey: .vat)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case tipoDocumento
        case fileName
        case contentType
        case data
        case net
        case vat
        case warnings
    }
}
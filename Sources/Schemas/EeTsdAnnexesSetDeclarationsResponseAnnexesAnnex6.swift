import Foundation

public struct EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6: Codable, Hashable, Sendable {
    public let fields: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6FieldsItem]
    public let reductions: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6ReductionsItem]
    public let relatedParties: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6RelatedPartiesItem]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        fields: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6FieldsItem],
        reductions: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6ReductionsItem],
        relatedParties: [EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6RelatedPartiesItem],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.fields = fields
        self.reductions = reductions
        self.relatedParties = relatedParties
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.fields = try container.decode([EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6FieldsItem].self, forKey: .fields)
        self.reductions = try container.decode([EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6ReductionsItem].self, forKey: .reductions)
        self.relatedParties = try container.decode([EeTsdAnnexesSetDeclarationsResponseAnnexesAnnex6RelatedPartiesItem].self, forKey: .relatedParties)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.reductions, forKey: .reductions)
        try container.encode(self.relatedParties, forKey: .relatedParties)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case fields
        case reductions
        case relatedParties
    }
}
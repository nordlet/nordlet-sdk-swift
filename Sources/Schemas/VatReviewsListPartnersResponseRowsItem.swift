import Foundation

public struct VatReviewsListPartnersResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let vatCode: String
    public let reason: VatReviewsListPartnersResponseRowsItemReason
    public let status: VatReviewsListPartnersResponseRowsItemStatus
    public let resolution: Nullable<VatReviewsListPartnersResponseRowsItemResolution>
    public let resolutionNote: Nullable<String>
    public let details: Nullable<VatReviewsListPartnersResponseRowsItemDetails>
    public let resolvedAt: Nullable<Date>
    public let createdAt: Date
    public let updatedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        vatCode: String,
        reason: VatReviewsListPartnersResponseRowsItemReason,
        status: VatReviewsListPartnersResponseRowsItemStatus,
        resolution: Nullable<VatReviewsListPartnersResponseRowsItemResolution>,
        resolutionNote: Nullable<String>,
        details: Nullable<VatReviewsListPartnersResponseRowsItemDetails>,
        resolvedAt: Nullable<Date>,
        createdAt: Date,
        updatedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.partnerId = partnerId
        self.vatCode = vatCode
        self.reason = reason
        self.status = status
        self.resolution = resolution
        self.resolutionNote = resolutionNote
        self.details = details
        self.resolvedAt = resolvedAt
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.partnerId = try container.decode(String.self, forKey: .partnerId)
        self.vatCode = try container.decode(String.self, forKey: .vatCode)
        self.reason = try container.decode(VatReviewsListPartnersResponseRowsItemReason.self, forKey: .reason)
        self.status = try container.decode(VatReviewsListPartnersResponseRowsItemStatus.self, forKey: .status)
        self.resolution = try container.decode(Nullable<VatReviewsListPartnersResponseRowsItemResolution>.self, forKey: .resolution)
        self.resolutionNote = try container.decode(Nullable<String>.self, forKey: .resolutionNote)
        self.details = try container.decode(Nullable<VatReviewsListPartnersResponseRowsItemDetails>.self, forKey: .details)
        self.resolvedAt = try container.decode(Nullable<Date>.self, forKey: .resolvedAt)
        self.createdAt = try container.decode(Date.self, forKey: .createdAt)
        self.updatedAt = try container.decode(Date.self, forKey: .updatedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.partnerId, forKey: .partnerId)
        try container.encode(self.vatCode, forKey: .vatCode)
        try container.encode(self.reason, forKey: .reason)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.resolution, forKey: .resolution)
        try container.encode(self.resolutionNote, forKey: .resolutionNote)
        try container.encode(self.details, forKey: .details)
        try container.encode(self.resolvedAt, forKey: .resolvedAt)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.updatedAt, forKey: .updatedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case partnerId
        case vatCode
        case reason
        case status
        case resolution
        case resolutionNote
        case details
        case resolvedAt
        case createdAt
        case updatedAt
    }
}
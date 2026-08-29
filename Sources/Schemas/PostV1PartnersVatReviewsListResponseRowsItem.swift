import Foundation

public struct PostV1PartnersVatReviewsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let partnerId: String
    public let vatCode: String
    public let reason: PostV1PartnersVatReviewsListResponseRowsItemReason
    public let status: PostV1PartnersVatReviewsListResponseRowsItemStatus
    public let resolution: Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>
    public let resolutionNote: Nullable<String>
    public let details: Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>
    public let resolvedAt: Nullable<String>
    public let createdAt: String
    public let updatedAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        partnerId: String,
        vatCode: String,
        reason: PostV1PartnersVatReviewsListResponseRowsItemReason,
        status: PostV1PartnersVatReviewsListResponseRowsItemStatus,
        resolution: Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>,
        resolutionNote: Nullable<String>,
        details: Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>,
        resolvedAt: Nullable<String>,
        createdAt: String,
        updatedAt: String,
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
        self.reason = try container.decode(PostV1PartnersVatReviewsListResponseRowsItemReason.self, forKey: .reason)
        self.status = try container.decode(PostV1PartnersVatReviewsListResponseRowsItemStatus.self, forKey: .status)
        self.resolution = try container.decode(Nullable<PostV1PartnersVatReviewsListResponseRowsItemResolution>.self, forKey: .resolution)
        self.resolutionNote = try container.decode(Nullable<String>.self, forKey: .resolutionNote)
        self.details = try container.decode(Nullable<PostV1PartnersVatReviewsListResponseRowsItemDetails>.self, forKey: .details)
        self.resolvedAt = try container.decode(Nullable<String>.self, forKey: .resolvedAt)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.updatedAt = try container.decode(String.self, forKey: .updatedAt)
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
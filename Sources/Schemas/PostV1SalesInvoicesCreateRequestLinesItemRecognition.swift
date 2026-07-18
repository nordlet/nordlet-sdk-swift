import Foundation

public struct PostV1SalesInvoicesCreateRequestLinesItemRecognition: Codable, Hashable, Sendable {
    public let method: PostV1SalesInvoicesCreateRequestLinesItemRecognitionMethod?
    public let startDate: String?
    public let endDate: String?
    public let milestones: [PostV1SalesInvoicesCreateRequestLinesItemRecognitionMilestonesItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        method: PostV1SalesInvoicesCreateRequestLinesItemRecognitionMethod? = nil,
        startDate: String? = nil,
        endDate: String? = nil,
        milestones: [PostV1SalesInvoicesCreateRequestLinesItemRecognitionMilestonesItem]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.method = method
        self.startDate = startDate
        self.endDate = endDate
        self.milestones = milestones
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.method = try container.decodeIfPresent(PostV1SalesInvoicesCreateRequestLinesItemRecognitionMethod.self, forKey: .method)
        self.startDate = try container.decodeIfPresent(String.self, forKey: .startDate)
        self.endDate = try container.decodeIfPresent(String.self, forKey: .endDate)
        self.milestones = try container.decodeIfPresent([PostV1SalesInvoicesCreateRequestLinesItemRecognitionMilestonesItem].self, forKey: .milestones)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.method, forKey: .method)
        try container.encodeIfPresent(self.startDate, forKey: .startDate)
        try container.encodeIfPresent(self.endDate, forKey: .endDate)
        try container.encodeIfPresent(self.milestones, forKey: .milestones)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case method
        case startDate
        case endDate
        case milestones
    }
}
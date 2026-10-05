import Foundation

public struct InvoicesCreateSalesRequestLinesItemRecognition: Codable, Hashable, Sendable {
    public let method: InvoicesCreateSalesRequestLinesItemRecognitionMethod?
    public let startDate: CalendarDate?
    public let endDate: CalendarDate?
    public let milestones: [InvoicesCreateSalesRequestLinesItemRecognitionMilestonesItem]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        method: InvoicesCreateSalesRequestLinesItemRecognitionMethod? = nil,
        startDate: CalendarDate? = nil,
        endDate: CalendarDate? = nil,
        milestones: [InvoicesCreateSalesRequestLinesItemRecognitionMilestonesItem]? = nil,
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
        self.method = try container.decodeIfPresent(InvoicesCreateSalesRequestLinesItemRecognitionMethod.self, forKey: .method)
        self.startDate = try container.decodeIfPresent(CalendarDate.self, forKey: .startDate)
        self.endDate = try container.decodeIfPresent(CalendarDate.self, forKey: .endDate)
        self.milestones = try container.decodeIfPresent([InvoicesCreateSalesRequestLinesItemRecognitionMilestonesItem].self, forKey: .milestones)
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
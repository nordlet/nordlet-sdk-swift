import Foundation

public struct UsIncomeTaxReturnGetDeclarationsResponse: Codable, Hashable, Sendable {
    public let form: UsIncomeTaxReturnGetDeclarationsResponseForm
    public let scheme: String
    public let fromDate: CalendarDate
    public let toDate: CalendarDate
    public let page1: [UsIncomeTaxReturnGetDeclarationsResponsePage1Item]
    public let scheduleL: [UsIncomeTaxReturnGetDeclarationsResponseScheduleLItem]
    public let otherLines: [UsIncomeTaxReturnGetDeclarationsResponseOtherLinesItem]
    public let warnings: [String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        form: UsIncomeTaxReturnGetDeclarationsResponseForm,
        scheme: String,
        fromDate: CalendarDate,
        toDate: CalendarDate,
        page1: [UsIncomeTaxReturnGetDeclarationsResponsePage1Item],
        scheduleL: [UsIncomeTaxReturnGetDeclarationsResponseScheduleLItem],
        otherLines: [UsIncomeTaxReturnGetDeclarationsResponseOtherLinesItem],
        warnings: [String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.form = form
        self.scheme = scheme
        self.fromDate = fromDate
        self.toDate = toDate
        self.page1 = page1
        self.scheduleL = scheduleL
        self.otherLines = otherLines
        self.warnings = warnings
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.form = try container.decode(UsIncomeTaxReturnGetDeclarationsResponseForm.self, forKey: .form)
        self.scheme = try container.decode(String.self, forKey: .scheme)
        self.fromDate = try container.decode(CalendarDate.self, forKey: .fromDate)
        self.toDate = try container.decode(CalendarDate.self, forKey: .toDate)
        self.page1 = try container.decode([UsIncomeTaxReturnGetDeclarationsResponsePage1Item].self, forKey: .page1)
        self.scheduleL = try container.decode([UsIncomeTaxReturnGetDeclarationsResponseScheduleLItem].self, forKey: .scheduleL)
        self.otherLines = try container.decode([UsIncomeTaxReturnGetDeclarationsResponseOtherLinesItem].self, forKey: .otherLines)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.form, forKey: .form)
        try container.encode(self.scheme, forKey: .scheme)
        try container.encode(self.fromDate, forKey: .fromDate)
        try container.encode(self.toDate, forKey: .toDate)
        try container.encode(self.page1, forKey: .page1)
        try container.encode(self.scheduleL, forKey: .scheduleL)
        try container.encode(self.otherLines, forKey: .otherLines)
        try container.encode(self.warnings, forKey: .warnings)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case form
        case scheme
        case fromDate
        case toDate
        case page1
        case scheduleL
        case otherLines
        case warnings
    }
}
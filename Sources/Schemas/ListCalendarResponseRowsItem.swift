import Foundation

public struct ListCalendarResponseRowsItem: Codable, Hashable, Sendable {
    public let key: String
    public let id: Nullable<String>
    public let kind: ListCalendarResponseRowsItemKind
    public let ruleKey: Nullable<String>
    public let period: Nullable<String>
    public let title: String
    public let dueDate: CalendarDate
    public let notes: Nullable<String>
    public let done: Bool
    public let href: Nullable<String>
    public let submission: Nullable<ListCalendarResponseRowsItemSubmission>
    public let submissions: [ListCalendarResponseRowsItemSubmissionsItem]
    public let canSubmit: Bool
    public let canAmend: Bool
    public let canDownload: Bool
    public let automated: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        key: String,
        id: Nullable<String>,
        kind: ListCalendarResponseRowsItemKind,
        ruleKey: Nullable<String>,
        period: Nullable<String>,
        title: String,
        dueDate: CalendarDate,
        notes: Nullable<String>,
        done: Bool,
        href: Nullable<String>,
        submission: Nullable<ListCalendarResponseRowsItemSubmission>,
        submissions: [ListCalendarResponseRowsItemSubmissionsItem],
        canSubmit: Bool,
        canAmend: Bool,
        canDownload: Bool,
        automated: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.key = key
        self.id = id
        self.kind = kind
        self.ruleKey = ruleKey
        self.period = period
        self.title = title
        self.dueDate = dueDate
        self.notes = notes
        self.done = done
        self.href = href
        self.submission = submission
        self.submissions = submissions
        self.canSubmit = canSubmit
        self.canAmend = canAmend
        self.canDownload = canDownload
        self.automated = automated
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.key = try container.decode(String.self, forKey: .key)
        self.id = try container.decode(Nullable<String>.self, forKey: .id)
        self.kind = try container.decode(ListCalendarResponseRowsItemKind.self, forKey: .kind)
        self.ruleKey = try container.decode(Nullable<String>.self, forKey: .ruleKey)
        self.period = try container.decode(Nullable<String>.self, forKey: .period)
        self.title = try container.decode(String.self, forKey: .title)
        self.dueDate = try container.decode(CalendarDate.self, forKey: .dueDate)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.done = try container.decode(Bool.self, forKey: .done)
        self.href = try container.decode(Nullable<String>.self, forKey: .href)
        self.submission = try container.decode(Nullable<ListCalendarResponseRowsItemSubmission>.self, forKey: .submission)
        self.submissions = try container.decode([ListCalendarResponseRowsItemSubmissionsItem].self, forKey: .submissions)
        self.canSubmit = try container.decode(Bool.self, forKey: .canSubmit)
        self.canAmend = try container.decode(Bool.self, forKey: .canAmend)
        self.canDownload = try container.decode(Bool.self, forKey: .canDownload)
        self.automated = try container.decode(Bool.self, forKey: .automated)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.key, forKey: .key)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.ruleKey, forKey: .ruleKey)
        try container.encode(self.period, forKey: .period)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.dueDate, forKey: .dueDate)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.done, forKey: .done)
        try container.encode(self.href, forKey: .href)
        try container.encode(self.submission, forKey: .submission)
        try container.encode(self.submissions, forKey: .submissions)
        try container.encode(self.canSubmit, forKey: .canSubmit)
        try container.encode(self.canAmend, forKey: .canAmend)
        try container.encode(self.canDownload, forKey: .canDownload)
        try container.encode(self.automated, forKey: .automated)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case key
        case id
        case kind
        case ruleKey
        case period
        case title
        case dueDate
        case notes
        case done
        case href
        case submission
        case submissions
        case canSubmit
        case canAmend
        case canDownload
        case automated
    }
}
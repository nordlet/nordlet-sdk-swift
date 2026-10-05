import Foundation

public struct IeB1GenerateDeclarationsResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let croNumber: String
    public let companyName: String
    public let annualReturnDate: Nullable<CalendarDate>
    public let fileName: String
    public let xml: String
    public let fields: [IeB1GenerateDeclarationsResponseFieldsItem]
    public let directors: [IeB1GenerateDeclarationsResponseDirectorsItem]
    public let secretary: Nullable<IeB1GenerateDeclarationsResponseSecretary>
    public let members: [IeB1GenerateDeclarationsResponseMembersItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        croNumber: String,
        companyName: String,
        annualReturnDate: Nullable<CalendarDate>,
        fileName: String,
        xml: String,
        fields: [IeB1GenerateDeclarationsResponseFieldsItem],
        directors: [IeB1GenerateDeclarationsResponseDirectorsItem],
        secretary: Nullable<IeB1GenerateDeclarationsResponseSecretary>,
        members: [IeB1GenerateDeclarationsResponseMembersItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.croNumber = croNumber
        self.companyName = companyName
        self.annualReturnDate = annualReturnDate
        self.fileName = fileName
        self.xml = xml
        self.fields = fields
        self.directors = directors
        self.secretary = secretary
        self.members = members
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.croNumber = try container.decode(String.self, forKey: .croNumber)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.annualReturnDate = try container.decode(Nullable<CalendarDate>.self, forKey: .annualReturnDate)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.fields = try container.decode([IeB1GenerateDeclarationsResponseFieldsItem].self, forKey: .fields)
        self.directors = try container.decode([IeB1GenerateDeclarationsResponseDirectorsItem].self, forKey: .directors)
        self.secretary = try container.decode(Nullable<IeB1GenerateDeclarationsResponseSecretary>.self, forKey: .secretary)
        self.members = try container.decode([IeB1GenerateDeclarationsResponseMembersItem].self, forKey: .members)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.croNumber, forKey: .croNumber)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.annualReturnDate, forKey: .annualReturnDate)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.directors, forKey: .directors)
        try container.encode(self.secretary, forKey: .secretary)
        try container.encode(self.members, forKey: .members)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case croNumber
        case companyName
        case annualReturnDate
        case fileName
        case xml
        case fields
        case directors
        case secretary
        case members
        case warnings
        case notes
        case source
    }
}
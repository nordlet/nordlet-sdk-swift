import Foundation

public struct PostV1DeclarationsMtAnnualReturnGenerateResponse: Codable, Hashable, Sendable {
    public let year: Int64
    public let madeUpTo: Nullable<String>
    public let mbrNumber: String
    public let companyName: String
    public let fileName: String
    public let xml: String
    public let pdfFileName: String
    public let pdf: String
    public let formSource: String
    public let fields: [PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem]
    public let members: [PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem]
    public let officers: [PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem]
    public let warnings: [String]
    public let notes: [String]
    public let source: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        year: Int64,
        madeUpTo: Nullable<String>,
        mbrNumber: String,
        companyName: String,
        fileName: String,
        xml: String,
        pdfFileName: String,
        pdf: String,
        formSource: String,
        fields: [PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem],
        members: [PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem],
        officers: [PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem],
        warnings: [String],
        notes: [String],
        source: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.year = year
        self.madeUpTo = madeUpTo
        self.mbrNumber = mbrNumber
        self.companyName = companyName
        self.fileName = fileName
        self.xml = xml
        self.pdfFileName = pdfFileName
        self.pdf = pdf
        self.formSource = formSource
        self.fields = fields
        self.members = members
        self.officers = officers
        self.warnings = warnings
        self.notes = notes
        self.source = source
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.year = try container.decode(Int64.self, forKey: .year)
        self.madeUpTo = try container.decode(Nullable<String>.self, forKey: .madeUpTo)
        self.mbrNumber = try container.decode(String.self, forKey: .mbrNumber)
        self.companyName = try container.decode(String.self, forKey: .companyName)
        self.fileName = try container.decode(String.self, forKey: .fileName)
        self.xml = try container.decode(String.self, forKey: .xml)
        self.pdfFileName = try container.decode(String.self, forKey: .pdfFileName)
        self.pdf = try container.decode(String.self, forKey: .pdf)
        self.formSource = try container.decode(String.self, forKey: .formSource)
        self.fields = try container.decode([PostV1DeclarationsMtAnnualReturnGenerateResponseFieldsItem].self, forKey: .fields)
        self.members = try container.decode([PostV1DeclarationsMtAnnualReturnGenerateResponseMembersItem].self, forKey: .members)
        self.officers = try container.decode([PostV1DeclarationsMtAnnualReturnGenerateResponseOfficersItem].self, forKey: .officers)
        self.warnings = try container.decode([String].self, forKey: .warnings)
        self.notes = try container.decode([String].self, forKey: .notes)
        self.source = try container.decode(String.self, forKey: .source)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.year, forKey: .year)
        try container.encode(self.madeUpTo, forKey: .madeUpTo)
        try container.encode(self.mbrNumber, forKey: .mbrNumber)
        try container.encode(self.companyName, forKey: .companyName)
        try container.encode(self.fileName, forKey: .fileName)
        try container.encode(self.xml, forKey: .xml)
        try container.encode(self.pdfFileName, forKey: .pdfFileName)
        try container.encode(self.pdf, forKey: .pdf)
        try container.encode(self.formSource, forKey: .formSource)
        try container.encode(self.fields, forKey: .fields)
        try container.encode(self.members, forKey: .members)
        try container.encode(self.officers, forKey: .officers)
        try container.encode(self.warnings, forKey: .warnings)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.source, forKey: .source)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case year
        case madeUpTo
        case mbrNumber
        case companyName
        case fileName
        case xml
        case pdfFileName
        case pdf
        case formSource
        case fields
        case members
        case officers
        case warnings
        case notes
        case source
    }
}
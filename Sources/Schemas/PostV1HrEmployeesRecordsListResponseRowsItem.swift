import Foundation

public struct PostV1HrEmployeesRecordsListResponseRowsItem: Codable, Hashable, Sendable {
    public let id: String
    public let employeeId: String
    public let type: PostV1HrEmployeesRecordsListResponseRowsItemType
    public let title: String
    public let institution: Nullable<String>
    public let issuedAt: Nullable<String>
    public let validUntil: Nullable<String>
    public let fileId: Nullable<String>
    public let notes: Nullable<String>
    public let createdAt: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        employeeId: String,
        type: PostV1HrEmployeesRecordsListResponseRowsItemType,
        title: String,
        institution: Nullable<String>,
        issuedAt: Nullable<String>,
        validUntil: Nullable<String>,
        fileId: Nullable<String>,
        notes: Nullable<String>,
        createdAt: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.employeeId = employeeId
        self.type = type
        self.title = title
        self.institution = institution
        self.issuedAt = issuedAt
        self.validUntil = validUntil
        self.fileId = fileId
        self.notes = notes
        self.createdAt = createdAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employeeId = try container.decode(String.self, forKey: .employeeId)
        self.type = try container.decode(PostV1HrEmployeesRecordsListResponseRowsItemType.self, forKey: .type)
        self.title = try container.decode(String.self, forKey: .title)
        self.institution = try container.decode(Nullable<String>.self, forKey: .institution)
        self.issuedAt = try container.decode(Nullable<String>.self, forKey: .issuedAt)
        self.validUntil = try container.decode(Nullable<String>.self, forKey: .validUntil)
        self.fileId = try container.decode(Nullable<String>.self, forKey: .fileId)
        self.notes = try container.decode(Nullable<String>.self, forKey: .notes)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.employeeId, forKey: .employeeId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.title, forKey: .title)
        try container.encode(self.institution, forKey: .institution)
        try container.encode(self.issuedAt, forKey: .issuedAt)
        try container.encode(self.validUntil, forKey: .validUntil)
        try container.encode(self.fileId, forKey: .fileId)
        try container.encode(self.notes, forKey: .notes)
        try container.encode(self.createdAt, forKey: .createdAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case employeeId
        case type
        case title
        case institution
        case issuedAt
        case validUntil
        case fileId
        case notes
        case createdAt
    }
}
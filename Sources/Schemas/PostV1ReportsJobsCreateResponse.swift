import Foundation

public struct PostV1ReportsJobsCreateResponse: Codable, Hashable, Sendable {
    public let id: String
    public let reportType: String
    public let params: JSONValue
    public let formats: [String]
    public let status: PostV1ReportsJobsCreateResponseStatus
    public let error: Nullable<String>
    public let outputs: Nullable<[PostV1ReportsJobsCreateResponseOutputsItem]>
    public let createdAt: String
    public let startedAt: Nullable<String>
    public let finishedAt: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        reportType: String,
        params: JSONValue,
        formats: [String],
        status: PostV1ReportsJobsCreateResponseStatus,
        error: Nullable<String>,
        outputs: Nullable<[PostV1ReportsJobsCreateResponseOutputsItem]>,
        createdAt: String,
        startedAt: Nullable<String>,
        finishedAt: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.reportType = reportType
        self.params = params
        self.formats = formats
        self.status = status
        self.error = error
        self.outputs = outputs
        self.createdAt = createdAt
        self.startedAt = startedAt
        self.finishedAt = finishedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.reportType = try container.decode(String.self, forKey: .reportType)
        self.params = try container.decode(JSONValue.self, forKey: .params)
        self.formats = try container.decode([String].self, forKey: .formats)
        self.status = try container.decode(PostV1ReportsJobsCreateResponseStatus.self, forKey: .status)
        self.error = try container.decode(Nullable<String>.self, forKey: .error)
        self.outputs = try container.decode(Nullable<[PostV1ReportsJobsCreateResponseOutputsItem]>.self, forKey: .outputs)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.startedAt = try container.decode(Nullable<String>.self, forKey: .startedAt)
        self.finishedAt = try container.decode(Nullable<String>.self, forKey: .finishedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.reportType, forKey: .reportType)
        try container.encode(self.params, forKey: .params)
        try container.encode(self.formats, forKey: .formats)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.error, forKey: .error)
        try container.encode(self.outputs, forKey: .outputs)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.startedAt, forKey: .startedAt)
        try container.encode(self.finishedAt, forKey: .finishedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case reportType
        case params
        case formats
        case status
        case error
        case outputs
        case createdAt
        case startedAt
        case finishedAt
    }
}
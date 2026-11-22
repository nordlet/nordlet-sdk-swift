import Foundation

public struct GbP45GetDeclarationsResponseEmployee: Codable, Hashable, Sendable {
    public let nino: Nullable<String>
    public let surname: String
    public let firstNames: String
    public let leavingDate: CalendarDate
    public let payrollNumber: Nullable<String>
    public let gender: Nullable<GbP45GetDeclarationsResponseEmployeeGender>
    public let dateOfBirth: Nullable<String>
    public let address: [String]
    public let postcode: Nullable<String>
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        nino: Nullable<String>,
        surname: String,
        firstNames: String,
        leavingDate: CalendarDate,
        payrollNumber: Nullable<String>,
        gender: Nullable<GbP45GetDeclarationsResponseEmployeeGender>,
        dateOfBirth: Nullable<String>,
        address: [String],
        postcode: Nullable<String>,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.nino = nino
        self.surname = surname
        self.firstNames = firstNames
        self.leavingDate = leavingDate
        self.payrollNumber = payrollNumber
        self.gender = gender
        self.dateOfBirth = dateOfBirth
        self.address = address
        self.postcode = postcode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.nino = try container.decode(Nullable<String>.self, forKey: .nino)
        self.surname = try container.decode(String.self, forKey: .surname)
        self.firstNames = try container.decode(String.self, forKey: .firstNames)
        self.leavingDate = try container.decode(CalendarDate.self, forKey: .leavingDate)
        self.payrollNumber = try container.decode(Nullable<String>.self, forKey: .payrollNumber)
        self.gender = try container.decode(Nullable<GbP45GetDeclarationsResponseEmployeeGender>.self, forKey: .gender)
        self.dateOfBirth = try container.decode(Nullable<String>.self, forKey: .dateOfBirth)
        self.address = try container.decode([String].self, forKey: .address)
        self.postcode = try container.decode(Nullable<String>.self, forKey: .postcode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.nino, forKey: .nino)
        try container.encode(self.surname, forKey: .surname)
        try container.encode(self.firstNames, forKey: .firstNames)
        try container.encode(self.leavingDate, forKey: .leavingDate)
        try container.encode(self.payrollNumber, forKey: .payrollNumber)
        try container.encode(self.gender, forKey: .gender)
        try container.encode(self.dateOfBirth, forKey: .dateOfBirth)
        try container.encode(self.address, forKey: .address)
        try container.encode(self.postcode, forKey: .postcode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case nino
        case surname
        case firstNames
        case leavingDate
        case payrollNumber
        case gender
        case dateOfBirth
        case address
        case postcode
    }
}
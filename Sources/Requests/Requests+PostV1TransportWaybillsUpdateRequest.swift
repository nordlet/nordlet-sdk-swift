import Foundation

extension Requests {
    public struct PostV1TransportWaybillsUpdateRequest: Codable, Hashable, Sendable {
        public let consigneePartnerId: String?
        public let transporterPartnerId: Nullable<String>?
        public let documentDate: String?
        public let dispatchAt: Date?
        public let estimatedArrivalAt: Nullable<Date>?
        public let vehiclePlate: Nullable<String>?
        public let trailerPlate: Nullable<String>?
        public let driverName: Nullable<String>?
        public let driverSurname: Nullable<String>?
        public let loadWarehouseId: Nullable<String>?
        public let loadAddress: String?
        public let unloadAddress: String?
        public let valueEur: Nullable<String>?
        public let saleInvoiceId: Nullable<String>?
        public let notes: Nullable<String>?
        public let series: String?
        public let lines: [PostV1TransportWaybillsUpdateRequestLinesItem]?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            consigneePartnerId: String? = nil,
            transporterPartnerId: Nullable<String>? = nil,
            documentDate: String? = nil,
            dispatchAt: Date? = nil,
            estimatedArrivalAt: Nullable<Date>? = nil,
            vehiclePlate: Nullable<String>? = nil,
            trailerPlate: Nullable<String>? = nil,
            driverName: Nullable<String>? = nil,
            driverSurname: Nullable<String>? = nil,
            loadWarehouseId: Nullable<String>? = nil,
            loadAddress: String? = nil,
            unloadAddress: String? = nil,
            valueEur: Nullable<String>? = nil,
            saleInvoiceId: Nullable<String>? = nil,
            notes: Nullable<String>? = nil,
            series: String? = nil,
            lines: [PostV1TransportWaybillsUpdateRequestLinesItem]? = nil,
            id: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.consigneePartnerId = consigneePartnerId
            self.transporterPartnerId = transporterPartnerId
            self.documentDate = documentDate
            self.dispatchAt = dispatchAt
            self.estimatedArrivalAt = estimatedArrivalAt
            self.vehiclePlate = vehiclePlate
            self.trailerPlate = trailerPlate
            self.driverName = driverName
            self.driverSurname = driverSurname
            self.loadWarehouseId = loadWarehouseId
            self.loadAddress = loadAddress
            self.unloadAddress = unloadAddress
            self.valueEur = valueEur
            self.saleInvoiceId = saleInvoiceId
            self.notes = notes
            self.series = series
            self.lines = lines
            self.id = id
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.consigneePartnerId = try container.decodeIfPresent(String.self, forKey: .consigneePartnerId)
            self.transporterPartnerId = try container.decodeNullableIfPresent(String.self, forKey: .transporterPartnerId)
            self.documentDate = try container.decodeIfPresent(String.self, forKey: .documentDate)
            self.dispatchAt = try container.decodeIfPresent(Date.self, forKey: .dispatchAt)
            self.estimatedArrivalAt = try container.decodeNullableIfPresent(Date.self, forKey: .estimatedArrivalAt)
            self.vehiclePlate = try container.decodeNullableIfPresent(String.self, forKey: .vehiclePlate)
            self.trailerPlate = try container.decodeNullableIfPresent(String.self, forKey: .trailerPlate)
            self.driverName = try container.decodeNullableIfPresent(String.self, forKey: .driverName)
            self.driverSurname = try container.decodeNullableIfPresent(String.self, forKey: .driverSurname)
            self.loadWarehouseId = try container.decodeNullableIfPresent(String.self, forKey: .loadWarehouseId)
            self.loadAddress = try container.decodeIfPresent(String.self, forKey: .loadAddress)
            self.unloadAddress = try container.decodeIfPresent(String.self, forKey: .unloadAddress)
            self.valueEur = try container.decodeNullableIfPresent(String.self, forKey: .valueEur)
            self.saleInvoiceId = try container.decodeNullableIfPresent(String.self, forKey: .saleInvoiceId)
            self.notes = try container.decodeNullableIfPresent(String.self, forKey: .notes)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.lines = try container.decodeIfPresent([PostV1TransportWaybillsUpdateRequestLinesItem].self, forKey: .lines)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.consigneePartnerId, forKey: .consigneePartnerId)
            try container.encodeNullableIfPresent(self.transporterPartnerId, forKey: .transporterPartnerId)
            try container.encodeIfPresent(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dispatchAt, forKey: .dispatchAt)
            try container.encodeNullableIfPresent(self.estimatedArrivalAt, forKey: .estimatedArrivalAt)
            try container.encodeNullableIfPresent(self.vehiclePlate, forKey: .vehiclePlate)
            try container.encodeNullableIfPresent(self.trailerPlate, forKey: .trailerPlate)
            try container.encodeNullableIfPresent(self.driverName, forKey: .driverName)
            try container.encodeNullableIfPresent(self.driverSurname, forKey: .driverSurname)
            try container.encodeNullableIfPresent(self.loadWarehouseId, forKey: .loadWarehouseId)
            try container.encodeIfPresent(self.loadAddress, forKey: .loadAddress)
            try container.encodeIfPresent(self.unloadAddress, forKey: .unloadAddress)
            try container.encodeNullableIfPresent(self.valueEur, forKey: .valueEur)
            try container.encodeNullableIfPresent(self.saleInvoiceId, forKey: .saleInvoiceId)
            try container.encodeNullableIfPresent(self.notes, forKey: .notes)
            try container.encodeIfPresent(self.series, forKey: .series)
            try container.encodeIfPresent(self.lines, forKey: .lines)
            try container.encode(self.id, forKey: .id)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case consigneePartnerId
            case transporterPartnerId
            case documentDate
            case dispatchAt
            case estimatedArrivalAt
            case vehiclePlate
            case trailerPlate
            case driverName
            case driverSurname
            case loadWarehouseId
            case loadAddress
            case unloadAddress
            case valueEur
            case saleInvoiceId
            case notes
            case series
            case lines
            case id
        }
    }
}
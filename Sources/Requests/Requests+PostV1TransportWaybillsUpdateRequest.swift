import Foundation

extension Requests {
    public struct PostV1TransportWaybillsUpdateRequest: Codable, Hashable, Sendable {
        public let consigneePartnerId: String?
        public let transporterPartnerId: String?
        public let documentDate: String?
        public let dispatchAt: Date?
        public let estimatedArrivalAt: Date?
        public let vehiclePlate: String?
        public let trailerPlate: String?
        public let driverName: String?
        public let driverSurname: String?
        public let loadWarehouseId: String?
        public let loadAddress: String?
        public let unloadAddress: String?
        public let valueEur: String?
        public let saleInvoiceId: String?
        public let notes: String?
        public let series: String?
        public let lines: [PostV1TransportWaybillsUpdateRequestLinesItem]?
        public let id: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            consigneePartnerId: String? = nil,
            transporterPartnerId: String? = nil,
            documentDate: String? = nil,
            dispatchAt: Date? = nil,
            estimatedArrivalAt: Date? = nil,
            vehiclePlate: String? = nil,
            trailerPlate: String? = nil,
            driverName: String? = nil,
            driverSurname: String? = nil,
            loadWarehouseId: String? = nil,
            loadAddress: String? = nil,
            unloadAddress: String? = nil,
            valueEur: String? = nil,
            saleInvoiceId: String? = nil,
            notes: String? = nil,
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
            self.transporterPartnerId = try container.decodeIfPresent(String.self, forKey: .transporterPartnerId)
            self.documentDate = try container.decodeIfPresent(String.self, forKey: .documentDate)
            self.dispatchAt = try container.decodeIfPresent(Date.self, forKey: .dispatchAt)
            self.estimatedArrivalAt = try container.decodeIfPresent(Date.self, forKey: .estimatedArrivalAt)
            self.vehiclePlate = try container.decodeIfPresent(String.self, forKey: .vehiclePlate)
            self.trailerPlate = try container.decodeIfPresent(String.self, forKey: .trailerPlate)
            self.driverName = try container.decodeIfPresent(String.self, forKey: .driverName)
            self.driverSurname = try container.decodeIfPresent(String.self, forKey: .driverSurname)
            self.loadWarehouseId = try container.decodeIfPresent(String.self, forKey: .loadWarehouseId)
            self.loadAddress = try container.decodeIfPresent(String.self, forKey: .loadAddress)
            self.unloadAddress = try container.decodeIfPresent(String.self, forKey: .unloadAddress)
            self.valueEur = try container.decodeIfPresent(String.self, forKey: .valueEur)
            self.saleInvoiceId = try container.decodeIfPresent(String.self, forKey: .saleInvoiceId)
            self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
            self.series = try container.decodeIfPresent(String.self, forKey: .series)
            self.lines = try container.decodeIfPresent([PostV1TransportWaybillsUpdateRequestLinesItem].self, forKey: .lines)
            self.id = try container.decode(String.self, forKey: .id)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.consigneePartnerId, forKey: .consigneePartnerId)
            try container.encodeIfPresent(self.transporterPartnerId, forKey: .transporterPartnerId)
            try container.encodeIfPresent(self.documentDate, forKey: .documentDate)
            try container.encodeIfPresent(self.dispatchAt, forKey: .dispatchAt)
            try container.encodeIfPresent(self.estimatedArrivalAt, forKey: .estimatedArrivalAt)
            try container.encodeIfPresent(self.vehiclePlate, forKey: .vehiclePlate)
            try container.encodeIfPresent(self.trailerPlate, forKey: .trailerPlate)
            try container.encodeIfPresent(self.driverName, forKey: .driverName)
            try container.encodeIfPresent(self.driverSurname, forKey: .driverSurname)
            try container.encodeIfPresent(self.loadWarehouseId, forKey: .loadWarehouseId)
            try container.encodeIfPresent(self.loadAddress, forKey: .loadAddress)
            try container.encodeIfPresent(self.unloadAddress, forKey: .unloadAddress)
            try container.encodeIfPresent(self.valueEur, forKey: .valueEur)
            try container.encodeIfPresent(self.saleInvoiceId, forKey: .saleInvoiceId)
            try container.encodeIfPresent(self.notes, forKey: .notes)
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
import Foundation

public enum ItTfrAccrualComputeDeclarationsResponseRowsItemDestination: String, Codable, Hashable, CaseIterable, Sendable {
    case azienda
    case fondoTesoreria = "fondo-tesoreria"
    case previdenzaComplementare = "previdenza-complementare"
}
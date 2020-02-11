import Foundation

struct Space: Codable {
    enum Status: String, Codable {
        case comingSoon = "coming_soon"
        case opened
    }
    
    let address: String
    let amenities: [String]
    let city: String
    let description: String
    let equipments: [String]
    let floor: String
    let imageUrls: [String]
    let latitude: Double
    let longitude: Double
    let maxCapacity: Int
    let openDays: String
    let openHours: String
    let name: String
    let timezone: String
    let rate: Int
    let slug: String
    let spaceId: String
    let squareFootage: Int
    let status: Status
    /*


     
    */
    
    enum CodingKeys: String, CodingKey {
        case address
        case amenities
        case city
        case description
        case equipments
        case floor
        case imageUrls = "image_urls"
        case latitude
        case longitude
        case maxCapacity = "max_capacity"
        case openDays = "open_days"
        case openHours = "open_hours"
        case name
        case timezone
        case rate
        case slug
        case spaceId = "space_id"
        case squareFootage = "square_footage"
        case status
        /*


        
        */
    }
    
}

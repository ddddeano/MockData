//
//  File.swift
//  Swift Package
//
//  Created by Daniel Watson on 24.01.24.
//

import Foundation

struct MockRecruiterData {
    static let id = "12345678"
    
    struct GeneralInfo {
        static let name = "Gourmet King"
        static let username = "GKing"
        static let imageUrl = tinyImg
        static let companyName = "Gourmet King Restaurants"
    }
    
    // About Us
    struct AboutUs {
        static let shortDescription = "Connecting Culinary Talent"
        static let description = "Gourmet King is dedicated to connecting culinary talent with top-notch establishments. Our mission is to bring a taste of excellence to every hire."
    }
    
    // Contact
    struct Contact {
        static let email = "info@gourmethiring.com"
        static let phone = "+1 (123) 456-7890"
    }
    
    // Location
    struct Location {
        static let streetAddress = "123 Main Street"
        static let city = "Food Capital City"
        static let state = "Food State"
        static let postalCode = "12345"
        static let country = "Foodland"
    }
    
    // RecruiterManager.MiseboxUser
    struct MiseboxUser {
        static let miseboxUserId = "123"
        static let miseboxUserName = "GKing"
    }
    
    // RecruiterManager.Kitchen - Primary Kitchen
    struct PrimaryKitchen {
        static let kitchenId = "abc"
        static let kitchenName = "Gourmet King Manchester"
    }
    
    // Additional Kitchens
    struct AdditionalKitchens {
        static let kitchen1Id = "abc"
        static let kitchen1Name = "Gourmet King Manchester"
        static let kitchen2Id = "def"
        static let kitchen2Name = "Gourmet King Leeds"
    }
    
    // Gallery
    struct Gallery {
        public let id1 = UUID()
        public var name1 = "Image 1"
        public var imageUrl1 = tinyImg
        
        public let id2 = UUID()
        public var name2 = "Image 2"
        public var imageUrl2 = tinyImg
        
        public let id3 = UUID()
        public var name3 = "Image 3"
        public var imageUrl3 = tinyImg
    }
    
    // URL for the recruiter's image
    static let tinyImg = "https://firebasestorage.googleapis.com:443/v0/b/misebox-78f9c.appspot.com/o/avatars%2Fdog5.jpg?alt=media&token=c1bf2892-b854-4078-9bed-c8266c5362d9"
    
    // Recruiter
    struct MockRecruiter {
        static let id = MockRecruiterData.id
        static let generalInfo = MockRecruiterData.GeneralInfo.self
    }
    
    struct MockRecruiterProfile {
        static let id = MockRecruiterData.id
        static let generalInfo = MockRecruiterData.GeneralInfo.self
        static let aboutUs = MockRecruiterData.AboutUs.self
        static let contact = MockRecruiterData.Contact.self
        static let location = MockRecruiterData.Location.self
        static let miseboxUser = MockRecruiterData.MiseboxUser.self
        static let primaryKitchen = MockRecruiterData.PrimaryKitchen.self
        // Add other sections as necessary
    }
}

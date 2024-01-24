// File.swift
// Swift Package
//
// Created by Daniel Watson on 24.01.24.
//

import Foundation

// MARK: - Table of Contents
// -------------------------
// 1. MockRecruiterData Structure
//    a. Static ID
// 2. GeneralInfo Structure
// 3. AboutUs Structure
// 4. Contact Structure
// 5. Location Structure
// 6. MiseboxUser Structure
// 7. Kitchen Structure
//    a. Kitchens Array
//    b. Primary Kitchen
// 8. Gallery Structure
//    a. Gallery Images Array
// 9. MockRecruiter Structure
// 10. MockRecruiterProfile Structure
// -------------------------


struct MockRecruiterData {
    static let id = "12345678"
    
    // MARK: - GeneralInfo obj
    struct GeneralInfo {
        static let name = "Gourmet King"
        static let username = "GKing"
        static let imageUrl = tinyImg
        static let companyName = "Gourmet King Restaurants"
    }
    
    // MARK: - AboutUs obj
    struct AboutUs {
        static let shortDescription = "Connecting Culinary Talent"
        static let description = "Gourmet King is dedicated to connecting culinary talent with top-notch establishments. Our mission is to bring a taste of excellence to every hire."
    }
    
    // MARK: - Contact obj
    struct Contact {
        static let email = "info@gourmethiring.com"
        static let phone = "+1 (123) 456-7890"
    }
    
    // MARK: - Location obj
    struct Location {
        static let streetAddress = "123 Main Street"
        static let city = "Food Capital City"
        static let state = "Food State"
        static let postalCode = "12345"
        static let country = "Foodland"
    }
    
    // MARK: - MiseboxUser obj
    struct MiseboxUser {
        static let miseboxUserId = "123"
        static let miseboxUserName = "GKing"
    }
    
    // MARK: - Kitchen obj for primary kitchen
    struct Kitchen {
        let kitchenId: String
        let kitchenName: String
        
        // Define the kitchens array here
        static let kitchens: [Kitchen] = [
            Kitchen(kitchenId: "abc", kitchenName: "Gourmet King Manchester"),
            Kitchen(kitchenId: "123", kitchenName: "Gourmet King Leeds"),
            Kitchen(kitchenId: "456", kitchenName: "Gourmet King Bradford")
        ]
        
        // Define the primaryKitchen here
        static let primaryKitchen: Kitchen? = {
            // Set the primary kitchen based on the kitchenId
            let primaryKitchenId = "abc" // You can change this to the desired kitchenId
            return kitchens.first { $0.kitchenId == primaryKitchenId }
        }()
    }
    
    // MARK: - Gallery array
    struct Gallery: Identifiable {
        let id = UUID()
        var name = "Image Name"
        var imageUrl = "Image URL"
        
        // Define the galleryImages array here
        static let galleryImages: [Gallery] = [
            Gallery(name: "Image 1", imageUrl: tinyImg),
            Gallery(name: "Image 2", imageUrl: tinyImg),
            Gallery(name: "Image 3", imageUrl: tinyImg)
        ]
    }
    

    
    // MARK: - MockRecruiter struct
    struct MockRecruiter {
        static let id = MockRecruiterData.id
        static let generalInfo = GeneralInfo.self
        static let miseboxUser = MiseboxUser.self
        static let primaryKitchen: Kitchen? = Kitchen.primaryKitchen
    }
    
    // MARK: - MockRecruiterProfile struct
    struct MockRecruiterProfile {
        static let id = MockRecruiterData.id
        static let generalInfo = GeneralInfo.self
        static let aboutUs = AboutUs.self
        static let contact = Contact.self
        static let location = Location.self
        static let miseboxUser = MiseboxUser.self
        static let primaryKitchen: Kitchen? = Kitchen.primaryKitchen
        static let kitchens: [Kitchen] = Kitchen.kitchens
        static let galleryImage: [Gallery] = Gallery.galleryImages
        // Add other sections as necessary
    }
}

import Foundation

// MARK: - Table of Contents
// -------------------------
// 1. MockChefData Structure
//    a. Static ID
// 2. GalleryImage Structure
//    a. Gallery Images Array
// 3. PreviousEmployment Structure
//    a. Previous Employments Array
// 4. Qualification Structure
//    a. Qualifications Array
// 5. SpokenLanguage Structure
//    a. Spoken Languages Array
// 6. MiseboxUser Structure
// 7. Kitchen Structure
//    a. Kitchens Array
//    b. Primary Kitchen
// 8. FullName Structure
// 9. GeneralInfo Structure
// 10. Nationality Structure
// 11. AboutMeBio Structure
// 13. MockChef Structure
// 14. MockChefProfile Structure
// -------------------------

struct MockChefData {
    
    static let id = "chefID12345678"
    
    // MARK: - GalleryImage array
    struct GalleryImage: Identifiable {
        let id = UUID()
        var name = "Image Name"
        var imageUrl = "Image URL"
        
        // Define the galleryImages array here
        static let galleryImages: [GalleryImage] = [
            GalleryImage(name: "Image 1", imageUrl: tinyImg),
            GalleryImage(name: "Image 2", imageUrl: tinyImg)
        ]
    }
    
    // MARK: - PreviousEmployment array
    struct PreviousEmployment: Identifiable {
        let id = UUID()
        var employerName = "Employer Name"
        var role = "Role"
        var startDate = "Start Date"
        var endDate = "End Date"
        var description = "Description"
        
        // Define the previousEmployments array here
        static let previousEmployments: [PreviousEmployment] = [
            PreviousEmployment(employerName: "Employer 1", role: "Role 1", startDate: "Start Date 1", endDate: "End Date 1", description: "Description 1"),
            PreviousEmployment(employerName: "Employer 2", role: "Role 2", startDate: "Start Date 2", endDate: "End Date 2", description: "Description 2")
        ]
    }
    
    // MARK: - Qualification array
    struct Qualification: Identifiable {
        let id = UUID()
        var docURL = "Document URL"
        var institution = "Institution"
        var name = "Qualification Name"
        var level = "Qualification Level"
        
        // Define the qualifications array here
        static let qualifications: [Qualification] = [
            Qualification(docURL: "Document URL 1", institution: "Institution 1", name: "Qualification Name 1", level: "Qualification Level 1"),
            Qualification(docURL: "Document URL 2", institution: "Institution 2", name: "Qualification Name 2", level: "Qualification Level 2")
        ]
    }
    
    // MARK: - SpokenLanguage array
    struct SpokenLanguage: Identifiable {
        let id = UUID()
        var lang = "Language"
        var level = "Language Level"
        
        // Define the spokenLanguages array here
        static let spokenLanguages: [SpokenLanguage] = [
            SpokenLanguage(lang: "Language 1", level: "Language Level 1"),
            SpokenLanguage(lang: "Language 2", level: "Language Level 2")
        ]
    }
    
    // MARK: - MiseboxUser obj
    struct MiseboxUser {
        static let miseboxUserId = "123"
        static let miseboxUserName = "GKing"
    }
    
    // MARK: - Kitchen obj for primary kitchen array for all kitchens
    
    struct Kitchen {
        let kitchenId: String
        let kitchenName: String
        
        // Define the kitchens array here
        static let kitchens: [Kitchen] = [
            Kitchen(kitchenId: "999", kitchenName: "Lisa Lashed Detroit"),
            Kitchen(kitchenId: "hgp", kitchenName: "Daves Dish Arena"),
            Kitchen(kitchenId: "sjgd", kitchenName: "Fresh Bytes")
        ]
        // Define the primaryKitchen here
        static let primaryKitchen: Kitchen? = {
            // Set the primary kitchen based on the kitchenId
            let primaryKitchenId = "abc" // You can change this to the desired kitchenId
            return kitchens.first { $0.kitchenId == primaryKitchenId }
        }()
    }
    
    // MARK: - Kitchens array for all kitchens
    
    
    // MARK: - Full Name obj
    struct FullName {
        static let first = "Daniel"
        static let middle = "Marc"
        static let last = "Watson"
    }
    
    // MARK: - General Info obj
    struct GeneralInfo {
        static let name = "Daniel Watson"
        static let username = "dddddeano"
        static let imageUrl = tinyImg
        static let nickname = "Chef Deano"
    }
    
    // MARK: - Nationality obj
    struct Nationality {
        static let country = "United States"
        static let flagCode = "US"
    }
    
    // MARK: - AboutMeBio obj
    struct AboutMeBio {
        static let aboutMe = "Passionate chef with a love for creating delicious dishes."
        static let bio = "I have over 10 years of experience in the culinary world, working in top restaurants and mastering various cuisines."
    }
    
    
    // MARK: - MockChef struct
    struct MockChef {
        static let id = MockChefData.id
        static let generalInfo = MockChefData.GeneralInfo.self
        static let miseboxUser = MiseboxUser.self
        static let primaryKitchen: Kitchen? = Kitchen.primaryKitchen
    }
    
    // MARK: - MockChefProfile struct
    struct MockChefProfile {
        static let id = MockChefData.id
        static let generalInfo = MockChefData.GeneralInfo.self
        static let fullName = MockChefData.FullName.self
        static let nationality = MockChefData.Nationality.self
        static let aboutMeBio = MockChefData.AboutMeBio.self
        static let galleryImage: [GalleryImage] = GalleryImage.galleryImages
        static let previousEmployment: [PreviousEmployment] = PreviousEmployment.previousEmployments
        static let qualification: [Qualification] = Qualification.qualifications
        static let spokenLanguage: [SpokenLanguage] = SpokenLanguage.spokenLanguages
        static let miseboxUser = MiseboxUser.self
        static let kitchens: [Kitchen] = Kitchen.kitchens
        static let primaryKitchen: Kitchen? = Kitchen.primaryKitchen
    }
}

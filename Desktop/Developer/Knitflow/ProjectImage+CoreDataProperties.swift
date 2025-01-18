//
//  ProjectImage+CoreDataProperties.swift
//  Knitflow
//
//  Created by 신혜림 on 1/15/25.
//
//

import Foundation
import CoreData


extension ProjectImage {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ProjectImage> {
        return NSFetchRequest<ProjectImage>(entityName: "ProjectImage")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var createdAt: Date?
    @NSManaged public var imageData: Data?
    @NSManaged public var project: Project?

}

extension ProjectImage : Identifiable {

}

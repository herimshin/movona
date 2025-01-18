//
//  RowCounter+CoreDataProperties.swift
//  Knitflow
//
//  Created by 신혜림 on 1/15/25.
//
//

import Foundation
import CoreData


extension RowCounter {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<RowCounter> {
        return NSFetchRequest<RowCounter>(entityName: "RowCounter")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var currentCount: Double
    @NSManaged public var id: UUID?
    @NSManaged public var progress: Double
    @NSManaged public var targetCount: Double
    @NSManaged public var title: String?
    @NSManaged public var updatedAt: Date?
    @NSManaged public var project: Project?

}

extension RowCounter : Identifiable {

}

//
//  DailySummary+CoreDataProperties.swift
//  Knitflow
//
//  Created by 신혜림 on 1/15/25.
//
//

import Foundation
import CoreData


extension DailySummary {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DailySummary> {
        return NSFetchRequest<DailySummary>(entityName: "DailySummary")
    }

    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var newProjectCount: Int64
    @NSManaged public var timeSpent: Double
    @NSManaged public var workedProjectCount: Int64
    @NSManaged public var projects: NSSet?
    @NSManaged public var workSessions: WorkSession?

}

// MARK: Generated accessors for projects
extension DailySummary {

    @objc(addProjectsObject:)
    @NSManaged public func addToProjects(_ value: Project)

    @objc(removeProjectsObject:)
    @NSManaged public func removeFromProjects(_ value: Project)

    @objc(addProjects:)
    @NSManaged public func addToProjects(_ values: NSSet)

    @objc(removeProjects:)
    @NSManaged public func removeFromProjects(_ values: NSSet)

}

extension DailySummary : Identifiable {

}

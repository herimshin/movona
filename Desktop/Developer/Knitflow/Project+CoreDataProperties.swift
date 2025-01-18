//
//  Project+CoreDataProperties.swift
//  Knitflow
//
//  Created by 신혜림 on 1/15/25.
//
//

import Foundation
import CoreData


extension Project {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Project> {
        return NSFetchRequest<Project>(entityName: "Project")
    }

    @NSManaged public var createdAt: Date?
    @NSManaged public var endDate: Date?
    @NSManaged public var icon: String?
    @NSManaged public var id: UUID?
    @NSManaged public var needleInfo: String?
    @NSManaged public var patternPDF: Data?
    @NSManaged public var patternYoutube: String?
    @NSManaged public var primaryCounter: Double
    @NSManaged public var secondaryCounter: Double
    @NSManaged public var startDate: Date?
    @NSManaged public var status: String?
    @NSManaged public var title: String?
    @NSManaged public var workTime: Double
    @NSManaged public var notes: String?
    @NSManaged public var dailySummaries: DailySummary?
    @NSManaged public var rowCounters: NSSet?
    @NSManaged public var workSessions: NSSet?
    @NSManaged public var projectImages: NSSet?

}

// MARK: Generated accessors for rowCounters
extension Project {

    @objc(addRowCountersObject:)
    @NSManaged public func addToRowCounters(_ value: RowCounter)

    @objc(removeRowCountersObject:)
    @NSManaged public func removeFromRowCounters(_ value: RowCounter)

    @objc(addRowCounters:)
    @NSManaged public func addToRowCounters(_ values: NSSet)

    @objc(removeRowCounters:)
    @NSManaged public func removeFromRowCounters(_ values: NSSet)

}

// MARK: Generated accessors for workSessions
extension Project {

    @objc(addWorkSessionsObject:)
    @NSManaged public func addToWorkSessions(_ value: WorkSession)

    @objc(removeWorkSessionsObject:)
    @NSManaged public func removeFromWorkSessions(_ value: WorkSession)

    @objc(addWorkSessions:)
    @NSManaged public func addToWorkSessions(_ values: NSSet)

    @objc(removeWorkSessions:)
    @NSManaged public func removeFromWorkSessions(_ values: NSSet)

}

// MARK: Generated accessors for projectImages
extension Project {

    @objc(addProjectImagesObject:)
    @NSManaged public func addToProjectImages(_ value: ProjectImage)

    @objc(removeProjectImagesObject:)
    @NSManaged public func removeFromProjectImages(_ value: ProjectImage)

    @objc(addProjectImages:)
    @NSManaged public func addToProjectImages(_ values: NSSet)

    @objc(removeProjectImages:)
    @NSManaged public func removeFromProjectImages(_ values: NSSet)

}

extension Project : Identifiable {

}

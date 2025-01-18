//
//  WorkSession+CoreDataProperties.swift
//  Knitflow
//
//  Created by 신혜림 on 1/15/25.
//
//

import Foundation
import CoreData


extension WorkSession {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<WorkSession> {
        return NSFetchRequest<WorkSession>(entityName: "WorkSession")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var timeSpent: Double
    @NSManaged public var timestamp: Date?
    @NSManaged public var dailySummaries: DailySummary?
    @NSManaged public var projects: Project?

}

extension WorkSession : Identifiable {

}

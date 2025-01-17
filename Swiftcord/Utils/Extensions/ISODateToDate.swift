//
//  ISODateToDate.swift
//  Native Discord
//
//  Created by Vincent Kwok on 25/2/22.
//

import Foundation

extension ISOTimestamp {
    func toDate() -> Date? {
        let isoDateFormatter = ISO8601DateFormatter()
        isoDateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        isoDateFormatter.formatOptions = [
            .withFullDate,
            .withFullTime,
            .withDashSeparatorInDate,
            .withFractionalSeconds]
        return isoDateFormatter.date(from: self)
    }
}

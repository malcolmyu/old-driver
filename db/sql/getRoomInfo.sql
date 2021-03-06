   SELECT MR.roomName, MR.roomSize, MR.devices roomDevice, B.fromTime 'from', B.toTime 'end'
     FROM MeetingRoom MR
LEFT JOIN Booking B
       ON MR.id=B.meetingRoomId
    WHERE MR.id=?
      AND ((B.fromTime Between ? AND ?) OR (B.toTime Between ? AND ?) OR (B.fromTime is NULL))
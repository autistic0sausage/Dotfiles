pragma Singleton

import Quickshell

Singleton {
    id: root
    readonly property string time: {
        Qt.formatDateTime(clock.date, "hh:mm | dd MMM yyyy");
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}

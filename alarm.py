#!/usr/bin/env python3.6
# Using 3.6 because system python and `apt install python3-gi`

import sys
import time
from datetime import datetime, timedelta

import gi

gi.require_version('Notify', '0.7')
from gi.repository import Notify  # NOQA

at, message = sys.argv[1], ' '.join(sys.argv[2:])

if len(at) == 4:
    hh, mm = at[:2], at[2:]
    alert_at = datetime.now().replace(hour=int(hh), minute=int(mm), second=0)
else:
    alert_at = datetime.now() + timedelta(minutes=int(at))


print(alert_at, message)

Notify.init(f"Scheduled {message} for {alert_at}")

notification = Notify.Notification.new(
    f"Alert {' '*100}",
    message,
    "dialog-information",
)
notification.set_urgency(2)
notification.set_timeout(0)

time.sleep(int(abs((datetime.now() - alert_at).total_seconds())))
notification.show()

#!/usr/bin/env python

import os

PRIORITY = {
    "Inbox":   0,
    "Starred": 1,
    "Sent":    2,
    "Drafts":  3,
    "Archive": 4,
    "Trash":   5,
    "Spam":    6,
}

MAIL_DIR = os.getenv('HOME') + '/.mail'
MUTT_FILE = os.getenv('HOME') + '/.mutt/config/mailboxes.mutt'

def getKey(item):
    curr_value = len(PRIORITY) + 1000
    for key in PRIORITY:
        if item.find(key) > -1:
            curr_value = PRIORITY[key]
            break;
    return curr_value

accounts = [f for f in os.listdir(MAIL_DIR) if os.path.isdir(os.path.join(MAIL_DIR, f))]
mailboxes = []
for acc in accounts:
    mailboxes.append(acc)
    account_dir = os.path.join(MAIL_DIR, acc)
    m = [acc + "/" + f for f in os.listdir(account_dir) if os.path.isdir(os.path.join(account_dir, f))]
    m = sorted(m, key=getKey)
    mailboxes.extend(m)

for i in range(len(mailboxes)):
    mailboxes[i] = "\"+" + mailboxes[i] + "\""

with open(MUTT_FILE, 'w') as f:
    f.write("mailboxes " + ' '.join(mailboxes))

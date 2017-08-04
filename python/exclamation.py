import re

def remove(s):
    s_reverse = s[::-1]
    match = re.search('([!]*)(.*$)', s_reverse)
    exclamation, remainder = match.groups()
    s_edited = remainder.replace('!', '')[::-1]
    return s_edited + exclamation
#!/usr/bin/env python3

import secrets
import string

def generate_password(length):
    "Generate a password of the given length."
    alphabet = string.ascii_letters + string.digits
    return ''.join(secrets.choice(alphabet) for i in range(length))

print(generate_password(21))

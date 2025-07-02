#!/usr/bin/env python3

import os
import json
from jupyter_server.auth import passwd


def main():
    pw_hash = passwd('cdsw')

    data = {
      "IdentityProvider": {
        "hashed_password": pw_hash
      }
    }

    with open(os.path.expanduser('/home/cdsw/.jupyter/jupyter_server_config.json'), 'w') as f:
        json.dump(data, f, indent=2)


if __name__ == '__main__':
    main()


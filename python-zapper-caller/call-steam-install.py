import os
import rpyc

# ZAPPER_IP = <ZAPPER-IP>
ZAPPER_IP = "10.102.234.199"
ZAPPER_PORT = 60000

ZAPPER_TESTING_DIR = os.path.dirname(os.path.realpath(__file__)) + "/.."
TESTSUITE_DIR = ZAPPER_TESTING_DIR + "/robot/snippets/suites/steam-install/"

TEMPLATES = [f for f in os.listdir(TESTSUITE_DIR) if os.path.isfile(os.path.join(TESTSUITE_DIR, f)) and ".png" in f]

ROBOT_FILE = TESTSUITE_DIR + "steam-install.robot"

connection = rpyc.connect(
    ZAPPER_IP,
    ZAPPER_PORT,
    config={
        "allow_public_attrs": True,
    },
)


assets = {}
variables = {
    "KVM_RESOURCES": "snippets/common/common_kvm.resource",
}
# variables = {
#     "KVM_RESOURCES": ZAPPER_TESTING_DIR + "/robot/snippets/resources/kvm.resource",
#     }

for asset in TEMPLATES:
    filename = os.path.basename(asset)
    with open(TESTSUITE_DIR + asset, "rb") as asset_file:
        assets[filename] = asset_file.read()

with open(ROBOT_FILE, "rb") as robot_file:
    status, html = connection.root.robot_run(robot_file.read(), assets, variables)
    with open("/tmp/steam-install-test.html", "w") as f:
        f.write(html)

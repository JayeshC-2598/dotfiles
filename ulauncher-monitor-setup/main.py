import subprocess
import os
from ulauncher.api.client.Extension import Extension
from ulauncher.api.client.EventListener import EventListener
from ulauncher.api.shared.event import KeywordQueryEvent, ItemEnterEvent
from ulauncher.api.shared.item.ExtensionResultItem import ExtensionResultItem
from ulauncher.api.shared.action.RenderResultListAction import RenderResultListAction
from ulauncher.api.shared.action.ExtensionCustomAction import ExtensionCustomAction
from ulauncher.api.shared.action.HideWindowAction import HideWindowAction

# Path to your project
# PROJECT_PATH = "/home/jayeshc/scripts/monitor_control"
PROJECT_PATH = os.path.dirname(os.path.abspath(__file__))

# Map menu item → script path
SCRIPTS = {
    "Extend": os.path.join(PROJECT_PATH, "modes/extend.sh"),
    "External Only": os.path.join(PROJECT_PATH, "modes/external_only.sh"),
    "Laptop Only": os.path.join(PROJECT_PATH, "modes/laptop_only.sh"),
    "Mirror": os.path.join(PROJECT_PATH, "modes/mirror.sh"),
}


class MonitorSwitcherExtension(Extension):
    def __init__(self):
        super().__init__()
        self.subscribe(KeywordQueryEvent, KeywordQueryEventListener())
        self.subscribe(ItemEnterEvent, ItemEnterEventListener())


class KeywordQueryEventListener(EventListener):
    def on_event(self, event, extension):
        items = []
        for label, script_path in SCRIPTS.items():
            items.append(
                ExtensionResultItem(
                    icon="images/icon.png",
                    name=label,
                    description=script_path,
                    on_enter=ExtensionCustomAction(
                        {"script": script_path}, keep_app_open=False
                    ),
                )
            )
        return RenderResultListAction(items)


class ItemEnterEventListener(EventListener):
    def on_event(self, event, extension):
        data = event.get_data()
        script_path = data.get("script")
        # Run the script in background
        subprocess.Popen(["bash", script_path])

        return RenderResultListAction(
            [
                ExtensionResultItem(
                    icon="images/icon.png",
                    name=f"Running: {os.path.basename(script_path)}",
                    description="Script launched",
                    on_enter=HideWindowAction(),
                )
            ]
        )

if __name__ == "__main__":
    MonitorSwitcherExtension().run()

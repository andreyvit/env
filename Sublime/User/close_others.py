import sublime
import sublime_plugin

class CloseToRightCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        window = self.view.window()
        group_index, view_index = window.get_view_index(self.view)
        window.run_command("close_to_right_by_index", { "group": group_index, "index": view_index })

class CloseOthersCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        window = self.view.window()
        group_index, view_index = window.get_view_index(self.view)
        window.run_command("close_others_by_index", { "group": group_index, "index": view_index })

class CloseOtherWindowsCommand(sublime_plugin.WindowCommand):
    def run(self):
        cur_window = sublime.active_window()
        for window in sublime.windows():
            if cur_window != window:
                window.run_command('close_window')

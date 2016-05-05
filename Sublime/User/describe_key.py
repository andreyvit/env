import sublime, sublime_plugin

class DescribeKeyCommand(sublime_plugin.TextCommand):
    def run(self, edit):
        window = self.view.window()

        sublime.log_commands(True)
        sublime.log_input(True)
        sublime.status_message("Press the key to describe...")

        print('\n'*10)
        window.run_command('show_panel', {'panel': 'console', 'toggle': False})

        # deactivate the panel
        window.focus_group(window.active_group())

        sublime.set_timeout(self.disable, 2000)

    def disable(self):
        sublime.log_commands(False)
        sublime.log_input(False)
        sublime.status_message("")

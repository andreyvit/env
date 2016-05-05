import sublime, sublime_plugin, os

TEMPLATE = """<snippet>
    <content><![CDATA[
BODY
]]></content>
    <tabTrigger>TRIGGER</tabTrigger>
    <scope>SCOPE</scope>
</snippet>
"""

class NewSnippetForScopeCommand(sublime_plugin.WindowCommand):
    def run(self):
        view = self.window.active_view()
        if view is None:
            return

        if len(view.sel()) > 1 or view.sel()[0].size() == 0:
            sublime.error_message("To create a snippet, please select the text first.")
            return

        region = view.sel()[0]
        scope = view.scope_name(region.b).split(" ")[0]
        scope_short = (scope.replace('source.', '') if scope.startswith('source.') else scope)

        text = view.substr(region)

        def text_done(trigger):
            if text == '':
                actual_text = '$1'
            else:
                actual_text = text

            content = TEMPLATE.replace('BODY', text).replace('SCOPE', scope).replace('TRIGGER', trigger)

            snippet_view = self.window.new_file()
            snippet_view.run_command('insert_snippet', {'contents': content})

            user_dir = os.path.join(sublime.packages_path(), 'User')
            snippet_view.settings().set('default_dir', user_dir)
            snippet_view.set_name('%s %s.sublime-snippet' % (scope_short, trigger))

            # unfortunately, this causes Sublime to append .xml to the file name
            # snippet_view.set_syntax_file('Packages/XML/XML.tmLanguage')

        self.window.show_input_panel('Tab trigger?', '', text_done, on_change=None, on_cancel=None)

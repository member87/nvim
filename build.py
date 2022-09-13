import re, requests

plugins = []

def get_description(plugin):
    r = requests.get(f"https://api.github.com/repos/{plugin}")
    return r.json()["description"]

with open("lua/core/plugins.lua") as f:
    content = f.read()
    regex = 'use\("(.*?)"'
    plugins += re.findall(regex, content)
    regex = 'use\({\s+"(.*?)"'
    plugins += re.findall(regex, content)


new_readme = ""
with open("README.md") as f:
    content = f.read()
    new_readme = content.split("## Plugins", 1)[0]
    new_readme += "## Plugins\n"

for plugin in plugins:
    new_readme += f"- [{plugin}](http://github.com/{plugin}) - {get_description(plugin)}\n"

with open("README.md", "w") as f:
    f.write(new_readme)

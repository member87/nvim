import re, requests, os

plugins = []

def get_description(plugin):
    r = requests.get(f"https://api.github.com/repos/{plugin}")
    json = r.json()
    if("description" in json):
        return json["description"]

    return ""


for file in os.listdir("lua/plugins"):
    with open(f"lua/plugins/{file}") as f:
        content = f.read()
        regex = '\{\s+"(.*?)"'
        plugins += re.findall(regex, content)
print(plugins)


new_readme = ""
with open("README.md") as f:
    content = f.read()
    new_readme = content.split("## Plugins", 1)[0]
    new_readme += "## Plugins\n"

for plugin in plugins:
    print(plugin)
    new_readme += f"- [{plugin}](http://github.com/{plugin}) - {get_description(plugin)}\n"

with open("README.md", "w") as f:
    f.write(new_readme)

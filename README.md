# sample-jupybook

Experiment with JupyterBook infrastructure
( https://jupyterbook.org/start/overview.html )

## Experience steps

- pip install jupyter-book
- activate

(Tried cookie-cutter.  Decided against it --- many choices that are easier to edit elsewhere.) 

`jupyter-book create UO-CS210`

edit _config.yml with title, authors, etc

In _config.yml: 

```
# Trying to integrate Thebe
# Taken directly from https://jupyterbook.org/interactive/launchbuttons.html#launchbuttons-configuration
launch_buttons:
  thebe: true
  notebook_interface: "classic"  # or "jupyterlab"
  binderhub_url: "https://mybinder.org"
  # binderhub_url:  http://localhost:12000  # The URL for your BinderHub
  url                       : https://github.com/UO-CIS-OER/sample-jupybook 
  path_to_book              : IntroCS 
  branch                    : main  

```

## Deployment
  Using ghp-import per
  [https://jupyterbook.org/en/stable/publish/gh-pages.html](https://jupyterbook.org/en/stable/publish/gh-pages.html)

  Took three or four attempts ... no useful diagnostic messages.

Site visible at 
[https://uo-cis-oer.github.io/sample-jupybook/intro.html](https://uo-cis-oer.github.io/sample-jupybook/intro.html)
(repo title becomes URL, not folder within repo)



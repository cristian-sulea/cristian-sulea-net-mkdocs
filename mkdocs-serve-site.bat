docker run --name=mkdocs-serve-site -it --rm -v %cd%\src:/app -p 8000:8000 mkdocs-serve-site
pause
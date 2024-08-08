from setuptools import setup

setup(
    name="hello-world",
    version="1.0.0",
    py_modules=["hello"],
    entry_points={
        "console_scripts": [
            "hello-world = hello:main",
        ],
    },
)

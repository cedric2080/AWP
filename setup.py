from setuptools import setup, find_packages

setup(
    name="AWP",
    use_scm_version=True,
    description="",
    license="",
    author="",
    author_email="",
    url="",
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
    ],
    extras_require={
        "dev": [
        ],
    },
    setup_requires=["setuptools_scm"],
    #entry_points={"console_scripts": ["python = app.run:main"]},
    # TODO
    # exclude all directories except src/python_tools
)

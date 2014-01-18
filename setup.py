from distutils.core import setup

setup(
    name='InTeXration',
    version='1.0.0dev',
    packages=['intexration'],
    package_dir={'config': 'intexration'},
    package_data={'intexration': ['config/*.cfg', 'data/*.csv', 'logs/*.log', 'templates/*.tpl']},
    url='https://github.com/JDevlieghere/InTeXration',
    license='Apache License, Version 2.0',
    author='Jonas Devlieghere',
    author_email='info@jonasdevlieghere.com',
    description='LaTeX Integration Service',
)

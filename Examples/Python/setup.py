__author__ = 'farooq.sheikh'

from setuptools import setup, find_packages

setup(
    name = 'asposeimagingcloudexamples',
    packages = find_packages(),
    version = '1.0.1',
    description = 'Aspose.Imaging Cloud SDK for Python allows you to use Aspose.Imaging APIs in your Python applications',
    author='Farooq Sheikh',
    author_email='farooq.sheikh@aspose.com',
    url='http://www.aspose.com/cloud/imaging-api.aspx',
    install_requires=[
        'asposestoragecloud','asposeimagingcloud'
    ],    
    classifiers=[
        'Programming Language :: Python',
        'Programming Language :: Python :: 2',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent'
    ]
)

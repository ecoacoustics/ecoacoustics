# Bibliography

# Style

Styles obtained manually from: https://github.com/citation-style-language/styles/blob/master/apa.csl

You can edit which style is used by changing the

# References

We have a Mendeley library here: https://www.mendeley.com/community/ecoacoustics.info/

Again we're keeping this manually synchonized at the moment:

1. Download and install Mendeley desktop
1. Open the Mendeley shared library _Ecoaocustics.info_
1. Use the _File > Export_ menu option and save the result to references.bib

## Automatic export notes

While not functional, the bones for future automatic exports can be found here.

- The group id: `fb5ffe1c-a929-3517-adc0-c961997a3b36`

- A sample command:
```
curl 'https://api.mendeley.com/documents?view=bib&group_id=fb5ffe1c-a929-3517-adc0-c961997a3b36' -H 'Accept: application/x-bibtex' --header "Authorization: Bearer $token"  >  ./bibliography/references.bib
```
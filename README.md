# pad-biblio-cyber-pdf

Une reprise du pad biblio cyber de [M82 project](https://twitter.com/M82_project) pour être vu dans un format PDF.
Pad d'origine : https://mypads2.framapad.org/mypads/?/mypads/group/m82-2d1f1g9ht/pad/view/bibliographie-cyber-yh1f2g9lo

## Etapes
- Copier le contenu du pad dans `biblio.bib`.
- Puis :
```bash
# Met des clés correctes dans le BibteX et enlève les commentaires superflus
python pad2bib.py
# Compilation du LateX
make
# Suppression des fichiers intermédiaires (sauf le PDF !)
make clean
```

## Todo
Possible de récupérer directement le contenu du pad ? (sinon scraping)

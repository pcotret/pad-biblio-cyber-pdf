# pad-biblio-cyber-pdf

Une reprise du pad biblio cyber de [M82 project](https://twitter.com/M82_project) pour être vu dans un format PDF.
Repris dans une dépôt Github: https://github.com/BartM82/Bibliography

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

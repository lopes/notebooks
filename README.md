# Notebooks
This repository is a collection of useful [Python notebooks](https://jupyter.org/) I've created either for personal or professional usage.  At the time of this writing, all notebooks run in [Google Colaboratory](https://colab.google/), so some features and dependencies may only work there.

## Notebooks' Structure

```markdown
# Notebook Name
Description

---
## NB Section
[Optional] Description

`code`
...
```

## Adding Notebooks
Simply copy the `.ipynb` files to `notebooks/library`.  It's highly recommended to run the `cataloguer.sh` and `redactor.sh` scripts to assure that the file names are standardized and the outputs are removed (to avoid data leak).

## License
Distributed under the MIT License.  See `LICENSE` for more information.

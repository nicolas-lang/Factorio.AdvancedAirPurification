# Factorio.ModTemplate
Template for automated mod deployment using Github Actions when a tagged commit is pushed

## Inputs (Github secrets)

### `factorio_user`

**Required** User that will be used to authenticate to the Factorio mod-portal.

### `factorio_password`

**Required** Password that will be used to authenticate to the Factorio mod-portal.

## Acknowledgements

Actions based on:
- [Roang-zero1 Actions](https://github.com/Roang-zero1)

Which are  based on:
- [Nexelas Mods](https://github.com/Nexela)
- [GitHub Action to automatically publish to the Factorio mod portal](https://github.com/shanemadden/factorio-mod-portal-publish)
- Shane Madden (Nymbia)
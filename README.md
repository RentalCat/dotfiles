# dotfiles
[![Build Status](https://travis-ci.org/RentalCat/dotfiles.svg?branch=master)](https://travis-ci.org/RentalCat/dotfiles)

## required
* `curl`: for download `install.sh`
* `git`: for install this repository
* `make`: for execute `make` command

### required install
#### in ubuntu (Debian)
`apt-get update && apt-get install -y build-essential curl git`

#### in CentOS (Red Hat Linux)
`yum install -y curl git make`

#### in MacOS
maybe installed

## install
execute this code ONLY, that's all! (not clone this repo. that is will be executed in below)

`bash -c "$(curl -fsSL https://git.io/vbXku)"`

## Tips: How to Make font with [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)
```sh
# Ricty Diminished font
git clone --depth 1 git@github.com:mzyy94/RictyDiminished-for-Powerline.git

# nerd-fonts
git clone --depth 1 git@github.com:ryanoasis/nerd-fonts.git

# fontforge
brew install fontforge
brew link fontforge

cd nerd-fonts
# RictyDiminishedDiscord NF RegularForPowerline
fontforge -script ./font-patcher ../RictyDiminished-for-Powerline/vim-powerline-fontpatched/RictyDiminishedDiscord-Regular-Powerline.ttf \
  -w --careful --complete
# RictyDiminishedDiscord NF BoldForPowerline
fontforge -script ./font-patcher ../RictyDiminished-for-Powerline/vim-powerline-fontpatched/RictyDiminishedDiscord-Bold-Powerline.ttf \
  -w --careful --complete
# RictyDiminishedDiscord NF ObliqueForPowerline
fontforge -script ./font-patcher ../RictyDiminished-for-Powerline/vim-powerline-fontpatched/RictyDiminishedDiscord-Oblique-Powerline.ttf \
  -w --careful --complete
# RictyDiminishedDiscord NF BoldObliqueForPowerline
fontforge -script ./font-patcher ../RictyDiminished-for-Powerline/vim-powerline-fontpatched/RictyDiminishedDiscord-BoldOblique-Powerline.ttf \
  -w --careful --complete
```

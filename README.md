# dotfiles

My dotfiles are managed using [GNU Stow][1] in the way shown in [this][2] post.
If you are more of a video type of guy, you may prefer [this][3] video, which
gives a comprehensive and step-by-step explanation.

## Prerequisites

- git
- stow

## Usage

If you want my `fish` configuration in your system, you can just:

    git clone https://github.com/matthewrossi/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    stow fish

[1]: https://www.gnu.org/software/stow/
[2]: http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html
[3]: https://www.youtube.com/watch?v=CFzEuBGPPPg
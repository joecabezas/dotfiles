return {
  {
    'rbong/vim-flog',
    cmd = {
      'Flog',
      'Flogsplit',
      'Floggit',
    },
    dependencies = {
      'tpope/vim-fugitive',
    },
  },
  {
    'tpope/vim-fugitive',
    dependencies = {
      'tpope/vim-rhubarb',
    },
    cmd = {
      'Git',
      'GBrowse',
    },
  },
}

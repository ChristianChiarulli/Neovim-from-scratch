local git_blame = require('gitblame')

git_blame.setup {
     --Note how the `gitblame_` prefix is omitted in `setup`
    enabled = true,
    date_format = '%r',
    message_template = '<committer>, <committer-date> • <summary>',
}

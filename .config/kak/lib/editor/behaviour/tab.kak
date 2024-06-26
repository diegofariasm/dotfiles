bundle smarttab.kak "https://github.com/andreyorst/smarttab.kak" %{
    hook global BufOpenFile .* expandtab
    hook global BufNewFile  .* expandtab
}




hook global InsertCompletionShow .* %{
    try %{
        exec -draft 'h<a-K>\h<ret>'
        map window insert <s-tab> <c-p>
        map window insert <tab> <c-n>
    }
}
hook global InsertCompletionHide .* %{
    unmap window insert <tab> <c-n>
    unmap window insert <s-tab> <c-p>
}

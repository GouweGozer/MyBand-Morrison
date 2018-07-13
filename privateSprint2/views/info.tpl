<p><h1>Informatie:</h1>

<h2>Huidige Pagina: {$current_page}</h2>

{if $current_page gt 1}
    <a href="index.php?page=info&pageno={$current_page - 1}"><i class="far fa-arrow-alt-circle-left"></i></a>
{/if}

{if $current_page lt $number_of_pages}
    <a href="index.php?page=info&pageno={$current_page + 1}"><i class="far fa-arrow-alt-circle-right"></i></a>
{/if} <br>

{foreach from=$articles item=article}
    <h2>{$article[1]}</h2>
    <p>{$article[2]}</p>
    <img src="{$article[3]}" alt="foobar" height="200px" width="200px" />
{/foreach}
</p> <br>

{if $current_page gt 1}
    <a href="index.php?page=info&pageno={$current_page - 1}"><i class="far fa-arrow-alt-circle-left"></i></a>
{/if}

{if $current_page lt $number_of_pages}
    <a href="index.php?page=info&pageno={$current_page + 1}"><i class="far fa-arrow-alt-circle-right"></i></a>
{/if}
<h1>hallo smarty</h1>

<p><h1>ARTIEKELEN:</h1>

<h2>Huidige Pagina: {$current_page}</h2>

{if $current_page gt 1}
    <a href="index.php?page=home&pageno={$current_page - 1}">TERUG</a>
{/if}

{if $current_page lt $number_of_pages}
    <a href="index.php?page=home&pageno={$current_page + 1}">VERDER</a>
{/if}

        {foreach from=$articles item=article}
            <h2>{$article[0]}</h2>
            <p>{$article[1]}</p>
            <img src="{$article[2]}" alt="foobar" />
        {/foreach}
</p>


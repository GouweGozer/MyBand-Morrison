<h1>CMS</h1>
<table>

    <a href="index.php?page=post">POST</a> <br>
    <a href="index.php?page=loguit">LOG UIT</a> <br>
{foreach from=$articles item=article}
    <tr>
    <td>{$article[0]}</td>
    <td>{$article[1]}</td>
    <td>{$article[2]}</td>
    <td>{$article[3]}</td>
        <td><a href="index.php?page=edit&id={$article[0]}">EDIT</a></td>
        <td><a href="index.php?page=delete&id={$article[0]}">DELETE</a></td>
    </tr>
{/foreach}
</table>
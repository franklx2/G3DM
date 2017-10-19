<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<script type="text/javascript" src="resources/javascript/jquery-1.12.1.js"></script>

<link href="resources/kartik/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
     This must be loaded before fileinput.min.js -->
<script src="resources/kartik/js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
<script src="resources/kartik/js/fileinput.min.js"></script>
<!-- bootstrap.js below is only needed if you wish to the feature of viewing details
     of text file preview via modal dialog -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js" type="text/javascript"></script>
<!-- optionally if you need translation for your language then include 
    locale file as mentioned below -->

<!-- some CSS styling changes and overrides -->
<style>
.kv-avatar .file-preview-frame,.kv-avatar .file-preview-frame:hover {
    margin: 0;
    padding: 0;
    border: none;
    box-shadow: none;
    text-align: center;
}
.kv-avatar .file-input {
    display: table-cell;
    max-width: 220px;
}
</style>
 
<!-- the avatar markup -->
<div id="kv-avatar-errors" class="center-block" style="width:800px;display:none"></div>
<form class="text-center" action="upload" method="post" enctype="multipart/form-data">
    <div class="kv-avatar center-block" >
        <input id="avatar" name="avatar" type="file" class="file-loading">
    </div>
    <!-- include other inputs if needed and include a form submit (save) button -->
</form>
<!-- your server code `avatar_upload.php` will receive `$_FILES['avatar']` on form submission -->
 
<!-- the fileinput plugin initialization -->
<script>
var btnCust = '<button type="submit" class="btn btn-default" >Save</button>'; 
$("#avatar").fileinput({
    overwriteInitial: true,
    maxFileSize: 1500,
    showClose: false,
    showCaption: false,
    browseLabel: '',
    removeLabel: '',
    browseIcon: '<i class="glyphicon glyphicon-folder-open"></i>',
    removeIcon: '<i class="glyphicon glyphicon-remove"></i>',
    removeTitle: 'Cancel or reset changes',
    elErrorContainer: '#kv-avatar-errors',
    msgErrorClass: 'alert alert-block alert-danger',
    defaultPreviewContent: '<img src="resources/pics/default_avatar_male.jpg" alt="Your Avatar" style="width:160px">',
    layoutTemplates: {main2: '{preview} ' +  btnCust + ' {remove} {browse}'},
    allowedFileExtensions: ["jpg", "png", "gif"]
});
</script>
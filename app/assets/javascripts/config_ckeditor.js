CKEDITOR.on( 'dialogDefinition', function(ev){
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;

    if (dialogName == 'link')
    {
      dialogDefinition.removeContents('advanced');
      dialogDefinition.removeContents('target');
    }

    if (dialogName == 'image')
    {
      dialogDefinition.removeContents('advanced');
      dialogDefinition.removeContents('Link');
      dialogDefinition.removeContents('Upload');
      // dialogDefinition.height = 800;
      // dialogDefinition.width = 1700;
    }
    if (dialogName == 'flash')
    {
      dialogDefinition.removeContents('advanced');
    }
    var infoTab = dialogDefinition.getContents('info');
    //infoTab.remove('txtAlt');
    //infoTab.remove('cmbAlign');
    //infoTab.remove( 'previewImage');
    infoTab.remove( 'txtBorder' ); //Remove Element Border From Tab Info
    infoTab.remove( 'txtHSpace' ); //Remove Element Horizontal Space From Tab Info
    infoTab.remove( 'txtVSpace' ); //Remove Element Vertical Space From Tab Info
    infoTab.remove( 'txtWidth' ); //Remove Element Width From Tab Info
    infoTab.remove( 'txtHSpace');
    infoTab.remove( 'txtVSpace');
  });

function sl_customization(cm)

cm.addCustomMenuFcn('Simulink:PreContextMenu', @getMyContextMenu);
end

function schemaFcns = getMyContextMenu(callbackInfo) %#ok<INUSD>
schemaFcns = {@setrunclear_mexlog};
end

function schema = setrunclear_mexlog(callbackInfo) %#ok
schema          = sl_action_schema;

MenuLable       = 'clear mex log : mexファイル削除 slprjフォルダ削除';
schema.callback     = @runclear_mexlog;
schema.label        = MenuLable;
end

function runclear_mexlog(callbackInfo) %#ok

clear_mexlog();

end


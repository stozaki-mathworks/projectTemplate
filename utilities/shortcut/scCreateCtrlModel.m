% create from model template file
warning('off','Simulink:Engine:MdlFileShadowing');
h = Simulink.createFromTemplate('controlModelTemplate.sltx');
open_system(h);
clearvars('h');
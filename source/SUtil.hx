package;

#if android
import sys.FileSystem;
import lime.app.Application;
import flash.system.System;
import android.*;
#end

class SUtil
{
    #if android
    private static var androidDir:String = null;
    private static var storagePath:String = AndroidTools.getExternalStorageDirectory();  
    #end

    static public function getPath():String
    {
    	#if android
        if (androidDir != null && androidDir.length > 0) 
        {
                return androidDir;
        } 
        else 
        {
                androidDir = storagePath + "/" + Application.current.meta.get("packageName") + "/files/";         
        }
        return androidDir;
        #else
        return "";
        #end
    }

    static public function doTheCheck()
    {
        #if android
        if (AndroidTools.getSDKversion() > 23 || AndroidTools.getSDKversion() == 23) {
                AndroidTools.requestPermissions([Permissions.READ_EXTERNAL_STORAGE, Permissions.WRITE_EXTERNAL_STORAGE]);
        }  

        var grantedPermsList:Array<Permissions> = AndroidTools.getGrantedPermissions();    
        if (!grantedPermsList.contains(Permissions.READ_EXTERNAL_STORAGE) || !grantedPermsList.contains(Permissions.WRITE_EXTERNAL_STORAGE)) {
                if (AndroidTools.getSDKversion() > 23 || AndroidTools.getSDKversion() == 23) {
                        Application.current.window.alert("If you accepted the permisions for storage, good, you can continue, if you not the game can't run without storage permissions please grant them in app settings" + "\n" + "Press Ok To Close The App","Permissions");                        
                } else {
                        Application.current.window.alert("game can't run without storage permissions please grant them in app settings" + "\n" + "Press Ok To Close The App","Permissions");                       
                }
        }

        if (!FileSystem.exists(storagePath + "/" + Application.current.meta.get("packageName")))
        {
                FileSystem.createDirectory(storagePath + "/" + Application.current.meta.get("packageName"));
        }

        if (!FileSystem.exists(storagePath + "/" + Application.current.meta.get("packageName") + "/files"))
        {
                FileSystem.createDirectory(storagePath + "/" + Application.current.meta.get("packageName") + "/files");
        }

        if (!FileSystem.exists(SUtil.getPath() + "assets") && !FileSystem.exists(SUtil.getPath() + "mods"))
        {
                Application.current.window.alert("Try copying assets/assets and assets/mods from apk to your internal storage app directory" + "\n" + "Press Ok To Close The App", "Instructions");
                System.exit(0);//Will close the game
        }
        #end
    }
}

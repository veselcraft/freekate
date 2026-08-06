.class public Lcom/perm/kate/photoupload/PhotoChooser;
.super Ljava/lang/Object;
.source "PhotoChooser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/photoupload/PhotoChooser$Callback;
    }
.end annotation


# direct methods
.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->reportPhotoAttachment(Ljava/lang/String;)V

    return-void
.end method

.method private static arrayToArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v1, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 198
    .local v0, "uri":Landroid/os/Parcelable;
    check-cast v0, Landroid/net/Uri;

    .end local v0    # "uri":Landroid/os/Parcelable;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 199
    :cond_0
    return-object v1
.end method

.method public static chooseFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 231
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const/16 v2, 0x3e9

    invoke-static {p0, p1, v1, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 236
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static chooseFromInternalGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 243
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v1, "i":Landroid/content/Intent;
    const/16 v2, 0x3eb

    invoke-static {p0, p1, v1, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 247
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFromCamera(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0704bf

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 280
    :goto_0
    return-void

    .line 260
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getUniqueFile()Ljava/io/File;

    move-result-object v1

    .line 261
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->saveCameraPhotoToGalley()Z

    move-result v3

    if-nez v3, :cond_1

    .line 262
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getTempFile()Ljava/io/File;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perm/kate/photoupload/PhotoChooser;->saveUniquePath(Ljava/lang/String;)V

    .line 273
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 275
    const/16 v3, 0x3ea

    invoke-static {p0, p1, v2, v3}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 278
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static getSavedUniquePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 298
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "file_for_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "file_for_camera"

    const/4 v2, 0x0

    .line 299
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    return-object v0
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".Kate/uploads/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 122
    new-instance v1, Ljava/io/File;

    const-string v2, "image.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getUniqueFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 286
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v0

    .line 288
    .local v0, "destination_dir":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "destination_filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static internalGalleryEnabled()Z
    .locals 3

    .prologue
    .line 309
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_internal_gallery"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v0, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    return-object v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "callback"    # Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .prologue
    const/4 v5, -0x1

    .line 126
    const/16 v4, 0x3ec

    if-ne p1, v4, :cond_0

    .line 127
    if-ne p2, v5, :cond_5

    .line 128
    const-string v4, "selected_photos"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 129
    .local v2, "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p4, v2}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selectedFromAlbum(Ljava/util/ArrayList;)V

    .line 133
    .end local v2    # "selected_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const/16 v4, 0x3eb

    if-ne p1, v4, :cond_1

    .line 134
    if-ne p2, v5, :cond_6

    .line 135
    const-string v4, "selected_photos"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-static {v3}, Lcom/perm/kate/photoupload/PhotoChooser;->arrayToArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    .line 141
    .end local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_1
    :goto_1
    const/16 v4, 0x3e9

    if-ne p1, v4, :cond_2

    .line 142
    if-ne p2, v5, :cond_7

    .line 143
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    .line 148
    :cond_2
    :goto_2
    const/16 v4, 0x3ea

    if-ne p1, v4, :cond_4

    .line 149
    if-ne p2, v5, :cond_9

    .line 150
    invoke-static {p3}, Lcom/perm/kate/photoupload/PhotoChooser;->printDebugInfo(Landroid/content/Intent;)V

    .line 156
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getSavedUniquePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 160
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->saveCameraPhotoToGalley()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    new-instance v4, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :cond_3
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    :goto_3
    const/4 v4, 0x0

    return-object v4

    .line 131
    :cond_5
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    goto :goto_0

    .line 138
    :cond_6
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    goto :goto_1

    .line 145
    :cond_7
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    goto :goto_2

    .line 170
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 172
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 174
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 179
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_8
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {p4, v4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 189
    .end local v1    # "file":Ljava/io/File;
    :cond_9
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    goto :goto_3
.end method

.method static printDebugInfo(Landroid/content/Intent;)V
    .locals 4
    .param p0, "data"    # Landroid/content/Intent;

    .prologue
    .line 211
    :try_start_0
    const-string v1, "Kate.PhotoChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BRAND="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v1, "Kate.PhotoChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRODUCT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v1, "Kate.PhotoChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v1, "Kate.PhotoChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz p0, :cond_0

    .line 216
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kate:PhotoChooser:data.getData()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static reportPhotoAttachment(Ljava/lang/String;)V
    .locals 8
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 314
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 315
    .local v2, "time":J
    const-wide/16 v4, 0x3e8

    rem-long v4, v2, v4

    const-wide/16 v6, 0x3e7

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 320
    :goto_0
    return-void

    .line 317
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 318
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "type"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v1, "PHOTO_ATTACHMENT"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static requestPhoto(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZZZLjava/lang/Long;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "multiple"    # Z
    .param p3, "show_albums"    # Z
    .param p4, "from_group"    # Z
    .param p5, "owner_id"    # Ljava/lang/Long;

    .prologue
    const v5, 0x7f0700b4

    const/4 v6, 0x1

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    if-eqz p2, :cond_2

    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->internalGalleryEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const/4 v4, 0x2

    invoke-direct {v3, v5, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_0
    if-eqz p3, :cond_0

    .line 55
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070361

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    .line 57
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    const/4 v5, 0x4

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_1
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0700b3

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0704f8

    const/4 v5, 0x5

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/photoupload/PhotoChooser$1;

    invoke-direct {v5, v1, p0, p1, p5}, Lcom/perm/kate/photoupload/PhotoChooser$1;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/Long;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 94
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 95
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 97
    return-void

    .line 53
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v2    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const/4 v4, 0x0

    invoke-direct {v3, v5, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static saveCameraPhotoToGalley()Z
    .locals 3

    .prologue
    .line 324
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "camera_save"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static saveUniquePath(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 293
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "file_for_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "file_for_camera"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 295
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "i"    # Landroid/content/Intent;
    .param p3, "request_code"    # I

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static startAlbumsActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;ZLjava/lang/Long;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "from_group"    # Z
    .param p3, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 102
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 105
    :goto_0
    const-string v1, "com.perm.kate.select_mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    const/16 v1, 0x3ec

    invoke-static {p0, p1, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 107
    return-void

    .line 104
    :cond_0
    const-string v1, "com.perm.kate.owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

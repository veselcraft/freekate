.class public abstract Lcom/perm/kate/photoupload/PhotoChooser;
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

    .line 45
    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->reportPhotoAttachment(Ljava/lang/String;)V

    return-void
.end method

.method private static arrayToArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 212
    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static chooseFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 245
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 v1, 0x3e9

    .line 250
    invoke-static {p0, p1, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 253
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static chooseFromInternalGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 260
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const/16 v0, 0x64

    .line 261
    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 266
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x3eb

    .line 267
    invoke-static {p0, p1, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 270
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getFromCamera(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 5

    .line 275
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f0f0545

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 283
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getUniqueFile()Ljava/io/File;

    move-result-object v0

    .line 284
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->saveCameraPhotoToGalley()Z

    move-result v1

    if-nez v1, :cond_1

    .line 285
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getTempFile()Ljava/io/File;

    move-result-object v0

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/photoupload/PhotoChooser;->saveUniquePath(Ljava/lang/String;)V

    .line 296
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 299
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    const-string v2, "cc.veselcraft.freekate.provider"

    .line 300
    invoke-static {p0, v2, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    :cond_2
    const-string v0, "output"

    .line 301
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v0, 0x3ea

    .line 302
    invoke-static {p0, p1, v1, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static getSavedUniquePath()Ljava/lang/String;
    .locals 3

    .line 326
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "file_for_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    .line 327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 3

    .line 125
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "uploads/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 128
    new-instance v1, Ljava/io/File;

    const-string v2, "image.tmp"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getUniqueFile()Ljava/io/File;
    .locals 4

    .line 313
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->getSaveDir()Ljava/io/File;

    move-result-object v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 317
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method public static internalGalleryEnabled()Z
    .locals 3

    .line 337
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

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;
    .locals 3

    const-string p0, "selected_photos"

    const/4 v0, -0x1

    const/16 v1, 0x3ec

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_0

    .line 134
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    invoke-interface {p4, v1}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selectedFromAlbum(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    :cond_1
    :goto_0
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_3

    if-ne p2, v0, :cond_2

    .line 141
    invoke-virtual {p3, p0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 142
    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->arrayToArray(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 144
    :cond_2
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    :cond_3
    :goto_1
    const/16 p0, 0x3e9

    if-ne p1, p0, :cond_7

    if-ne p2, v0, :cond_6

    .line 149
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 152
    :goto_2
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 153
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 156
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p0

    .line 157
    :cond_5
    invoke-interface {p4, p0}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 159
    :cond_6
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    :cond_7
    :goto_3
    const/16 p0, 0x3ea

    if-ne p1, p0, :cond_b

    if-ne p2, v0, :cond_a

    .line 164
    invoke-static {p3}, Lcom/perm/kate/photoupload/PhotoChooser;->printDebugInfo(Landroid/content/Intent;)V

    .line 170
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->getSavedUniquePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 174
    :try_start_0
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->saveCameraPhotoToGalley()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 175
    new-instance p1, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;

    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/perm/kate/PhotoSaver$MyMediaScannerClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 182
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 185
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 193
    :cond_9
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/perm/kate/photoupload/PhotoChooser;->makeArray(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p4, p0}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->selected(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 203
    :cond_a
    invoke-interface {p4}, Lcom/perm/kate/photoupload/PhotoChooser$Callback;->canceled()V

    :cond_b
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method

.method static printDebugInfo(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "Kate.PhotoChooser"

    .line 225
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BRAND="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PRODUCT="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEVICE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 230
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kate:PhotoChooser:data.getData()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 233
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static reportPhotoAttachment(Ljava/lang/String;)V
    .locals 5

    .line 342
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 343
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x3e7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "type"

    .line 346
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "PHOTO_ATTACHMENT"

    .line 347
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static requestPhoto(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZZZLjava/lang/Long;)V
    .locals 3

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0f00f7

    if-eqz p2, :cond_0

    .line 56
    invoke-static {}, Lcom/perm/kate/photoupload/PhotoChooser;->internalGalleryEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 57
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const/4 v2, 0x2

    invoke-direct {p2, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p3, :cond_1

    .line 61
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const p3, 0x7f0f03ca

    const/4 v1, 0x3

    invoke-direct {p2, p3, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p4, :cond_2

    .line 63
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const p3, 0x7f0f02b1

    const/4 p4, 0x4

    invoke-direct {p2, p3, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_2
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const p3, 0x7f0f00f6

    const/4 p4, 0x1

    invoke-direct {p2, p3, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance p2, Lcom/perm/kate/MenuItemDetails;

    const p3, 0x7f0f057d

    const/4 v1, 0x5

    invoke-direct {p2, p3, v1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance p2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p3

    new-instance v1, Lcom/perm/kate/photoupload/PhotoChooser$1;

    invoke-direct {v1, v0, p0, p1, p5}, Lcom/perm/kate/photoupload/PhotoChooser$1;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/Long;)V

    invoke-virtual {p2, p3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 101
    invoke-virtual {p0, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static saveCameraPhotoToGalley()Z
    .locals 3

    .line 352
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "camera_save_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static saveUniquePath(Ljava/lang/String;)V
    .locals 3

    .line 321
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "file_for_camera"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public static startAlbumsActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;ZLjava/lang/Long;)V
    .locals 2

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.owner_id"

    if-eqz p2, :cond_0

    .line 108
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 110
    :cond_0
    sget-object p2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    const/4 p2, 0x1

    const-string p3, "com.perm.kate.select_mode"

    .line 111
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p2, 0x3ec

    .line 112
    invoke-static {p0, p1, v0, p2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

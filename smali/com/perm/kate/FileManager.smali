.class public Lcom/perm/kate/FileManager;
.super Lcom/perm/kate/BaseActivity;
.source "FileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/FileManager$DirectoryFilter;
    }
.end annotation


# instance fields
.field adapter:Lcom/perm/kate/FilesAdapter;

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field files:[Ljava/io/File;

.field private fl_button_add:Landroid/view/View;

.field list:Landroid/widget/ListView;

.field private listener:Landroid/widget/AdapterView$OnItemClickListener;

.field root:Ljava/io/File;

.field private selectClickListener:Landroid/view/View$OnClickListener;

.field private select_folder:Z

.field private tv_path:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    .line 35
    new-array v0, v2, [Ljava/io/File;

    iput-object v0, p0, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    .line 37
    iput-boolean v2, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    .line 66
    new-instance v0, Lcom/perm/kate/FileManager$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$1;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 110
    new-instance v0, Lcom/perm/kate/FileManager$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$2;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->comparator:Ljava/util/Comparator;

    .line 153
    new-instance v0, Lcom/perm/kate/FileManager$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$3;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->selectClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FileManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FileManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->extSdCardCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/perm/kate/FileManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/FileManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->canWriteToFolder()Z

    move-result v0

    return v0
.end method

.method private canWriteToFolder()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private displayFiles()V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->updatePathLabel()V

    .line 96
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->updateAddButton()V

    .line 98
    iget-boolean v1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    new-instance v2, Lcom/perm/kate/FileManager$DirectoryFilter;

    invoke-direct {v2, p0}, Lcom/perm/kate/FileManager$DirectoryFilter;-><init>(Lcom/perm/kate/FileManager;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 102
    .local v0, "files_tmp":[Ljava/io/File;
    :goto_0
    if-nez v0, :cond_1

    .line 108
    :goto_1
    return-void

    .line 101
    .end local v0    # "files_tmp":[Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .restart local v0    # "files_tmp":[Ljava/io/File;
    goto :goto_0

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FileManager;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 105
    iput-object v0, p0, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    .line 106
    iget-object v1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    iget-object v2, p0, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/perm/kate/FilesAdapter;->displayNewData([Ljava/io/File;)V

    .line 107
    iget-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private extSdCardCheck()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 175
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v4

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/perm/kate/FileManager;->extractExtSdRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "prefix":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 187
    invoke-direct {p0, v1}, Lcom/perm/kate/FileManager;->testWrite(Ljava/lang/String;)Z

    move-result v0

    .line 188
    .local v0, "can_write":Z
    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0, v2}, Lcom/perm/kate/FileManager;->showExtSdAlert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    const/4 v4, 0x1

    goto :goto_0

    .line 193
    .end local v0    # "can_write":Z
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 194
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 195
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private extractExtSdRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 248
    const/16 v2, 0x13

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "/storage/sdcard1"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "/storage/extsdcard"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "/storage/sdcard0/external_sdcard"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "/mnt/extsdcard"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "/mnt/sdcard/external_sd"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v4, "/mnt/external_sd"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string v4, "/mnt/media_rw/sdcard1"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string v4, "/removable/microsd"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string v4, "/mnt/emmc"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v4, "/storage/external_sd"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string v4, "/storage/ext_sd"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string v4, "/storage/removable/sdcard1"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string v4, "/data/sdext"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v4, "/data/sdext2"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v4, "/data/sdext3"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string v4, "/sdcard1"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v4, "/sdcard2"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string v4, "/storage/microsd"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v4, "/data/sdext4"

    aput-object v4, v1, v2

    .line 267
    .local v1, "prefixes":[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    .line 268
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 270
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 280
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 267
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 275
    invoke-static {p1}, Lcom/perm/kate/FileManager;->parseHexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "prefix":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 280
    .end local v0    # "prefix":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getExternalFilesDirsWithReflect(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 324
    new-array v3, v4, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v5

    .line 326
    .local v3, "signature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    const-class v4, Landroid/content/Context;

    const-string v5, "getExternalFilesDirs"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 327
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    .line 328
    .local v0, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p1, v0, v4

    .line 329
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/io/File;

    check-cast v4, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 341
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 341
    .end local v1    # "e":Ljava/lang/SecurityException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 332
    :catch_1
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 334
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 335
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 336
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 338
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public static parseHexPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 347
    :try_start_0
    const-string v3, "/storage/[0-9A-F]{4}-[0-9A-F]{4}"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 348
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 349
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 350
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 355
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    :goto_0
    return-object v3

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 355
    .end local v2    # "th":Ljava/lang/Throwable;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showExtSdAlert(Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 203
    .local v0, "alert":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f0700a0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 204
    const v2, 0x7f070334

    new-instance v3, Lcom/perm/kate/FileManager$4;

    invoke-direct {v3, p0, p1}, Lcom/perm/kate/FileManager$4;-><init>(Lcom/perm/kate/FileManager;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 218
    const v2, 0x7f07015d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 220
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 221
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 222
    return-void
.end method

.method private showNewFolderDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 289
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "alert":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0701f0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 291
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002f

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 292
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e0095

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 293
    .local v2, "input":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 294
    const v4, 0x7f070334

    new-instance v5, Lcom/perm/kate/FileManager$5;

    invoke-direct {v5, p0, v2}, Lcom/perm/kate/FileManager$5;-><init>(Lcom/perm/kate/FileManager;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 308
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 309
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 310
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 311
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 312
    return-void
.end method

.method private testWrite(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 227
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "test.tmp"

    invoke-direct {v1, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v1, "test":Ljava/io/File;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 229
    .local v0, "out":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 230
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "out":Ljava/io/FileOutputStream;
    .end local v1    # "test":Ljava/io/File;
    :goto_0
    return v3

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "th":Ljava/lang/Throwable;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateAddButton()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    invoke-direct {p0}, Lcom/perm/kate/FileManager;->canWriteToFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :cond_0
    return-void

    .line 145
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updatePathLabel()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lcom/perm/kate/FileManager;->tv_path:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/perm/kate/FileManager;->tv_path:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAddButton()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->showNewFolderDialog()V

    .line 286
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f030071

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/FileManager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "select_folder"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    .line 45
    iget-boolean v1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v1, :cond_2

    const v1, 0x7f070488

    :goto_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->setHeaderTitle(I)V

    .line 46
    const v1, 0x7f0e0093

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    .line 47
    const v1, 0x7f0e019a

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/FileManager;->tv_path:Landroid/widget/TextView;

    .line 48
    new-instance v1, Lcom/perm/kate/FilesAdapter;

    invoke-direct {v1, p0}, Lcom/perm/kate/FilesAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    .line 49
    iget-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    iget-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/FileManager;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    .line 52
    iget-boolean v1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v1, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/FileManager;->setupAddButton()V

    .line 54
    const v1, 0x7f0e01fa

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    const v2, 0x7f0701f0

    invoke-virtual {p0, v2}, Lcom/perm/kate/FileManager;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 59
    :cond_0
    const v1, 0x7f0e00aa

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 60
    const v1, 0x7f0e019f

    invoke-virtual {p0, v1}, Lcom/perm/kate/FileManager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    .local v0, "btnSelect":Landroid/widget/Button;
    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 62
    iget-object v1, p0, Lcom/perm/kate/FileManager;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .end local v0    # "btnSelect":Landroid/widget/Button;
    :cond_1
    return-void

    .line 45
    :cond_2
    const v1, 0x7f070487

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iput-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    .line 90
    iget-object v0, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/FilesAdapter;->destroy()V

    .line 91
    iput-object v1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    .line 92
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 129
    iput-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    .line 130
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    .line 131
    const/4 v1, 0x1

    .line 134
    .end local v0    # "parent":Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

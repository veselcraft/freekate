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
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 38
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/io/File;

    .line 39
    iput-object v1, p0, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    .line 41
    iput-boolean v0, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    .line 74
    new-instance v0, Lcom/perm/kate/FileManager$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$1;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 118
    new-instance v0, Lcom/perm/kate/FileManager$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$2;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->comparator:Ljava/util/Comparator;

    .line 161
    new-instance v0, Lcom/perm/kate/FileManager$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/FileManager$3;-><init>(Lcom/perm/kate/FileManager;)V

    iput-object v0, p0, Lcom/perm/kate/FileManager;->selectClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/FileManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/FileManager;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->extSdCardCheck()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/perm/kate/FileManager;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->canWriteToFolder()Z

    move-result p0

    return p0
.end method

.method private canWriteToFolder()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private displayFiles()V
    .locals 2

    .line 103
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->updatePathLabel()V

    .line 104
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->updateAddButton()V

    .line 106
    iget-boolean v0, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    new-instance v1, Lcom/perm/kate/FileManager$DirectoryFilter;

    invoke-direct {v1, p0}, Lcom/perm/kate/FileManager$DirectoryFilter;-><init>(Lcom/perm/kate/FileManager;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FileManager;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 113
    iput-object v0, p0, Lcom/perm/kate/FileManager;->files:[Ljava/io/File;

    .line 114
    iget-object v1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    invoke-virtual {v1, v0}, Lcom/perm/kate/FilesAdapter;->displayNewData([Ljava/io/File;)V

    .line 115
    iget-object v0, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method private extSdCardCheck()Z
    .locals 3

    const/4 v0, 0x0

    .line 183
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    return v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-direct {p0, v1}, Lcom/perm/kate/FileManager;->extractExtSdRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 195
    :cond_1
    invoke-direct {p0, v1}, Lcom/perm/kate/FileManager;->testWrite(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 199
    :cond_2
    invoke-direct {p0, v2}, Lcom/perm/kate/FileManager;->showExtSdAlert(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return v0
.end method

.method private extractExtSdRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x14

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/storage/sdcard1"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/storage/extsdcard"

    const/4 v4, 0x1

    aput-object v2, v1, v4

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

    const-string v4, "/storage/exfat_uuid"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string v4, "/data/sdext4"

    aput-object v4, v1, v2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 277
    aget-object v4, v1, v2

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 280
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 285
    invoke-static {p1}, Lcom/perm/kate/FileManager;->parseHexPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static getExternalFilesDirsWithReflect(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    .line 335
    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 337
    :try_start_0
    const-class v2, Landroid/content/Context;

    const-string v4, "getExternalFilesDirs"

    invoke-virtual {v2, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 340
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 350
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 348
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 346
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 344
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    .line 342
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseHexPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "/storage/[0-9A-F]{4}-[0-9A-F]{4}"

    .line 358
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 359
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 360
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 363
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 364
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private showExtSdAlert(Ljava/lang/String;)V
    .locals 2

    .line 210
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f00da

    .line 211
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 212
    new-instance v1, Lcom/perm/kate/FileManager$4;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/FileManager$4;-><init>(Lcom/perm/kate/FileManager;Ljava/lang/String;)V

    const p1, 0x7f0f0398

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p1, 0x7f0f01c5

    const/4 v1, 0x0

    .line 226
    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 227
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 228
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 229
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showNewFolderDialog()V
    .locals 4

    .line 299
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f024b

    .line 300
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 301
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09010e

    .line 302
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 303
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 304
    new-instance v1, Lcom/perm/kate/FileManager$5;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/FileManager$5;-><init>(Lcom/perm/kate/FileManager;Landroid/widget/EditText;)V

    const v2, 0x7f0f0398

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 318
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 319
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 320
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 321
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private testWrite(Ljava/lang/String;)Z
    .locals 2

    .line 235
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "test.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x1

    .line 237
    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 238
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 240
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateAddButton()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz v1, :cond_1

    .line 153
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->canWriteToFolder()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updatePathLabel()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/perm/kate/FileManager;->tv_path:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAddButton()V
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->showNewFolderDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c007b

    .line 47
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "select_folder"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f0517

    goto :goto_0

    :cond_0
    const p1, 0x7f0f0516

    .line 49
    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f0901bf

    .line 50
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    const p1, 0x7f090394

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/FileManager;->tv_path:Landroid/widget/TextView;

    .line 52
    new-instance p1, Lcom/perm/kate/FilesAdapter;

    invoke-direct {p1, p0}, Lcom/perm/kate/FilesAdapter;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    .line 53
    iget-object v0, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object p1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/perm/kate/FileManager;->listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    .line 56
    iget-boolean p1, p0, Lcom/perm/kate/FileManager;->select_folder:Z

    if-eqz p1, :cond_2

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAddButton()V

    const p1, 0x7f090137

    .line 58
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    if-eqz p1, :cond_1

    const v0, 0x7f0f024b

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/perm/kate/FileManager;->fl_button_add:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const p1, 0x7f09014c

    .line 63
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f090090

    .line 64
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v0, 0x7f0f00c9

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 66
    iget-object v0, p0, Lcom/perm/kate/FileManager;->selectClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 69
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v1

    .line 70
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 96
    iget-object v0, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iput-object v1, p0, Lcom/perm/kate/FileManager;->list:Landroid/widget/ListView;

    .line 98
    iget-object v0, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/FilesAdapter;->destroy()V

    .line 99
    iput-object v1, p0, Lcom/perm/kate/FileManager;->adapter:Lcom/perm/kate/FilesAdapter;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iput-object v0, p0, Lcom/perm/kate/FileManager;->root:Ljava/io/File;

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/FileManager;->displayFiles()V

    const/4 p1, 0x1

    return p1

    .line 142
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

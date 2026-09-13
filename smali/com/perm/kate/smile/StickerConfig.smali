.class public abstract Lcom/perm/kate/smile/StickerConfig;
.super Ljava/lang/Object;
.source "StickerConfig.java"


# static fields
.field private static products1:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    return-void
.end method

.method public static clear()V
    .locals 1

    .line 32
    sget-object v0, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static getFileName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stickers-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".bin"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStickers()Ljava/util/ArrayList;
    .locals 3

    .line 18
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    sget-object v1, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 20
    sget-object v1, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0

    .line 21
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/smile/StickerConfig;->readCache(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->makeDefaults()Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    :cond_1
    sget-object v2, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static makeDefaults()Ljava/util/ArrayList;
    .locals 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static makeFruitStickers()Lcom/perm/kate/api/Product;
    .locals 3

    .line 51
    new-instance v0, Lcom/perm/kate/api/Product;

    invoke-direct {v0}, Lcom/perm/kate/api/Product;-><init>()V

    .line 52
    sget v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FRUITABLES:I

    iput v1, v0, Lcom/perm/kate/api/Product;->id:I

    .line 53
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0494

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 54
    sget-object v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FRUITABLES:[I

    iput-object v1, v0, Lcom/perm/kate/api/Product;->sticker_ids:[I

    return-object v0
.end method

.method public static makeSmileStickers()Lcom/perm/kate/api/Product;
    .locals 3

    .line 43
    new-instance v0, Lcom/perm/kate/api/Product;

    invoke-direct {v0}, Lcom/perm/kate/api/Product;-><init>()V

    .line 44
    sget v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    iput v1, v0, Lcom/perm/kate/api/Product;->id:I

    .line 45
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0f0485

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 46
    sget-object v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SMILES:[I

    iput-object v1, v0, Lcom/perm/kate/api/Product;->sticker_ids:[I

    return-object v0
.end method

.method public static moveSmilesToTop(Ljava/util/ArrayList;)V
    .locals 4

    .line 103
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Product;

    .line 104
    iget v2, v1, Lcom/perm/kate/api/Product;->id:I

    sget v3, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    if-ne v2, v3, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static readCache(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 4

    const/4 v0, 0x0

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 79
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 81
    :goto_0
    :try_start_2
    instance-of v2, p0, Ljava/io/FileNotFoundException;

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 86
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 87
    throw p0
.end method

.method public static saveCache(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 5

    const/4 v0, 0x0

    .line 61
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 64
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_2
    move-exception p0

    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 68
    throw p0
.end method

.method public static setStickers(Ljava/util/ArrayList;)V
    .locals 1

    .line 92
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 93
    invoke-static {p0, v0}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    return-void
.end method

.method public static setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 1

    .line 97
    sget-object v0, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p0, p1}, Lcom/perm/kate/smile/StickerConfig;->saveCache(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    return-void
.end method

.method public static stickersDownloaded()Z
    .locals 3

    .line 113
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

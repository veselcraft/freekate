.class public Lcom/perm/kate/smile/StickerConfig;
.super Ljava/lang/Object;
.source "StickerConfig.java"


# static fields
.field private static products1:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    return-void
.end method

.method private static getFileName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .param p0, "account_id"    # Ljava/lang/Integer;

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stickers-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStickers()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 19
    .local v0, "account_id":Ljava/lang/Integer;
    sget-object v2, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    sget-object v2, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 28
    :goto_0
    return-object v2

    .line 21
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/smile/StickerConfig;->readCache(Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 24
    .local v1, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    if-nez v1, :cond_1

    .line 25
    invoke-static {}, Lcom/perm/kate/smile/StickerConfig;->makeDefaults()Ljava/util/ArrayList;

    move-result-object v1

    .line 27
    :cond_1
    sget-object v2, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 28
    goto :goto_0
.end method

.method private static makeDefaults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    return-object v0
.end method

.method public static makeFruitStickers()Lcom/perm/kate/api/Product;
    .locals 3

    .prologue
    .line 47
    new-instance v0, Lcom/perm/kate/api/Product;

    invoke-direct {v0}, Lcom/perm/kate/api/Product;-><init>()V

    .line 48
    .local v0, "p":Lcom/perm/kate/api/Product;
    sget v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_FRUITABLES:I

    iput v1, v0, Lcom/perm/kate/api/Product;->id:I

    .line 49
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0703ff

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 50
    sget-object v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_FRUITABLES:[I

    iput-object v1, v0, Lcom/perm/kate/api/Product;->sticker_ids:[I

    .line 51
    return-object v0
.end method

.method public static makeSmileStickers()Lcom/perm/kate/api/Product;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Lcom/perm/kate/api/Product;

    invoke-direct {v0}, Lcom/perm/kate/api/Product;-><init>()V

    .line 40
    .local v0, "p":Lcom/perm/kate/api/Product;
    sget v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    iput v1, v0, Lcom/perm/kate/api/Product;->id:I

    .line 41
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0703f4

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Product;->title:Ljava/lang/String;

    .line 42
    sget-object v1, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SMILES:[I

    iput-object v1, v0, Lcom/perm/kate/api/Product;->sticker_ids:[I

    .line 43
    return-object v0
.end method

.method public static moveSmilesToTop(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "products":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Product;

    .line 100
    .local v0, "p":Lcom/perm/kate/api/Product;
    iget v2, v0, Lcom/perm/kate/api/Product;->id:I

    sget v3, Lcom/perm/kate/smile/SmileKeyboard;->STICKERS_SET_SMILES:I

    if-ne v2, v3, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 102
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 106
    .end local v0    # "p":Lcom/perm/kate/api/Product;
    :cond_1
    return-void
.end method

.method public static readCache(Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "account_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "is":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p0}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Application;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .local v1, "is":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 82
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 84
    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    :goto_0
    return-object v3

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    instance-of v3, v2, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_0
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 84
    const/4 v3, 0x0

    goto :goto_0

    .line 82
    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 76
    .end local v0    # "is":Ljava/io/ObjectInputStream;
    .restart local v1    # "is":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "is":Ljava/io/ObjectInputStream;
    .restart local v0    # "is":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static saveCache(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "account_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "notifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {p1}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 65
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "th":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v2    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 59
    .end local v0    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v0    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static setStickers(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 89
    .local v0, "account_id":Ljava/lang/Integer;
    invoke-static {p0, v0}, Lcom/perm/kate/smile/StickerConfig;->setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 90
    return-void
.end method

.method public static setStickers(Ljava/util/ArrayList;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "account_id"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Product;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Product;>;"
    sget-object v0, Lcom/perm/kate/smile/StickerConfig;->products1:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p0, p1}, Lcom/perm/kate/smile/StickerConfig;->saveCache(Ljava/util/ArrayList;Ljava/lang/Integer;)V

    .line 95
    return-void
.end method

.method public static stickersDownloaded()Z
    .locals 4

    .prologue
    .line 109
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 110
    .local v0, "account_id":Ljava/lang/Integer;
    invoke-static {v0}, Lcom/perm/kate/smile/StickerConfig;->getFileName(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

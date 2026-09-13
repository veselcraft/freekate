.class public abstract Lcom/perm/kate/RecentStickers;
.super Ljava/lang/Object;
.source "RecentStickers.java"


# static fields
.field private static sticker_ids:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static add(I)V
    .locals 2

    .line 57
    :try_start_0
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/perm/kate/RecentStickers;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    .line 60
    :cond_0
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/16 p0, 0x1e

    .line 65
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p0, :cond_1

    .line 66
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 67
    :cond_1
    invoke-static {}, Lcom/perm/kate/RecentStickers;->saveToDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 69
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static get()[I
    .locals 3

    .line 19
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 20
    invoke-static {}, Lcom/perm/kate/RecentStickers;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    .line 23
    :cond_0
    sget-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 24
    :goto_0
    sget-object v2, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 25
    sget-object v2, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static readFromDisk()Ljava/util/ArrayList;
    .locals 5

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "recent_stickers.bin"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 42
    :goto_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static reinit()V
    .locals 1

    .line 31
    invoke-static {}, Lcom/perm/kate/RecentStickers;->readFromDisk()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    return-void
.end method

.method private static saveToDisk()V
    .locals 5

    .line 76
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v3, "recent_stickers.bin"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    sget-object v1, Lcom/perm/kate/RecentStickers;->sticker_ids:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    return-void
.end method

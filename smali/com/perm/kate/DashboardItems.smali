.class public Lcom/perm/kate/DashboardItems;
.super Ljava/lang/Object;
.source "DashboardItems.java"


# static fields
.field static items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/DashboardItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    .line 16
    invoke-static {}, Lcom/perm/kate/DashboardItems;->load()V

    .line 17
    return-void
.end method

.method public static load()V
    .locals 8

    .prologue
    .line 43
    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "dash.bin"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 63
    :goto_0
    return-void

    .line 46
    :cond_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v4, "in":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    .line 49
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    .line 50
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 51
    new-instance v5, Lcom/perm/kate/DashboardItem;

    invoke-direct {v5}, Lcom/perm/kate/DashboardItem;-><init>()V

    .line 52
    .local v5, "item":Lcom/perm/kate/DashboardItem;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/perm/kate/DashboardItem;->type:I

    .line 53
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/perm/kate/DashboardItem;->id:I

    .line 54
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 55
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    .line 56
    sget-object v6, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 58
    .end local v5    # "item":Lcom/perm/kate/DashboardItem;
    :cond_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0    # "count":I
    .end local v3    # "i":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static save()V
    .locals 8

    .prologue
    .line 22
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 24
    .local v2, "oos":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 25
    sget-object v5, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 26
    sget-object v5, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/DashboardItem;

    .line 27
    .local v4, "x":Lcom/perm/kate/DashboardItem;
    iget v6, v4, Lcom/perm/kate/DashboardItem;->type:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    iget v6, v4, Lcom/perm/kate/DashboardItem;->id:I

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    iget-object v6, v4, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 30
    iget-object v6, v4, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 35
    .end local v2    # "oos":Ljava/io/DataOutputStream;
    .end local v4    # "x":Lcom/perm/kate/DashboardItem;
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 39
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 32
    .restart local v2    # "oos":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_1
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v6, "dash.bin"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 33
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

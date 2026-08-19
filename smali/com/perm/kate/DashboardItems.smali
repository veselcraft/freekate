.class public abstract Lcom/perm/kate/DashboardItems;
.super Ljava/lang/Object;
.source "DashboardItems.java"


# static fields
.field static items:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    .line 16
    invoke-static {}, Lcom/perm/kate/DashboardItems;->load()V

    return-void
.end method

.method public static load()V
    .locals 5

    .line 43
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "dash.bin"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 46
    :cond_0
    sget-object v1, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 47
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 50
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 52
    new-instance v3, Lcom/perm/kate/DashboardItem;

    invoke-direct {v3}, Lcom/perm/kate/DashboardItem;-><init>()V

    .line 53
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Lcom/perm/kate/DashboardItem;->type:I

    .line 54
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Lcom/perm/kate/DashboardItem;->id:I

    .line 55
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    .line 56
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    .line 57
    sget-object v4, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static save()V
    .locals 5

    .line 22
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 23
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 25
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 26
    sget-object v2, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/DashboardItem;

    .line 27
    iget v4, v3, Lcom/perm/kate/DashboardItem;->type:I

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 28
    iget v4, v3, Lcom/perm/kate/DashboardItem;->id:I

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 29
    iget-object v4, v3, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 30
    iget-object v3, v3, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v2, "dash.bin"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 34
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

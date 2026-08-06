.class public Lcom/inmobi/commons/core/utilities/b;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)V
    .locals 5

    .prologue
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 17
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/io/File;)V

    .line 15
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 25
    :cond_2
    return-void
.end method

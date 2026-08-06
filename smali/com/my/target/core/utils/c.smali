.class public final Lcom/my/target/core/utils/c;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 23
    const/4 v1, 0x0

    .line 24
    array-length v3, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p0, v2

    .line 26
    if-nez v1, :cond_0

    .line 24
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 27
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 29
    :cond_1
    if-nez v1, :cond_2

    const-string v0, ""

    .line 30
    :goto_2
    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

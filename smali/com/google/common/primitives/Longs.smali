.class public abstract Lcom/google/common/primitives/Longs;
.super Ljava/lang/Object;
.source "Longs.java"


# direct methods
.method public static varargs max([J)J
    .locals 6

    .line 213
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 214
    aget-wide v0, p0, v1

    .line 215
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 216
    aget-wide v3, p0, v2

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    .line 217
    aget-wide v0, p0, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-wide v0
.end method

.class public abstract Lcom/perm/kate/ThreadIdHelper;
.super Ljava/lang/Object;
.source "ThreadIdHelper.java"


# static fields
.field static MAX_NEGATIVE_USER_ID:I = -0x77359400


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getChatId(J)J
    .locals 1

    .line 45
    invoke-static {p0, p1}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p0

    :cond_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static getUserId(J)J
    .locals 3

    .line 35
    invoke-static {p0, p1}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/32 v0, -0x3b9aca00

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const-wide/32 v0, 0x3b9aca00

    add-long/2addr p0, v0

    return-wide p0

    :cond_0
    neg-long p0, p0

    return-wide p0

    :cond_1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static isUser(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_1

    .line 31
    sget v0, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    neg-int v0, v0

    int-to-long v0, v0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_0
    if-nez p1, :cond_1

    return-wide v0

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-gez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget p0, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_2

    .line 26
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/32 v0, 0x3b9aca00

    sub-long/2addr p0, v0

    return-wide p0

    .line 27
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    neg-long p0, p0

    return-wide p0
.end method

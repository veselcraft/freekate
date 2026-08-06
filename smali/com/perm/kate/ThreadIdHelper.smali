.class public Lcom/perm/kate/ThreadIdHelper;
.super Ljava/lang/Object;
.source "ThreadIdHelper.java"


# static fields
.field static MAX_NEGATIVE_USER_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const v0, -0x77359400

    sput v0, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    return-void
.end method

.method public static getChatId(J)J
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    .end local p0    # "thread_id":J
    :goto_0
    return-wide p0

    .restart local p0    # "thread_id":J
    :cond_0
    const-wide/16 p0, 0x0

    goto :goto_0
.end method

.method public static getUserId(J)J
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    const-wide/32 v0, -0x3b9aca00

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    .line 33
    const-wide/32 v0, 0x3b9aca00

    add-long/2addr v0, p0

    .line 36
    :goto_0
    return-wide v0

    .line 34
    :cond_0
    neg-long v0, p0

    goto :goto_0

    .line 36
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static isUser(J)Z
    .locals 2
    .param p0, "thread_id"    # J

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    sget v0, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    neg-int v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static makeThreadId(Ljava/lang/Long;J)J
    .locals 5
    .param p0, "chat_id"    # Ljava/lang/Long;
    .param p1, "user_id"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 17
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 22
    :goto_0
    return-wide v0

    .line 20
    :cond_0
    cmp-long v0, p1, v2

    if-gez v0, :cond_1

    sget v0, Lcom/perm/kate/ThreadIdHelper;->MAX_NEGATIVE_USER_ID:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 21
    const-wide/32 v0, 0x3b9aca00

    sub-long v0, p1, v0

    goto :goto_0

    .line 22
    :cond_1
    neg-long v0, p1

    goto :goto_0
.end method

.class public Lcom/perm/utils/MusicTimer;
.super Ljava/lang/Object;
.source "MusicTimer.java"


# static fields
.field private static MILLIS_IN_MINUTE:I

.field private static handler:Landroid/os/Handler;

.field private static runnable:Ljava/lang/Runnable;

.field private static stop_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    .line 14
    const v0, 0xea60

    sput v0, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    .line 29
    new-instance v0, Lcom/perm/utils/MusicTimer$1;

    invoke-direct {v0}, Lcom/perm/utils/MusicTimer$1;-><init>()V

    sput-object v0, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 10
    sput-wide p0, Lcom/perm/utils/MusicTimer;->stop_time:J

    return-wide p0
.end method

.method public static getStopMinutes()I
    .locals 4

    .prologue
    .line 47
    sget-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    sget v1, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isTimerActive()Z
    .locals 4

    .prologue
    .line 41
    sget-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startTimer(I)V
    .locals 4
    .param p0, "minutes"    # I

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    mul-int/2addr v2, p0

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    .line 21
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    .line 25
    :cond_0
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    sget v2, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    mul-int/2addr v2, p0

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 27
    return-void
.end method

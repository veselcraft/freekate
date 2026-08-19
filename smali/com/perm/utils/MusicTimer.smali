.class public abstract Lcom/perm/utils/MusicTimer;
.super Ljava/lang/Object;
.source "MusicTimer.java"


# static fields
.field private static MILLIS_IN_MINUTE:I = 0xea60

.field private static handler:Landroid/os/Handler;

.field private static runnable:Ljava/lang/Runnable;

.field private static stop_time:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/perm/utils/MusicTimer$1;

    invoke-direct {v0}, Lcom/perm/utils/MusicTimer$1;-><init>()V

    sput-object v0, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0

    .line 11
    sput-wide p0, Lcom/perm/utils/MusicTimer;->stop_time:J

    return-wide p0
.end method

.method public static getStopMinutes()I
    .locals 4

    .line 54
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
    .locals 5

    .line 48
    sget-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static startTimer(I)V
    .locals 4

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    mul-int v2, v2, p0

    int-to-long v2, v2

    add-long/2addr v0, v2

    sput-wide v0, Lcom/perm/utils/MusicTimer;->stop_time:J

    .line 22
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    .line 26
    :cond_0
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    sget-object v0, Lcom/perm/utils/MusicTimer;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/perm/utils/MusicTimer;->runnable:Ljava/lang/Runnable;

    sget v2, Lcom/perm/utils/MusicTimer;->MILLIS_IN_MINUTE:I

    mul-int p0, p0, v2

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

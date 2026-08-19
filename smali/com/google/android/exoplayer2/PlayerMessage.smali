.class public final Lcom/google/android/exoplayer2/PlayerMessage;
.super Ljava/lang/Object;
.source "PlayerMessage.java"


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private deleteAfterDelivery:Z

.field private isCanceled:Z

.field private isDelivered:Z

.field private isProcessed:Z

.field private isSent:Z

.field private looper:Landroid/os/Looper;

.field private payload:Ljava/lang/Object;

.field private positionMs:J

.field private final sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

.field private final target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

.field private final timeline:Lcom/google/android/exoplayer2/Timeline;

.field private type:I

.field private windowIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/PlayerMessage$Sender;Lcom/google/android/exoplayer2/PlayerMessage$Target;Lcom/google/android/exoplayer2/Timeline;ILcom/google/android/exoplayer2/util/Clock;Landroid/os/Looper;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    .line 93
    iput-object p2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    .line 94
    iput-object p3, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    .line 95
    iput-object p6, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    .line 96
    iput-object p5, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 97
    iput p4, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 98
    iput-wide p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const/4 p1, 0x1

    .line 99
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized blockUntilDelivered(J)Z
    .locals 6

    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 343
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_1

    .line 344
    iget-object v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/util/Clock;->onThreadBlocked()V

    .line 345
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 346
    iget-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/Clock;->elapsedRealtime()J

    move-result-wide p1

    sub-long p1, v0, p1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 351
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 349
    :cond_2
    :try_start_1
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "Message delivery timed out."

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public getDeleteAfterDelivery()Z
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method public getPayload()Ljava/lang/Object;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object v0
.end method

.method public getPositionMs()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    return-wide v0
.end method

.method public getTarget()Lcom/google/android/exoplayer2/PlayerMessage$Target;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->target:Lcom/google/android/exoplayer2/PlayerMessage$Target;

    return-object v0
.end method

.method public getTimeline()Lcom/google/android/exoplayer2/Timeline;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->timeline:Lcom/google/android/exoplayer2/Timeline;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return v0
.end method

.method public getWindowIndex()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->windowIndex:I

    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 1

    monitor-enter p0

    .line 279
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized markAsProcessed(Z)V
    .locals 1

    monitor-enter p0

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isDelivered:Z

    const/4 p1, 0x1

    .line 292
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isProcessed:Z

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public send()Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 6

    .line 255
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 256
    iget-wide v2, p0, Lcom/google/android/exoplayer2/PlayerMessage;->positionMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 257
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->deleteAfterDelivery:Z

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    .line 259
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->sender:Lcom/google/android/exoplayer2/PlayerMessage$Sender;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/PlayerMessage$Sender;->sendMessage(Lcom/google/android/exoplayer2/PlayerMessage;)V

    return-object p0
.end method

.method public setPayload(Ljava/lang/Object;)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 139
    iput-object p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->payload:Ljava/lang/Object;

    return-object p0
.end method

.method public setType(I)Lcom/google/android/exoplayer2/PlayerMessage;
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/PlayerMessage;->isSent:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 121
    iput p1, p0, Lcom/google/android/exoplayer2/PlayerMessage;->type:I

    return-object p0
.end method

.class public Lcom/google/android/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/ConditionVariable;-><init>(Lcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized block()V
    .locals 1

    monitor-enter p0

    .line 83
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized blockUninterruptible()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 121
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 123
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 130
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized close()Z
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    const/4 v1, 0x0

    .line 73
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    .line 58
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 59
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 61
    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public final Lcom/google/android/exoplayer2/util/ListenerSet;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# instance fields
.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final flushingEvents:Ljava/util/ArrayDeque;

.field private final handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

.field private final iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final queuedEvents:Ljava/util/ArrayDeque;

.field private released:Z


# direct methods
.method public static synthetic $r8$lambda$NbKDn9xtItiyMgYZmjIx_Sv1FFQ(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eEvjP-IE0x3J2lRvKfFbbjRFRvc(Lcom/google/android/exoplayer2/util/ListenerSet;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->handleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .locals 1

    .line 91
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p3, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 105
    iput-object p4, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    .line 106
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    .line 107
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    .line 110
    new-instance p1, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/util/ListenerSet;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/exoplayer2/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object p1

    .line 111
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    return-void
.end method

.method private handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 238
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 239
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->iterationFinished(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 248
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 250
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/ListenerSet$Event;

    .line 251
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->release()V

    :cond_2
    :goto_0
    return v1
.end method

.method private static synthetic lambda$queueEvent$0(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 1

    .line 169
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 170
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->invoke(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 135
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public copy(Landroid/os/Looper;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)Lcom/google/android/exoplayer2/util/ListenerSet;
    .locals 3

    .line 124
    new-instance v0, Lcom/google/android/exoplayer2/util/ListenerSet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->clock:Lcom/google/android/exoplayer2/util/Clock;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    return-object v0
.end method

.method public flushEvents()V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 184
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-eqz v0, :cond_2

    return-void

    .line 190
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->flushingEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public lazyRelease(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->handler:Lcom/google/android/exoplayer2/util/HandlerWrapper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2, p2}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplayer2/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 3

    .line 166
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->queuedEvents:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    .line 216
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->iterationFinishedEvent:Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet;->released:Z

    return-void
.end method

.method public sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 0

    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 206
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

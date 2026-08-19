.class final Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# instance fields
.field private flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

.field public final listener:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private needsIterationFinishedEvent:Z

.field private released:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    .line 267
    new-instance p1, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 303
    const-class v0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;

    iget-object p1, p1, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public invoke(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->add(I)Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    :cond_0
    const/4 p1, 0x1

    .line 282
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 283
    iget-object p1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/util/ListenerSet$Event;->invoke(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public iterationFinished(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .locals 2

    .line 288
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->build()Lcom/google/android/exoplayer2/util/ExoFlags;

    move-result-object v0

    .line 292
    new-instance v1, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;-><init>()V

    iput-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    const/4 v1, 0x0

    .line 293
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    .line 294
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/ExoFlags;)V

    :cond_0
    return-void
.end method

.method public release(Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;)V
    .locals 2

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->released:Z

    .line 272
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->needsIterationFinishedEvent:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->listener:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ListenerSet$ListenerHolder;->flagsBuilder:Lcom/google/android/exoplayer2/util/ExoFlags$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ExoFlags$Builder;->build()Lcom/google/android/exoplayer2/util/ExoFlags;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/util/ListenerSet$IterationFinishedEvent;->invoke(Ljava/lang/Object;Lcom/google/android/exoplayer2/util/ExoFlags;)V

    :cond_0
    return-void
.end method

.class final Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;
.super Ljava/lang/Object;
.source "Loader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;)V
    .locals 0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseTask;->callback:Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Loader$ReleaseCallback;->onLoaderReleased()V

    return-void
.end method

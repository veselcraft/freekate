.class public interface abstract Lcom/google/android/exoplayer2/upstream/Loader$Callback;
.super Ljava/lang/Object;
.source "Loader.java"


# virtual methods
.method public abstract onLoadCanceled(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJZ)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJ)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;I)Lcom/google/android/exoplayer2/upstream/Loader$LoadErrorAction;
.end method

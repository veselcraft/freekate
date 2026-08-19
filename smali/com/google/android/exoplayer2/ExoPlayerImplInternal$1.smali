.class Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Renderer$WakeupListener;


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;


# direct methods
.method constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)V
    .locals 0

    .line 2389
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSleep(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2394
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->access$602(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;Z)Z

    :cond_0
    return-void
.end method

.method public onWakeup()V
    .locals 2

    .line 2400
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImplInternal$1;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImplInternal;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImplInternal;->access$700(Lcom/google/android/exoplayer2/ExoPlayerImplInternal;)Lcom/google/android/exoplayer2/util/HandlerWrapper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

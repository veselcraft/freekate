.class Lcom/perm/kate/AudioFragment$8;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onError()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1000(Lcom/perm/kate/AudioFragment;)V

    .line 289
    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1000(Lcom/perm/kate/AudioFragment;)V

    .line 298
    return-void
.end method

.method public onPrepared()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1000(Lcom/perm/kate/AudioFragment;)V

    .line 303
    return-void
.end method

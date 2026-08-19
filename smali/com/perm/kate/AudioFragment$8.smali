.class Lcom/perm/kate/AudioFragment$8;
.super Lcom/perm/kate/Player$PlayerCallback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 336
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Lcom/perm/kate/Player$PlayerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 0

    return-void
.end method

.method public onError()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1600(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

.method public onNextEpisode()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1600(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

.method public onPrepared()V
    .locals 0

    return-void
.end method

.method public onStartBuffering()V
    .locals 0

    return-void
.end method

.method public onStateChanged()V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$8;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1600(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

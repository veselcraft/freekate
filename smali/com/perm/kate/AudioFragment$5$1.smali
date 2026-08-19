.class Lcom/perm/kate/AudioFragment$5$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioFragment$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment$5;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v1, :cond_0

    .line 264
    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 267
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$700(Lcom/perm/kate/AudioFragment;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 268
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    :goto_0
    return-void
.end method

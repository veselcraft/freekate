.class Lcom/perm/kate/AudioFragment$5$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment$5;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioFragment$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AudioFragment$5;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v1, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioListAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$5$1;->this$1:Lcom/perm/kate/AudioFragment$5;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$5;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 227
    return-void
.end method

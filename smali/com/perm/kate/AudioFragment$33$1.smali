.class Lcom/perm/kate/AudioFragment$33$1;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioFragment$33;

.field final synthetic val$more_audios:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment$33;Ljava/util/ArrayList;)V
    .locals 0

    .line 1207
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$33$1;->val$more_audios:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1215
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$33$1;->val$more_audios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1216
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v1, v0, Lcom/perm/kate/AudioFragment;->filterText:Landroid/widget/EditText;

    if-nez v1, :cond_0

    return-void

    .line 1220
    :cond_0
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$2200(Lcom/perm/kate/AudioFragment;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1223
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->val$more_audios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$700(Lcom/perm/kate/AudioFragment;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    goto :goto_0

    .line 1226
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$33$1;->this$1:Lcom/perm/kate/AudioFragment$33;

    iget-object v0, v0, Lcom/perm/kate/AudioFragment$33;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/AudioFragment;->access$802(Lcom/perm/kate/AudioFragment;I)I

    :goto_0
    return-void
.end method

.class Lcom/perm/kate/AudioFragment$27;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$27;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1033
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1034
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v5, -0x1

    iget-object v1, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v1}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->deleteAudioInList(JJJ)Z

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$3300(Lcom/perm/kate/AudioFragment;)V

    .line 1036
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1037
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$27;->val$ids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->deleteAudios(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 1039
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$27;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

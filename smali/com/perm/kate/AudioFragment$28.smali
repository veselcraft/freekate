.class Lcom/perm/kate/AudioFragment$28;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->deleteSelectedAudios()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$28;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 902
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 903
    .local v2, "audio_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->deleteAudioInList(JJJ)Z

    goto :goto_0

    .line 904
    .end local v2    # "audio_id":J
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$2800(Lcom/perm/kate/AudioFragment;)V

    .line 905
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 906
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/AudioFragment$28;->val$ids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/session/Session;->deleteAudios(Ljava/util/ArrayList;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 908
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$28;->this$0:Lcom/perm/kate/AudioFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioFragment;->showProgressBar(Z)V

    .line 909
    return-void
.end method

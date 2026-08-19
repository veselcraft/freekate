.class Lcom/perm/kate/AudioFragment$20;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$ids:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$20;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 772
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$20;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 776
    iget-object v3, p0, Lcom/perm/kate/AudioFragment$20;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [J

    if-eqz v3, :cond_1

    .line 777
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 778
    aget-wide v4, v3, v1

    const/4 v6, 0x1

    .line 779
    aget-wide v6, v3, v6

    .line 781
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-wide/16 v3, -0x1

    iget-object v5, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v5}, Lcom/perm/kate/AudioFragment;->access$600(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v5, v5, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v3}, Lcom/perm/kate/AudioFragment;->access$2700(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move-object v13, v3

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    invoke-virtual/range {v8 .. v14}, Lcom/perm/kate/session/Session;->addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

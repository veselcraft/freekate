.class Lcom/perm/kate/AudioFragment$17;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->addAudio(Ljava/util/ArrayList;)V
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
    .line 640
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    iput-object p2, p0, Lcom/perm/kate/AudioFragment$17;->val$ids:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$17;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 644
    .local v12, "len":I
    const-wide/16 v8, 0x0

    .line 645
    .local v8, "audio_id":J
    const-wide/16 v14, 0x0

    .line 646
    .local v14, "owner_id":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v12, :cond_2

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AudioFragment$17;->val$ids:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 648
    .local v11, "id":[J
    if-eqz v11, :cond_0

    array-length v2, v11

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 649
    const/4 v2, 0x0

    aget-wide v8, v11, v2

    .line 650
    const/4 v2, 0x1

    aget-wide v14, v11, v2

    .line 651
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v5}, Lcom/perm/kate/AudioFragment;->access$400(Lcom/perm/kate/AudioFragment;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    add-int/lit8 v6, v12, -0x1

    if-ne v10, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v6}, Lcom/perm/kate/AudioFragment;->access$2000(Lcom/perm/kate/AudioFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/AudioFragment$17;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v7}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->addAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 646
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 651
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 654
    .end local v11    # "id":[J
    :cond_2
    return-void
.end method

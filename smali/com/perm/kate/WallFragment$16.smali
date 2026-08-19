.class Lcom/perm/kate/WallFragment$16;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$pin:Z

.field final synthetic val$post_id:J

.field final synthetic val$wall_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;ZJJ)V
    .locals 0

    .line 911
    iput-object p1, p0, Lcom/perm/kate/WallFragment$16;->this$0:Lcom/perm/kate/WallFragment;

    iput-boolean p2, p0, Lcom/perm/kate/WallFragment$16;->val$pin:Z

    iput-wide p3, p0, Lcom/perm/kate/WallFragment$16;->val$wall_owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/WallFragment$16;->val$post_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 914
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment$16;->val$pin:Z

    if-eqz v0, :cond_0

    .line 915
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$16;->val$wall_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/perm/kate/WallFragment$16;->val$post_id:J

    iget-object v0, p0, Lcom/perm/kate/WallFragment$16;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$1300(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/WallFragment$16;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->pinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 917
    :cond_0
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v0, p0, Lcom/perm/kate/WallFragment$16;->val$wall_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-wide v9, p0, Lcom/perm/kate/WallFragment$16;->val$post_id:J

    iget-object v0, p0, Lcom/perm/kate/WallFragment$16;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$1300(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v0, p0, Lcom/perm/kate/WallFragment$16;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v12

    invoke-virtual/range {v7 .. v12}, Lcom/perm/kate/session/Session;->unpinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.class Lcom/perm/kate/WallFragment$17;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->pinUnpinPost(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$pin:Z

.field final synthetic val$post_id:J

.field final synthetic val$wall_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;ZJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    iput-boolean p2, p0, Lcom/perm/kate/WallFragment$17;->val$pin:Z

    iput-wide p3, p0, Lcom/perm/kate/WallFragment$17;->val$wall_owner_id:J

    iput-wide p5, p0, Lcom/perm/kate/WallFragment$17;->val$post_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 847
    iget-boolean v0, p0, Lcom/perm/kate/WallFragment$17;->val$pin:Z

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$17;->val$wall_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$17;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v4}, Lcom/perm/kate/WallFragment;->access$1200(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v5}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->pinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 851
    :goto_0
    return-void

    .line 850
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$17;->val$wall_owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/WallFragment$17;->val$post_id:J

    iget-object v4, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v4}, Lcom/perm/kate/WallFragment;->access$1200(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/WallFragment$17;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v5}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->unpinPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

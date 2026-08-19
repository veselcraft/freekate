.class Lcom/perm/kate/WallFragment$11;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$unixtime:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;J)V
    .locals 0

    .line 672
    iput-object p1, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    iput-wide p2, p0, Lcom/perm/kate/WallFragment$11;->val$unixtime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 675
    new-instance v6, Lcom/perm/kate/WallFragment$11$1;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, p0, v0}, Lcom/perm/kate/WallFragment$11$1;-><init>(Lcom/perm/kate/WallFragment$11;Landroid/app/Activity;)V

    .line 683
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v1}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/WallFragment$11;->val$unixtime:J

    iget-object v5, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v5, v5, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/perm/kate/WallFragment$11;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getWallOffsetByDate(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

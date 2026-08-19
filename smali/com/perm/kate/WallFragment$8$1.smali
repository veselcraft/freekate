.class Lcom/perm/kate/WallFragment$8$1;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallFragment$8;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment$8;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/perm/kate/WallFragment$8$1;->this$1:Lcom/perm/kate/WallFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 521
    new-instance v4, Lcom/perm/kate/WallFragment$8$1$1;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$8$1;->this$1:Lcom/perm/kate/WallFragment$8;

    iget-object v0, v0, Lcom/perm/kate/WallFragment$8;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/WallFragment$8$1$1;-><init>(Lcom/perm/kate/WallFragment$8$1;Landroid/app/Activity;)V

    .line 532
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$8$1;->this$1:Lcom/perm/kate/WallFragment$8;

    iget-object v2, v1, Lcom/perm/kate/WallFragment$8;->val$post_id:Ljava/lang/Long;

    iget-object v1, v1, Lcom/perm/kate/WallFragment$8;->val$wall_owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v1, p0, Lcom/perm/kate/WallFragment$8$1;->this$1:Lcom/perm/kate/WallFragment$8;

    iget-object v1, v1, Lcom/perm/kate/WallFragment$8;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    move-object v1, v2

    move-wide v2, v5

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->removeWallPost(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

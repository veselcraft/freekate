.class Lcom/perm/kate/WallFragment$12;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->getOffsetByDate(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$unixtime:J


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    iput-wide p2, p0, Lcom/perm/kate/WallFragment$12;->val$unixtime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 643
    new-instance v7, Lcom/perm/kate/WallFragment$12$1;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, p0, v0}, Lcom/perm/kate/WallFragment$12$1;-><init>(Lcom/perm/kate/WallFragment$12;Landroid/app/Activity;)V

    .line 651
    .local v7, "cb":Lcom/perm/kate/session/Callback;
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/perm/kate/WallFragment$12;->val$unixtime:J

    iget-object v0, p0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/perm/kate/WallFragment$12;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->getWallOffsetByDate(JJILcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 652
    return-void
.end method

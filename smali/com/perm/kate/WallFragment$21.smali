.class Lcom/perm/kate/WallFragment$21;
.super Ljava/lang/Thread;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallFragment;->deleteLastWallPosts(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    iput p2, p0, Lcom/perm/kate/WallFragment$21;->val$count:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 908
    iget-object v0, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 910
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Lcom/perm/kate/WallFragment$21;->val$count:I

    iget-object v0, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$100(Lcom/perm/kate/WallFragment;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$1400(Lcom/perm/kate/WallFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/WallFragment$21;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->deleteLastWallPosts(JILjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 911
    return-void
.end method

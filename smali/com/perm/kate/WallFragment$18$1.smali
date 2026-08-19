.class Lcom/perm/kate/WallFragment$18$1;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallFragment$18;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment$18;Landroid/app/Activity;)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/perm/kate/WallFragment$18$1;->this$1:Lcom/perm/kate/WallFragment$18;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 939
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 943
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment$18$1;->this$1:Lcom/perm/kate/WallFragment$18;

    iget-object p1, p1, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    const-string v0, "archiveRevealPost"

    invoke-virtual {p1, v0}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 944
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$18$1;->this$1:Lcom/perm/kate/WallFragment$18;

    iget-wide v1, v0, Lcom/perm/kate/WallFragment$18;->val$post_id:J

    iget-object v0, v0, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteWallPost(JJ)Z

    .line 945
    iget-object p1, p0, Lcom/perm/kate/WallFragment$18$1;->this$1:Lcom/perm/kate/WallFragment$18;

    iget-object p1, p1, Lcom/perm/kate/WallFragment$18;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    return-void
.end method

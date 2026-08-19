.class Lcom/perm/kate/SearchWallActivity$13$1$1;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# instance fields
.field final synthetic this$2:Lcom/perm/kate/SearchWallActivity$13$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity$13$1;Landroid/app/Activity;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 472
    check-cast p1, Ljava/lang/Boolean;

    .line 473
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 475
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object v0, v0, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v0, v0, Lcom/perm/kate/SearchWallActivity$13;->val$post_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object v2, v2, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v2, v2, Lcom/perm/kate/SearchWallActivity$13;->val$wall_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteWallPost(JJ)Z

    .line 476
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object p1, p1, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object p1, p1, Lcom/perm/kate/SearchWallActivity$13;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchWallActivity;->access$1900(Lcom/perm/kate/SearchWallActivity;)V

    return-void
.end method

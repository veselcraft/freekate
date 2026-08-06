.class Lcom/perm/kate/SearchWallActivity$13$1$1;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/SearchWallActivity$13$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity$13$1;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/SearchWallActivity$13$1;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 474
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 475
    .local v0, "removed":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 479
    :goto_0
    return-void

    .line 477
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object v2, v2, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v2, v2, Lcom/perm/kate/SearchWallActivity$13;->val$post_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object v4, v4, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v4, v4, Lcom/perm/kate/SearchWallActivity$13;->val$wall_owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteWallPost(JJ)Z

    .line 478
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$13$1$1;->this$2:Lcom/perm/kate/SearchWallActivity$13$1;

    iget-object v1, v1, Lcom/perm/kate/SearchWallActivity$13$1;->this$1:Lcom/perm/kate/SearchWallActivity$13;

    iget-object v1, v1, Lcom/perm/kate/SearchWallActivity$13;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchWallActivity;->access$1900(Lcom/perm/kate/SearchWallActivity;)V

    goto :goto_0
.end method

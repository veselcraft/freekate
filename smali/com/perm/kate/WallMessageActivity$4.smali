.class Lcom/perm/kate/WallMessageActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "WallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Landroid/app/Activity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 457
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 458
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 437
    check-cast p1, Ljava/util/ArrayList;

    .line 438
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 439
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iput-object v2, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 445
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v0}, Lcom/perm/kate/WallMessageActivity;->access$300(Lcom/perm/kate/WallMessageActivity;)V

    .line 447
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v0, v0, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    invoke-static {v0}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 448
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-boolean v2, v0, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    if-eqz v2, :cond_1

    .line 449
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, v0, Lcom/perm/kate/WallMessageActivity;->account_id:J

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    .line 450
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/WallMessageActivity;->access$000(Lcom/perm/kate/WallMessageActivity;)V

    .line 451
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {p1}, Lcom/perm/kate/WallMessageActivity;->access$100(Lcom/perm/kate/WallMessageActivity;)V

    .line 452
    iget-object p1, p0, Lcom/perm/kate/WallMessageActivity$4;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.class Lcom/perm/kate/WallMessageActivity$6;
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
    .param p1, "this$0"    # Lcom/perm/kate/WallMessageActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 410
    iget-object v0, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 411
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 389
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 390
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v1, v4}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    .line 405
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    iput-object v1, v2, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    .line 397
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/WallMessageActivity;->access$400(Lcom/perm/kate/WallMessageActivity;)V

    .line 399
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-object v1, v1, Lcom/perm/kate/WallMessageActivity;->wall:Lcom/perm/kate/api/WallMessage;

    invoke-static {v1}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 400
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-boolean v1, v1, Lcom/perm/kate/WallMessageActivity;->cache_post:Z

    if-eqz v1, :cond_1

    .line 401
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    iget-wide v2, v2, Lcom/perm/kate/WallMessageActivity;->account_id:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/WallMessageActivity;->access$100(Lcom/perm/kate/WallMessageActivity;)V

    .line 403
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-static {v1}, Lcom/perm/kate/WallMessageActivity;->access$200(Lcom/perm/kate/WallMessageActivity;)V

    .line 404
    iget-object v1, p0, Lcom/perm/kate/WallMessageActivity$6;->this$0:Lcom/perm/kate/WallMessageActivity;

    invoke-virtual {v1, v4}, Lcom/perm/kate/WallMessageActivity;->showProgressBar(Z)V

    goto :goto_0
.end method

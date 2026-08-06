.class Lcom/perm/kate/SearchWallActivity$15;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->setLike(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    iput-boolean p5, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 540
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 542
    instance-of v1, p1, Lcom/perm/kate/api/KException;

    if-eqz v1, :cond_1

    .line 543
    check-cast p1, Lcom/perm/kate/api/KException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    iget v0, p1, Lcom/perm/kate/api/KException;->error_code:I

    .line 544
    .local v0, "code":I
    const/16 v1, 0xd7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_1

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/SearchWallActivity;->access$2000(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 548
    .end local v0    # "code":I
    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 534
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 535
    .local v0, "likes":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    iget-boolean v4, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-static {v1, v2, v3, v0, v4}, Lcom/perm/kate/SearchWallActivity;->access$2000(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    .line 536
    return-void
.end method

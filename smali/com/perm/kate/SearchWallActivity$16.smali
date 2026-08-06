.class Lcom/perm/kate/SearchWallActivity$16;
.super Lcom/perm/kate/session/Callback;
.source "SearchWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->pinUnpinPost(JJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$pin:Z

.field final synthetic val$post_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Landroid/app/Activity;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-boolean p3, p0, Lcom/perm/kate/SearchWallActivity$16;->val$pin:Z

    iput-wide p4, p0, Lcom/perm/kate/SearchWallActivity$16;->val$post_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 578
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 579
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchWallActivity;->showProgressBar(Z)V

    .line 580
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 569
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchWallActivity;->showProgressBar(Z)V

    move-object v0, p1

    .line 570
    check-cast v0, Ljava/lang/Integer;

    .line 571
    .local v0, "res":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 572
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-boolean v2, p0, Lcom/perm/kate/SearchWallActivity$16;->val$pin:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/perm/kate/SearchWallActivity$16;->val$post_id:J

    :goto_0
    invoke-static {v1, v2, v3}, Lcom/perm/kate/SearchWallActivity;->access$2102(Lcom/perm/kate/SearchWallActivity;J)J

    .line 573
    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchWallActivity;->setResult(I)V

    .line 575
    :cond_0
    return-void

    .line 572
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

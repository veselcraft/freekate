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

    .line 581
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-boolean p3, p0, Lcom/perm/kate/SearchWallActivity$16;->val$pin:Z

    iput-wide p4, p0, Lcom/perm/kate/SearchWallActivity$16;->val$post_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 593
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 594
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 585
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 586
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 587
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-boolean v0, p0, Lcom/perm/kate/SearchWallActivity$16;->val$pin:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/SearchWallActivity$16;->val$post_id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/perm/kate/SearchWallActivity;->access$2202(Lcom/perm/kate/SearchWallActivity;J)J

    .line 588
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$16;->this$0:Lcom/perm/kate/SearchWallActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    return-void
.end method

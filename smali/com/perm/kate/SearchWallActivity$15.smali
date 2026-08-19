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

    .line 546
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    iput-boolean p5, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 4

    .line 555
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 557
    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_1

    .line 558
    check-cast p1, Lcom/perm/kate/api/KException;

    iget p1, p1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd8

    if-ne p1, v0, :cond_1

    .line 560
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/kate/SearchWallActivity;->access$2100(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 549
    check-cast p1, Ljava/lang/Long;

    .line 550
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$15;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$15;->val$post_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$15;->val$owner_id:Ljava/lang/Long;

    iget-boolean v3, p0, Lcom/perm/kate/SearchWallActivity$15;->val$like:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/perm/kate/SearchWallActivity;->access$2100(Lcom/perm/kate/SearchWallActivity;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Z)V

    return-void
.end method

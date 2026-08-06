.class Lcom/perm/kate/WallPostActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 256
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->showProgressBar(Z)V

    .line 257
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/WallPostActivity;->access$200(Lcom/perm/kate/WallPostActivity;Z)V

    .line 258
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->showProgressBar(Z)V

    .line 223
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    new-instance v1, Lcom/perm/kate/WallPostActivity$2$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallPostActivity$2$1;-><init>(Lcom/perm/kate/WallPostActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 252
    return-void
.end method

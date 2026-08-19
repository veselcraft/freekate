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

    .line 234
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 271
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 272
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 273
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p1, v0}, Lcom/perm/kate/WallPostActivity;->access$200(Lcom/perm/kate/WallPostActivity;Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 239
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity$2;->this$0:Lcom/perm/kate/WallPostActivity;

    new-instance v0, Lcom/perm/kate/WallPostActivity$2$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$2$1;-><init>(Lcom/perm/kate/WallPostActivity$2;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

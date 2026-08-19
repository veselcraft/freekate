.class Lcom/perm/kate/PhotoEditActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "PhotoEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoEditActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoEditActivity;Landroid/app/Activity;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 89
    iget-object p1, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 72
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoEditActivity$2;->this$0:Lcom/perm/kate/PhotoEditActivity;

    new-instance v1, Lcom/perm/kate/PhotoEditActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotoEditActivity$2$1;-><init>(Lcom/perm/kate/PhotoEditActivity$2;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

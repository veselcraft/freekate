.class Lcom/perm/kate/StatusActivity$4;
.super Lcom/perm/kate/session/Callback;
.source "StatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/StatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/StatusActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/StatusActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/StatusActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 137
    iget-object v0, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/StatusActivity;->showProgressBar(Z)V

    .line 138
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 122
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 123
    .local v0, "status_res":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    new-instance v2, Lcom/perm/kate/StatusActivity$4$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/StatusActivity$4$1;-><init>(Lcom/perm/kate/StatusActivity$4;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/StatusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

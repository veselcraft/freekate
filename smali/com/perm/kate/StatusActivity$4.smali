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

    .line 119
    iput-object p1, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 136
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 137
    iget-object p1, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 122
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 123
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/perm/kate/StatusActivity$4;->this$0:Lcom/perm/kate/StatusActivity;

    new-instance v0, Lcom/perm/kate/StatusActivity$4$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StatusActivity$4$1;-><init>(Lcom/perm/kate/StatusActivity$4;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

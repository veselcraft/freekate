.class Lcom/perm/kate/SearchActivity$6;
.super Lcom/perm/kate/session/Callback;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;Landroid/app/Activity;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 417
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 418
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$4502(Lcom/perm/kate/SearchActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 401
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchActivity;->access$4500(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v0, Lcom/perm/kate/SearchActivity$6$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchActivity$6$1;-><init>(Lcom/perm/kate/SearchActivity$6;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 412
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$6;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

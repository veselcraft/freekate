.class Lcom/perm/kate/SearchActivity$36;
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

    .line 1375
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1396
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1397
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 1378
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1379
    iget-object v1, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1382
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1

    .line 1380
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    :goto_1
    if-eqz p1, :cond_2

    .line 1384
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v2, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$3802(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1385
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v2, Lcom/perm/kate/SearchActivity$36$1;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/SearchActivity$36$1;-><init>(Lcom/perm/kate/SearchActivity$36;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1392
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

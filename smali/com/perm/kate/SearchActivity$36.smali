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
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1333
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1334
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1335
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1315
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Newsfeed;

    .line 1316
    .local v0, "newsfeed":Lcom/perm/kate/api/Newsfeed;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    .line 1320
    :goto_0
    if-eqz v0, :cond_1

    .line 1321
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v2, v0, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/perm/kate/SearchActivity;->access$3802(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1322
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    new-instance v2, Lcom/perm/kate/SearchActivity$36$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/SearchActivity$36$1;-><init>(Lcom/perm/kate/SearchActivity$36;Lcom/perm/kate/api/Newsfeed;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/SearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1329
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v1, v3}, Lcom/perm/kate/SearchActivity;->showProgressBar(Z)V

    .line 1330
    return-void

    .line 1319
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/SearchActivity$36;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v1, v3}, Lcom/perm/kate/SearchActivity;->access$5202(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_0
.end method

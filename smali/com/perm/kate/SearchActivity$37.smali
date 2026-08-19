.class Lcom/perm/kate/SearchActivity$37;
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

    .line 1401
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1417
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1418
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1419
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1404
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 1405
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v1, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchActivity;->access$3802(Lcom/perm/kate/SearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1407
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/SearchActivity;->access$7800(Lcom/perm/kate/SearchActivity;Lcom/perm/kate/api/Newsfeed;)V

    .line 1409
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->new_from:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1412
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    goto :goto_1

    .line 1410
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/SearchActivity;->access$5302(Lcom/perm/kate/SearchActivity;I)I

    .line 1413
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/SearchActivity$37;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

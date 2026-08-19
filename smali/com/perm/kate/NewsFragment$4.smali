.class Lcom/perm/kate/NewsFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 260
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 261
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 262
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 241
    :try_start_0
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 243
    iget-object v1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 244
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void

    .line 247
    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/perm/utils/AdEvents;->reportLoad(Ljava/util/ArrayList;)V

    .line 248
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 249
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    iget-boolean v2, v1, Lcom/perm/kate/NewsFragment;->manual:Z

    if-nez v2, :cond_3

    iget-object v1, v1, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 252
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v1, p1}, Lcom/perm/kate/NewsFragment;->access$300(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V

    goto :goto_1

    .line 250
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/perm/kate/NewsFragment;->access$200(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 255
    throw p1
.end method

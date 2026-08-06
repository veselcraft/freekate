.class Lcom/perm/kate/NewsFragment$4;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 260
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 261
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 262
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 241
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Newsfeed;

    move-object v1, v0

    .line 243
    .local v1, "ns":Lcom/perm/kate/api/Newsfeed;
    iget-object v2, v1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    .line 255
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/perm/kate/NewsFragment;->access$102(Lcom/perm/kate/NewsFragment;I)I

    .line 248
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    iget-boolean v2, v2, Lcom/perm/kate/NewsFragment;->manual:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v2, v2, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v2, v2, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/perm/kate/NewsFragment;->shouldDisplayNewPosts()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/perm/kate/NewsFragment;->access$200(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2, v4}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 251
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-static {v2, v1}, Lcom/perm/kate/NewsFragment;->access$300(Lcom/perm/kate/NewsFragment;Lcom/perm/kate/api/Newsfeed;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 253
    .end local v1    # "ns":Lcom/perm/kate/api/Newsfeed;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$4;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v3, v4}, Lcom/perm/kate/NewsFragment;->showProgressBar(Z)V

    throw v2
.end method

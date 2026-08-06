.class final Lcom/perm/kate/NewsFragment$15;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 737
    iput-object p2, p0, Lcom/perm/kate/NewsFragment$15;->val$post_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$15;->val$owner_id:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/perm/kate/NewsFragment$15;->val$like:Z

    iput-wide p5, p0, Lcom/perm/kate/NewsFragment$15;->val$account_id:J

    iput-object p7, p0, Lcom/perm/kate/NewsFragment$15;->val$activity:Landroid/app/Activity;

    iput-object p8, p0, Lcom/perm/kate/NewsFragment$15;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 760
    new-instance v0, Lcom/perm/kate/NewsFragment$15$1;

    invoke-direct {v0, p0, p2}, Lcom/perm/kate/NewsFragment$15$1;-><init>(Lcom/perm/kate/NewsFragment$15;Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 766
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 11
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x0

    .line 747
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 749
    instance-of v1, p1, Lcom/perm/kate/api/KException;

    if-eqz v1, :cond_1

    .line 750
    check-cast p1, Lcom/perm/kate/api/KException;

    .end local p1    # "ex":Ljava/lang/Throwable;
    iget v0, p1, Lcom/perm/kate/api/KException;->error_code:I

    .line 751
    .local v0, "code":I
    const/16 v1, 0xd7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_1

    .line 752
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$15;->val$post_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$15;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v7, p0, Lcom/perm/kate/NewsFragment$15;->val$like:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/NewsFragment$15;->val$account_id:J

    move-object v10, v6

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;)V

    .line 753
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$15;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$15;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/NewsFragment$15;->requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 757
    .end local v0    # "code":I
    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 740
    move-object v6, p1

    check-cast v6, Ljava/lang/Long;

    .line 741
    .local v6, "likes":Ljava/lang/Long;
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$15;->val$post_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$15;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/perm/kate/NewsFragment$15;->val$like:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/NewsFragment$15;->val$account_id:J

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;)V

    .line 742
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$15;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$15;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/NewsFragment$15;->requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V

    .line 743
    return-void
.end method

.class Lcom/perm/kate/NewsFragment$15;
.super Lcom/perm/kate/session/Callback;
.source "NewsFragment.java"


# instance fields
.field final synthetic val$account_id:J

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cursor:Landroid/database/Cursor;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/Long;ZJLandroid/app/Activity;Landroid/database/Cursor;)V
    .locals 0

    .line 765
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

    .line 788
    new-instance v0, Lcom/perm/kate/NewsFragment$15$1;

    invoke-direct {v0, p0, p2}, Lcom/perm/kate/NewsFragment$15$1;-><init>(Lcom/perm/kate/NewsFragment$15;Landroid/database/Cursor;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 12

    .line 775
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 777
    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_1

    .line 778
    check-cast p1, Lcom/perm/kate/api/KException;

    iget p1, p1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v0, 0xd7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd8

    if-ne p1, v0, :cond_1

    .line 780
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$post_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-boolean p1, p0, Lcom/perm/kate/NewsFragment$15;->val$like:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/NewsFragment$15;->val$account_id:J

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 781
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$15;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NewsFragment$15;->requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V

    :cond_1
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11

    .line 768
    move-object v5, p1

    check-cast v5, Ljava/lang/Long;

    .line 769
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$post_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p1, p0, Lcom/perm/kate/NewsFragment$15;->val$like:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-wide v7, p0, Lcom/perm/kate/NewsFragment$15;->val$account_id:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 770
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$15;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$15;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/NewsFragment$15;->requeryOnUiThread(Landroid/app/Activity;Landroid/database/Cursor;)V

    return-void
.end method

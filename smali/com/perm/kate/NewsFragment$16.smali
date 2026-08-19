.class Lcom/perm/kate/NewsFragment$16;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$ad:Z

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(ZLjava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 0

    .line 802
    iput-boolean p1, p0, Lcom/perm/kate/NewsFragment$16;->val$like:Z

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/perm/kate/NewsFragment$16;->val$ad:Z

    iput-object p5, p0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iput-object p6, p0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 805
    iget-boolean v1, v0, Lcom/perm/kate/NewsFragment$16;->val$like:Z

    const-string v2, "post_ads"

    const-string v3, "post"

    if-eqz v1, :cond_1

    .line 806
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, v0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    iget-object v6, v0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    iget-boolean v1, v0, Lcom/perm/kate/NewsFragment$16;->val$ad:Z

    if-eqz v1, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object v7, v3

    :goto_0
    const/4 v8, 0x0

    iget-object v9, v0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v10, v0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_2

    .line 808
    :cond_1
    sget-object v11, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v12, v0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    iget-boolean v1, v0, Lcom/perm/kate/NewsFragment$16;->val$ad:Z

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_1

    :cond_2
    move-object v13, v3

    :goto_1
    iget-object v14, v0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    iget-object v15, v0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v1, v0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_2
    return-void
.end method

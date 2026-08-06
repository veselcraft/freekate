.class final Lcom/perm/kate/NewsFragment$16;
.super Ljava/lang/Thread;
.source "NewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->setLikeInternal(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback_like:Lcom/perm/kate/session/Callback;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$post_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(ZLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 774
    iput-boolean p1, p0, Lcom/perm/kate/NewsFragment$16;->val$like:Z

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iput-object p5, p0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/perm/kate/NewsFragment$16;->val$like:Z

    if-eqz v0, :cond_0

    .line 778
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    const-string v3, "post"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v6, p0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 781
    :goto_0
    return-void

    .line 780
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$16;->val$owner_id:Ljava/lang/Long;

    const-string v2, "post"

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$16;->val$post_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$16;->val$callback_like:Lcom/perm/kate/session/Callback;

    iget-object v5, p0, Lcom/perm/kate/NewsFragment$16;->val$activity:Landroid/app/Activity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

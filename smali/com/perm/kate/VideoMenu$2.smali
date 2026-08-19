.class Lcom/perm/kate/VideoMenu$2;
.super Ljava/lang/Thread;
.source "VideoMenu.java"


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$like:Z

.field final synthetic val$owner_id:Ljava/lang/Long;

.field final synthetic val$video_id:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V
    .locals 0

    .line 227
    iput-boolean p2, p0, Lcom/perm/kate/VideoMenu$2;->val$like:Z

    iput-object p3, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    iput-object p4, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 230
    iget-boolean v0, p0, Lcom/perm/kate/VideoMenu$2;->val$like:Z

    if-eqz v0, :cond_0

    .line 231
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    const-string v4, "video"

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->addLike(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 233
    :cond_0
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v9, p0, Lcom/perm/kate/VideoMenu$2;->val$owner_id:Ljava/lang/Long;

    iget-object v11, p0, Lcom/perm/kate/VideoMenu$2;->val$video_id:Ljava/lang/Long;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/perm/kate/VideoMenu$2;->val$activity:Landroid/app/Activity;

    const-string v10, "video"

    invoke-virtual/range {v8 .. v13}, Lcom/perm/kate/session/Session;->deleteLike(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

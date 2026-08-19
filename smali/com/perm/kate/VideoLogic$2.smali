.class Lcom/perm/kate/VideoLogic$2;
.super Ljava/lang/Thread;
.source "VideoLogic.java"


# instance fields
.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback_video:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(JJLjava/lang/String;Lcom/perm/kate/session/Callback;Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/perm/kate/VideoLogic$2;->val$owner_id:J

    iput-wide p3, p0, Lcom/perm/kate/VideoLogic$2;->val$video_id:J

    iput-object p5, p0, Lcom/perm/kate/VideoLogic$2;->val$access_key:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/VideoLogic$2;->val$callback_video:Lcom/perm/kate/session/Callback;

    iput-object p7, p0, Lcom/perm/kate/VideoLogic$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/perm/kate/VideoLogic$2;->val$owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/perm/kate/VideoLogic$2;->val$video_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/perm/kate/VideoLogic$2;->val$access_key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/VideoLogic$2;->val$access_key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 98
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/perm/kate/VideoLogic$2;->val$callback_video:Lcom/perm/kate/session/Callback;

    iget-object v10, p0, Lcom/perm/kate/VideoLogic$2;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

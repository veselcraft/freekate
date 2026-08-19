.class Lcom/perm/utils/VideoAlbumsHelper$11;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$add:Z

.field final synthetic val$album_id:J

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;ZJJJJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-boolean p2, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$add:Z

    iput-wide p3, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$album_id:J

    iput-wide p7, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_owner_id:J

    iput-wide p9, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_id:J

    iput-object p11, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 222
    iget-object v1, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 223
    iget-boolean v1, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$add:Z

    if-eqz v1, :cond_0

    .line 224
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$album_id:J

    iget-wide v6, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_owner_id:J

    iget-wide v8, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_id:J

    iget-object v10, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v11, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->videoAddToAlbum(Ljava/lang/Long;JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v12, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v13, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$owner_id:J

    iget-wide v1, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$album_id:J

    iget-wide v3, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    iget-wide v3, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_owner_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    iget-object v3, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v4, v0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    move-wide v15, v1

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    invoke-virtual/range {v12 .. v20}, Lcom/perm/kate/session/Session;->removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

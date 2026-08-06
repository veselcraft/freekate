.class final Lcom/perm/utils/VideoAlbumsHelper$11;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->addRemoveToAlbum(Lcom/perm/kate/BaseActivity;JJJJZLcom/perm/utils/VideoAlbumsHelper$ErrorCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


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
    .locals 1

    .prologue
    .line 220
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
    .locals 10

    .prologue
    .line 223
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 224
    iget-boolean v0, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$add:Z

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$album_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_owner_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->videoAddToAlbum(Ljava/lang/Long;JJJLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 228
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$album_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v8, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$video_owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v9, p0, Lcom/perm/utils/VideoAlbumsHelper$11;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v9}, Lcom/perm/kate/session/Session;->removeVideoFromAlbum(JJLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

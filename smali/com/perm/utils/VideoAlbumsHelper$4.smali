.class Lcom/perm/utils/VideoAlbumsHelper$4;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$owner_id:J

    iput-wide p4, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_id:J

    iput-wide p6, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_owner_id:J

    iput-object p8, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 98
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 99
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$owner_id:J

    iget-wide v0, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v0, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

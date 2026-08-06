.class final Lcom/perm/utils/VideoAlbumsHelper$4;
.super Ljava/lang/Thread;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/kate/session/Callback;)V
    .locals 0

    .prologue
    .line 96
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
    .locals 8

    .prologue
    .line 99
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 100
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$video_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$callback:Lcom/perm/kate/session/Callback;

    iget-object v7, p0, Lcom/perm/utils/VideoAlbumsHelper$4;->val$activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->getAlbumsByVideo(JLjava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 101
    return-void
.end method

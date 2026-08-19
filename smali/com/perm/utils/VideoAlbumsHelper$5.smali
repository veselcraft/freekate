.class Lcom/perm/utils/VideoAlbumsHelper$5;
.super Ljava/lang/Object;
.source "VideoAlbumsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p2, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$owner_id:J

    iput-wide p4, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$video_id:J

    iput-wide p6, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$video_owner_id:J

    iput-object p8, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v1, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$owner_id:J

    iget-wide v3, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$video_id:J

    iget-wide v5, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$video_owner_id:J

    iget-object v7, p0, Lcom/perm/utils/VideoAlbumsHelper$5;->val$callback:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v0 .. v7}, Lcom/perm/utils/VideoAlbumsHelper;->access$400(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

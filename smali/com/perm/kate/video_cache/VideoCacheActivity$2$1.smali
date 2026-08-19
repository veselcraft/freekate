.class Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity$2;->onProgressChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity$2;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iget-wide v3, v2, Lcom/perm/kate/video_cache/VideoCacheActivity;->last_notify:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 84
    invoke-static {v2}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$100(Lcom/perm/kate/video_cache/VideoCacheActivity;)Lcom/perm/kate/VideoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iput-wide v0, v2, Lcom/perm/kate/video_cache/VideoCacheActivity;->last_notify:J

    :cond_0
    return-void
.end method

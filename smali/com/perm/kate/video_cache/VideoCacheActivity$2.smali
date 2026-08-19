.class Lcom/perm/kate/video_cache/VideoCacheActivity$2;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Lcom/perm/kate/video_cache/VideoCacheService$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onListChanged()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheActivity$2$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$2$2;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgressChanged()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    new-instance v1, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;-><init>(Lcom/perm/kate/video_cache/VideoCacheActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

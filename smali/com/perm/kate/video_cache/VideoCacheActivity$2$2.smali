.class Lcom/perm/kate/video_cache/VideoCacheActivity$2$2;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity$2;->onListChanged()V
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

    .line 93
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$2;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$2;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v0, v0, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$200(Lcom/perm/kate/video_cache/VideoCacheActivity;)V

    return-void
.end method

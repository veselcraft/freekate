.class Lcom/perm/kate/video_cache/VideoCacheService$2;
.super Ljava/lang/Object;
.source "VideoCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheService;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheService;

.field final synthetic val$res_id:I


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/video_cache/VideoCacheService;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheService$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    iput p2, p0, Lcom/perm/kate/video_cache/VideoCacheService$2;->val$res_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheService$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheService;

    invoke-virtual {v0}, Lcom/perm/kate/video_cache/VideoCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/perm/kate/video_cache/VideoCacheService$2;->val$res_id:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 225
    return-void
.end method

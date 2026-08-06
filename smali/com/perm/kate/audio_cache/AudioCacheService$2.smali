.class Lcom/perm/kate/audio_cache/AudioCacheService$2;
.super Ljava/lang/Object;
.source "AudioCacheService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCacheService;->showToast(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

.field final synthetic val$res_id:I


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/audio_cache/AudioCacheService;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheService$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    iput p2, p0, Lcom/perm/kate/audio_cache/AudioCacheService$2;->val$res_id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheService$2;->this$0:Lcom/perm/kate/audio_cache/AudioCacheService;

    invoke-virtual {v0}, Lcom/perm/kate/audio_cache/AudioCacheService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/perm/kate/audio_cache/AudioCacheService$2;->val$res_id:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 205
    return-void
.end method

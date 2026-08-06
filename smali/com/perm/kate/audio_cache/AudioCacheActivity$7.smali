.class Lcom/perm/kate/audio_cache/AudioCacheActivity$7;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity;->confirmClearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/audio_cache/AudioCacheActivity;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$7;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$7;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$500(Lcom/perm/kate/audio_cache/AudioCacheActivity;)V

    .line 231
    return-void
.end method

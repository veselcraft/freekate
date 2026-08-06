.class Lcom/perm/kate/audio_cache/AudioCacheActivity$6;
.super Ljava/lang/Object;
.source "AudioCacheActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/audio_cache/AudioCacheActivity;
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
    .line 170
    iput-object p1, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 172
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 174
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$300(Lcom/perm/kate/audio_cache/AudioCacheActivity;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$400(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/perm/kate/audio_cache/AudioCacheActivity$6;->this$0:Lcom/perm/kate/audio_cache/AudioCacheActivity;

    invoke-static {v0}, Lcom/perm/kate/audio_cache/AudioCacheActivity;->access$400(Lcom/perm/kate/audio_cache/AudioCacheActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 180
    :cond_0
    return-void

    .line 179
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

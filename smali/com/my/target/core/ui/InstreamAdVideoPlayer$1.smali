.class final Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;
.super Ljava/lang/Object;
.source "InstreamAdVideoPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/InstreamAdVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    .prologue
    .line 26
    packed-switch p1, :pswitch_data_0

    .line 45
    :goto_0
    :pswitch_0
    return-void

    .line 30
    :pswitch_1
    const-string v0, "audiofocus loss, pausing"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$002(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "audiofocus gain, unmuting"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$002(Lcom/my/target/core/ui/InstreamAdVideoPlayer;Z)Z

    .line 38
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$100(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->h()V

    goto :goto_0

    .line 41
    :pswitch_3
    const-string v0, "audiofocus loss can duck, set volume to 0.3"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/my/target/core/ui/InstreamAdVideoPlayer$1;->a:Lcom/my/target/core/ui/InstreamAdVideoPlayer;

    invoke-static {v0}, Lcom/my/target/core/ui/InstreamAdVideoPlayer;->access$100(Lcom/my/target/core/ui/InstreamAdVideoPlayer;)Lcom/my/target/core/ui/views/video/VideoTextureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/my/target/core/ui/views/video/VideoTextureView;->j()V

    goto :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

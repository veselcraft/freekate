.class public Lcom/perm/kate/music/AudioFocusHelper;
.super Ljava/lang/Object;
.source "AudioFocusHelper.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/perm/kate/music/AudioFocusHelperInterface;


# instance fields
.field mAM:Landroid/media/AudioManager;

.field mFocusable:Lcom/perm/kate/music/MusicFocusable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/music/MusicFocusable;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "focusable"    # Lcom/perm/kate/music/MusicFocusable;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    .line 41
    iput-object p2, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    .line 42
    return-void
.end method


# virtual methods
.method public abandonFocus()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 5
    .param p1, "focusChange"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    if-nez v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 61
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 75
    :pswitch_1
    const-string v0, "Kate.AudioFocusHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {v0, v4, v4}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    goto :goto_0

    .line 63
    :pswitch_2
    const-string v0, "Kate.AudioFocusHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_GAIN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {v0}, Lcom/perm/kate/music/MusicFocusable;->onGainedAudioFocus()V

    goto :goto_0

    .line 67
    :pswitch_3
    const-string v0, "Kate.AudioFocusHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_LOSS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {v0, v3, v3}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    goto :goto_0

    .line 71
    :pswitch_4
    const-string v0, "Kate.AudioFocusHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUDIOFOCUS_LOSS_TRANSIENT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {v0, v3, v4}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestFocus()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 46
    iget-object v1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v2, 0x3

    .line 47
    invoke-virtual {v1, p0, v2, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 46
    :goto_0
    return v0

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

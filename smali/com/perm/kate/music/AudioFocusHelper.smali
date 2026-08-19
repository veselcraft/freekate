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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    .line 41
    iput-object p2, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    return-void
.end method


# virtual methods
.method public abandonFocus()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onAudioFocusChange(I)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x3

    const-string v1, "Kate.AudioFocusHelper"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    const/4 v3, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_GAIN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {p1}, Lcom/perm/kate/music/MusicFocusable;->onGainedAudioFocus()V

    goto :goto_0

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {p1, v3, v3}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    goto :goto_0

    .line 71
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {p1, v3, v2}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    goto :goto_0

    .line 75
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object p1, p0, Lcom/perm/kate/music/AudioFocusHelper;->mFocusable:Lcom/perm/kate/music/MusicFocusable;

    invoke-interface {p1, v2, v2}, Lcom/perm/kate/music/MusicFocusable;->onLostAudioFocus(ZZ)V

    :goto_0
    return-void
.end method

.method public requestFocus()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/perm/kate/music/AudioFocusHelper;->mAM:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 47
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

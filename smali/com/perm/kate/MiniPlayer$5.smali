.class Lcom/perm/kate/MiniPlayer$5;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/perm/kate/MiniPlayer;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 232
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    return-void

    .line 236
    :cond_1
    sget-boolean v0, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-eqz v0, :cond_2

    return-void

    .line 239
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0, p1}, Lcom/perm/kate/Player;->seek(I)V

    return-void
.end method

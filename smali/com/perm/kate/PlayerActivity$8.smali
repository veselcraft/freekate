.class Lcom/perm/kate/PlayerActivity$8;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 404
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 408
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 412
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 413
    .local v0, "progress":I
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v1, v1, Lcom/perm/kate/Player;->state:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v1, v1, Lcom/perm/kate/Player;->state:I

    if-nez v1, :cond_0

    .line 418
    :cond_2
    sget-boolean v1, Lcom/perm/kate/PlaybackService;->ad_playing:Z

    if-nez v1, :cond_0

    .line 421
    sget-object v1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v1, v0}, Lcom/perm/kate/Player;->seek(I)V

    .line 422
    iget-object v1, p0, Lcom/perm/kate/PlayerActivity$8;->this$0:Lcom/perm/kate/PlayerActivity;

    iput v0, v1, Lcom/perm/kate/PlayerActivity;->positionOverride:I

    goto :goto_0
.end method

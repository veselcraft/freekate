.class Lcom/perm/kate/PlaybackService$5;
.super Ljava/lang/Object;
.source "PlaybackService.java"

# interfaces
.implements Lcom/perm/kate/music/MusicFocusable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainedAudioFocus()V
    .locals 3

    .line 1196
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v1, v0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1198
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v1, v0, Lcom/perm/kate/Player;->state:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1199
    invoke-virtual {v0, v1, v1}, Lcom/perm/kate/Player;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method public onLostAudioFocus(ZZ)V
    .locals 2

    .line 1203
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    :goto_0
    iput-object p1, v0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1204
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v1, p1, Lcom/perm/kate/Player;->state:I

    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    const p2, 0x3dcccccd    # 0.1f

    .line 1207
    invoke-virtual {p1, p2, p2}, Lcom/perm/kate/Player;->setVolume(FF)V

    goto :goto_1

    .line 1209
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1100(Lcom/perm/kate/PlaybackService;)V

    :cond_2
    :goto_1
    return-void
.end method

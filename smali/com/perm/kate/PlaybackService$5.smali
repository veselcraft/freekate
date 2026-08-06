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
    .param p1, "this$0"    # Lcom/perm/kate/PlaybackService;

    .prologue
    .line 1087
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGainedAudioFocus()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1089
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    iput-object v1, v0, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1091
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1092
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0, v2, v2}, Lcom/perm/kate/Player;->setVolume(FF)V

    .line 1093
    :cond_0
    return-void
.end method

.method public onLostAudioFocus(ZZ)V
    .locals 3
    .param p1, "canDuck"    # Z
    .param p2, "transient_loss"    # Z

    .prologue
    const v2, 0x3dcccccd    # 0.1f

    .line 1096
    iget-object v1, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    :goto_0
    iput-object v0, v1, Lcom/perm/kate/PlaybackService;->mAudioFocus:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 1097
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_0

    .line 1098
    if-eqz p2, :cond_2

    .line 1100
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    invoke-virtual {v0, v2, v2}, Lcom/perm/kate/Player;->setVolume(FF)V

    .line 1104
    :cond_0
    :goto_1
    return-void

    .line 1096
    :cond_1
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    goto :goto_0

    .line 1102
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/PlaybackService$5;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->access$1200(Lcom/perm/kate/PlaybackService;)V

    goto :goto_1
.end method

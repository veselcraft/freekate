.class Lcom/perm/kate/MiniPlayer$1;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/perm/kate/MiniPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MiniPlayer;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$000(Lcom/perm/kate/MiniPlayer;)V

    .line 115
    :cond_1
    :goto_0
    return-void

    .line 113
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {v0}, Lcom/perm/kate/MiniPlayer;->access$100(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_0
.end method

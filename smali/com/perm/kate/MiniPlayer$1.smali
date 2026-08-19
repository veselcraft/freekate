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

    .line 112
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 114
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz p1, :cond_1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/perm/kate/Player;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 118
    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {p1}, Lcom/perm/kate/MiniPlayer;->access$100(Lcom/perm/kate/MiniPlayer;)V

    goto :goto_1

    .line 117
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/MiniPlayer$1;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-static {p1}, Lcom/perm/kate/MiniPlayer;->access$000(Lcom/perm/kate/MiniPlayer;)V

    :cond_2
    :goto_1
    return-void
.end method

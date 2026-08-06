.class Lcom/perm/kate/MiniPlayer$2;
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
    .line 158
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v0}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v2}, Lcom/perm/kate/MiniPlayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

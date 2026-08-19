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

    .line 163
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 166
    iget-object p1, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/MiniPlayer$2;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

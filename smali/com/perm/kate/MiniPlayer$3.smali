.class Lcom/perm/kate/MiniPlayer$3;
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
    .line 165
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$3;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/perm/kate/MiniPlayer$3;->this$0:Lcom/perm/kate/MiniPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 169
    return-void
.end method

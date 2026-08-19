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

    .line 170
    iput-object p1, p0, Lcom/perm/kate/MiniPlayer$3;->this$0:Lcom/perm/kate/MiniPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/perm/kate/MiniPlayer$3;->this$0:Lcom/perm/kate/MiniPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    return-void
.end method

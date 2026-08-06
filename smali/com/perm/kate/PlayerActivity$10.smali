.class Lcom/perm/kate/PlayerActivity$10;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PlayerActivity;->scrollToCurrentAudioDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlayerActivity;

.field final synthetic val$smooth:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/PlayerActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PlayerActivity;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$10;->this$0:Lcom/perm/kate/PlayerActivity;

    iput-boolean p2, p0, Lcom/perm/kate/PlayerActivity$10;->val$smooth:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$10;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-boolean v1, p0, Lcom/perm/kate/PlayerActivity$10;->val$smooth:Z

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->access$600(Lcom/perm/kate/PlayerActivity;Z)V

    .line 554
    return-void
.end method

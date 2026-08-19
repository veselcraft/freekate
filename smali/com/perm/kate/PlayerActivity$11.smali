.class Lcom/perm/kate/PlayerActivity$11;
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

    .line 552
    iput-object p1, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    iput-boolean p2, p0, Lcom/perm/kate/PlayerActivity$11;->val$smooth:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/perm/kate/PlayerActivity$11;->this$0:Lcom/perm/kate/PlayerActivity;

    iget-boolean v1, p0, Lcom/perm/kate/PlayerActivity$11;->val$smooth:Z

    invoke-static {v0, v1}, Lcom/perm/kate/PlayerActivity;->access$600(Lcom/perm/kate/PlayerActivity;Z)V

    return-void
.end method

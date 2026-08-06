.class Lcom/perm/kate/OnlineFriendsFragment$6;
.super Landroid/content/BroadcastReceiver;
.source "OnlineFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/OnlineFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$6;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$6;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/OnlineFriendsFragment;->access$000(Lcom/perm/kate/OnlineFriendsFragment;)V

    .line 231
    return-void
.end method

.class Lcom/perm/kate/FriendsFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$12;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 581
    const-string v0, "Kate.FriendsListActivity"

    const-string v1, "Broadcast received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$12;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/FriendsFragment;->access$300(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    .line 583
    return-void
.end method

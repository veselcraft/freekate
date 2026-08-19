.class Lcom/perm/kate/FriendsFragment$12;
.super Landroid/content/BroadcastReceiver;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$12;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Kate.FriendsListActivit"

    const-string p2, "Broadcast received"

    .line 617
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$12;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/FriendsFragment;->access$100(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    return-void
.end method

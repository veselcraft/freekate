.class Lcom/perm/kate/FriendsFragment$14;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->getFriendsList()V
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
    .line 647
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$14;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 650
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$14;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$1500(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FriendsFragment$14;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 651
    return-void
.end method

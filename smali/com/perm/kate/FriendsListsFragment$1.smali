.class Lcom/perm/kate/FriendsListsFragment$1;
.super Ljava/lang/Thread;
.source "FriendsListsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsListsFragment;->getFriendsList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsListsFragment;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 46
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsListsFragment;->access$000(Lcom/perm/kate/FriendsListsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FriendsListsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.class Lcom/perm/kate/FriendsListsFragment$1;
.super Ljava/lang/Thread;
.source "FriendsListsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsListsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsListsFragment;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 46
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-static {v1}, Lcom/perm/kate/FriendsListsFragment;->access$000(Lcom/perm/kate/FriendsListsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsListsFragment$1;->this$0:Lcom/perm/kate/FriendsListsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/perm/kate/session/Session;->friendsLists(Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.class Lcom/perm/kate/FollowersFragment$5;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v1, Lcom/perm/kate/FriendsListAdapter;

    iget-object v2, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v3, v2, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v4}, Lcom/perm/kate/FollowersFragment;->access$900(Lcom/perm/kate/FollowersFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v4}, Lcom/perm/kate/FollowersFragment;->access$200(Lcom/perm/kate/FollowersFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v5}, Lcom/perm/kate/FollowersFragment;->access$000(Lcom/perm/kate/FollowersFragment;)Z

    move-result v5

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/perm/kate/FriendsListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;ZZ)V

    invoke-static {v0, v1}, Lcom/perm/kate/FollowersFragment;->access$802(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;

    .line 165
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$1000(Lcom/perm/kate/FollowersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$800(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/FriendsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

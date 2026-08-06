.class Lcom/perm/kate/FollowersFragment$5;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FollowersFragment;->createAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 165
    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    new-instance v2, Lcom/perm/kate/FriendsListAdapter;

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    iget-object v3, v0, Lcom/perm/kate/FollowersFragment;->users_ids:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$900(Lcom/perm/kate/FollowersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$200(Lcom/perm/kate/FollowersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v5}, Lcom/perm/kate/FollowersFragment;->access$000(Lcom/perm/kate/FollowersFragment;)Z

    move-result v5

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/perm/kate/FriendsListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;ZZ)V

    invoke-static {v1, v2}, Lcom/perm/kate/FollowersFragment;->access$802(Lcom/perm/kate/FollowersFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;

    .line 166
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$1000(Lcom/perm/kate/FollowersFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$5;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$800(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/FriendsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 167
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

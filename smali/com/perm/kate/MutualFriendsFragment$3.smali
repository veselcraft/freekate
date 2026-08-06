.class Lcom/perm/kate/MutualFriendsFragment$3;
.super Ljava/lang/Object;
.source "MutualFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MutualFriendsFragment;->displayDataOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MutualFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MutualFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MutualFriendsFragment;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    new-instance v1, Lcom/perm/kate/FriendsListAdapter;

    iget-object v2, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/MutualFriendsFragment;->users_ids:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/MutualFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/FriendsListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/perm/kate/MutualFriendsFragment;->access$202(Lcom/perm/kate/MutualFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;

    .line 84
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/MutualFriendsFragment;->access$300(Lcom/perm/kate/MutualFriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/MutualFriendsFragment;->access$300(Lcom/perm/kate/MutualFriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/MutualFriendsFragment$3;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/MutualFriendsFragment;->access$200(Lcom/perm/kate/MutualFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 86
    :cond_0
    return-void
.end method

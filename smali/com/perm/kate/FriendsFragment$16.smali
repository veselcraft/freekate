.class Lcom/perm/kate/FriendsFragment$16;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 718
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 719
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v3, v0, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$1700(Lcom/perm/kate/FriendsFragment;)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/FriendsFragment;->access$1800(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const-string v4, "first_name,last_name,photo_100,online"

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getFriendsByLid(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

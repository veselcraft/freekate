.class Lcom/perm/kate/FriendsFragment$2;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 184
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 189
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v2, v1, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    invoke-static {v1}, Lcom/perm/kate/FriendsFragment;->access$000(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$2;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "first_name,last_name,photo_100,online,sex,city"

    invoke-virtual {v0, v2, v4, v1, v3}, Lcom/perm/kate/session/Session;->getFriends(Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

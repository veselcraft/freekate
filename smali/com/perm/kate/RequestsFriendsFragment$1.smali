.class Lcom/perm/kate/RequestsFriendsFragment$1;
.super Ljava/lang/Thread;
.source "RequestsFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$1;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 51
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 53
    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment$1;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/RequestsFriendsFragment;->access$000(Lcom/perm/kate/RequestsFriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/RequestsFriendsFragment$1;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

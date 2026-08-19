.class Lcom/perm/kate/OnlineFriendsFragment$1;
.super Ljava/lang/Thread;
.source "OnlineFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 69
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v1, v1, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v3, v2, Lcom/perm/kate/OnlineFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/perm/kate/session/Session;->getOnlineFriends(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

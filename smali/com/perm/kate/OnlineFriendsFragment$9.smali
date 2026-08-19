.class Lcom/perm/kate/OnlineFriendsFragment$9;
.super Ljava/lang/Thread;
.source "OnlineFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;

.field final synthetic val$delete_friend_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->val$friend_id:J

    iput-object p4, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 272
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->val$friend_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$9;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

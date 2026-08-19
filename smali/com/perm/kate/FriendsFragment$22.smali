.class Lcom/perm/kate/FriendsFragment$22;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$delete_friend_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$22;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/FriendsFragment$22;->val$friend_id:J

    iput-object p4, p0, Lcom/perm/kate/FriendsFragment$22;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 828
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v1, p0, Lcom/perm/kate/FriendsFragment$22;->val$friend_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$22;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$22;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

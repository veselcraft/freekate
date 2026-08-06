.class Lcom/perm/kate/FriendsFragment$22;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->deleteFriend(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$delete_friend_callback:Lcom/perm/kate/session/Callback;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;JLcom/perm/kate/session/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 789
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$22;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p2, p0, Lcom/perm/kate/FriendsFragment$22;->val$friend_id:J

    iput-object p4, p0, Lcom/perm/kate/FriendsFragment$22;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 792
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v2, p0, Lcom/perm/kate/FriendsFragment$22;->val$friend_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FriendsFragment$22;->val$delete_friend_callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$22;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->deleteFriend(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 793
    return-void
.end method

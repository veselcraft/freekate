.class Lcom/perm/kate/OnlineFriendsFragment$1;
.super Ljava/lang/Thread;
.source "OnlineFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/OnlineFriendsFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v2, v1, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-object v2, v2, Lcom/perm/kate/OnlineFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$1;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->getOnlineFriends(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 70
    return-void
.end method

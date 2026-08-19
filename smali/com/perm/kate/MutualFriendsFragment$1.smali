.class Lcom/perm/kate/MutualFriendsFragment$1;
.super Ljava/lang/Thread;
.source "MutualFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MutualFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MutualFriendsFragment;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/MutualFriendsFragment;->access$000(Lcom/perm/kate/MutualFriendsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    iget-object v3, v2, Lcom/perm/kate/MutualFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/perm/kate/session/Session;->getMutual(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

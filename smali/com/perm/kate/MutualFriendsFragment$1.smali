.class Lcom/perm/kate/MutualFriendsFragment$1;
.super Ljava/lang/Thread;
.source "MutualFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MutualFriendsFragment;->refreshInThread()V
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
    .line 44
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 47
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/MutualFriendsFragment;->access$000(Lcom/perm/kate/MutualFriendsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    iget-object v3, v3, Lcom/perm/kate/MutualFriendsFragment;->callback:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/MutualFriendsFragment$1;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/MutualFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getMutual(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 48
    return-void
.end method

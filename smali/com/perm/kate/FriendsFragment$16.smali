.class Lcom/perm/kate/FriendsFragment$16;
.super Ljava/lang/Thread;
.source "FriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment;->getByListIdInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 682
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 683
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment;->user_id:Ljava/lang/Long;

    const-string v2, "first_name,last_name,photo_100,online"

    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/FriendsFragment;->access$1800(Lcom/perm/kate/FriendsFragment;)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-static {v4}, Lcom/perm/kate/FriendsFragment;->access$1900(Lcom/perm/kate/FriendsFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FriendsFragment$16;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v5}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->getFriendsByLid(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 684
    return-void
.end method

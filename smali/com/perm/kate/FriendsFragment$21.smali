.class Lcom/perm/kate/FriendsFragment$21;
.super Lcom/perm/kate/session/Callback;
.source "FriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;J)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p3, p0, Lcom/perm/kate/FriendsFragment$21;->val$friend_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 821
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 809
    check-cast p1, Ljava/lang/Long;

    .line 810
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 811
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 812
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/FriendsFragment$21;->val$friend_id:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 813
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 814
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/FriendsFragment;->access$100(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

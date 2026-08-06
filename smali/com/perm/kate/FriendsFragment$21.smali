.class Lcom/perm/kate/FriendsFragment$21;
.super Lcom/perm/kate/session/Callback;
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

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    iput-wide p3, p0, Lcom/perm/kate/FriendsFragment$21;->val$friend_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    .line 785
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 786
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 772
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/perm/kate/FriendsFragment;->showProgressBar(Z)V

    move-object v2, p1

    .line 773
    check-cast v2, Ljava/lang/Long;

    .line 774
    .local v2, "response":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 775
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 776
    .local v0, "owner_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/FriendsFragment$21;->val$friend_id:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 777
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const v4, 0x7f0700ae

    invoke-virtual {v3, v4}, Lcom/perm/kate/FriendsFragment;->displayToast(I)V

    .line 778
    iget-object v3, p0, Lcom/perm/kate/FriendsFragment$21;->this$0:Lcom/perm/kate/FriendsFragment;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/FriendsFragment;->access$300(Lcom/perm/kate/FriendsFragment;Ljava/lang/Integer;)V

    .line 780
    .end local v0    # "owner_id":J
    :cond_0
    return-void
.end method

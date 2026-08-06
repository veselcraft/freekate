.class Lcom/perm/kate/OnlineFriendsFragment$8;
.super Lcom/perm/kate/session/Callback;
.source "OnlineFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/OnlineFriendsFragment;->deleteFriend(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;

.field final synthetic val$friend_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iput-wide p3, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->val$friend_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    .line 263
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 264
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 250
    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    move-object v2, p1

    .line 251
    check-cast v2, Ljava/lang/Long;

    .line 252
    .local v2, "response":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 253
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 254
    .local v0, "owner_id":J
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->val$friend_id:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteFriend(JJ)Z

    .line 255
    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const v4, 0x7f0700ae

    invoke-virtual {v3, v4}, Lcom/perm/kate/OnlineFriendsFragment;->displayToast(I)V

    .line 256
    iget-object v3, p0, Lcom/perm/kate/OnlineFriendsFragment$8;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/OnlineFriendsFragment;->access$000(Lcom/perm/kate/OnlineFriendsFragment;)V

    .line 258
    .end local v0    # "owner_id":J
    :cond_0
    return-void
.end method

.class Lcom/perm/kate/OnlineFriendsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "OnlineFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/OnlineFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 113
    iget-object v0, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    .line 114
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 98
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 103
    .local v0, "users_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 105
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v2, v2, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->updateUsersOnlineStatus(Ljava/util/ArrayList;J)V

    .line 106
    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/OnlineFriendsFragment;->showProgressBar(Z)V

    .line 107
    iget-object v1, p0, Lcom/perm/kate/OnlineFriendsFragment$2;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/OnlineFriendsFragment;->access$000(Lcom/perm/kate/OnlineFriendsFragment;)V

    .line 108
    return-void
.end method

.class Lcom/perm/kate/FollowersFragment$1;
.super Ljava/lang/Thread;
.source "FollowersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FollowersFragment;->refreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FollowersFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0xc8

    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$000(Lcom/perm/kate/FollowersFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v3}, Lcom/perm/kate/FollowersFragment;->access$100(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$200(Lcom/perm/kate/FollowersFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$300(Lcom/perm/kate/FollowersFragment;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "first_name,last_name,photo_100,online"

    iget-object v6, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v6}, Lcom/perm/kate/FollowersFragment;->access$400(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v7}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$300(Lcom/perm/kate/FollowersFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v0}, Lcom/perm/kate/FollowersFragment;->access$500(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v0, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FollowersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    move v8, v2

    move v9, v3

    move-object v10, v5

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/session/Session;->getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

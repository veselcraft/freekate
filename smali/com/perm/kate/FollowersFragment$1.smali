.class Lcom/perm/kate/FollowersFragment$1;
.super Ljava/lang/Thread;
.source "FollowersFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 80
    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$000(Lcom/perm/kate/FollowersFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v4}, Lcom/perm/kate/FollowersFragment;->access$100(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/session/Session;->getRequestsFriends(Ljava/lang/Integer;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$200(Lcom/perm/kate/FollowersFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$300(Lcom/perm/kate/FollowersFragment;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0xc8

    const/4 v7, 0x0

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$400(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    const-string v6, "first_name,last_name,photo_100,online"

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->getFollowers(Ljava/lang/Long;IILjava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 85
    :cond_1
    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$300(Lcom/perm/kate/FollowersFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xc8

    const/4 v14, 0x0

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-static {v1}, Lcom/perm/kate/FollowersFragment;->access$500(Lcom/perm/kate/FollowersFragment;)Lcom/perm/kate/session/Callback;

    move-result-object v15

    iget-object v1, v0, Lcom/perm/kate/FollowersFragment$1;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v16

    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/session/Session;->getSubscriptions(Ljava/lang/Long;IILjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

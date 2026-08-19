.class Lcom/perm/utils/RepostHelper$4;
.super Lcom/perm/kate/session/Callback;
.source "RepostHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Landroid/app/Activity;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 13

    .line 125
    check-cast p1, Lcom/perm/kate/api/WallMessage;

    .line 129
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v0, v0, Lcom/perm/utils/RepostHelper;->group_id:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 130
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v8, v1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 133
    :goto_1
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 134
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    iget-wide v3, v1, Lcom/perm/utils/RepostHelper;->post_id:J

    iget-wide v5, v1, Lcom/perm/utils/RepostHelper;->post_owner_id:J

    iget v1, p1, Lcom/perm/kate/api/WallMessage;->like_count:I

    int-to-long v11, v1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v1, p1, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;Ljava/lang/Boolean;)V

    .line 135
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v0}, Lcom/perm/utils/RepostHelper;->access$200(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v0

    const v1, 0x7f0f0555

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 137
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v0, v0, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/perm/utils/RepostHelper$4;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v0, v0, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-interface {v0, p1}, Lcom/perm/utils/RepostHelper$RepostCallback;->success(Lcom/perm/kate/api/WallMessage;)V

    :cond_2
    return-void
.end method

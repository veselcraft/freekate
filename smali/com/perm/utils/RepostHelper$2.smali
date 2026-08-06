.class Lcom/perm/utils/RepostHelper$2;
.super Lcom/perm/kate/session/Callback;
.source "RepostHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/RepostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/RepostHelper;


# direct methods
.method constructor <init>(Lcom/perm/utils/RepostHelper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/RepostHelper;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 56
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 59
    .local v0, "counts":Lcom/perm/kate/api/WallMessage;
    const/4 v7, 0x0

    .line 60
    .local v7, "likes":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v1, v1, Lcom/perm/utils/RepostHelper;->group_id:Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 64
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 65
    .local v8, "account_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-wide v2, v2, Lcom/perm/utils/RepostHelper;->post_id:J

    iget-object v4, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-wide v4, v4, Lcom/perm/utils/RepostHelper;->post_owner_id:J

    iget v6, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v10, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/db/DataHelper;->updatePostLikes(JJLjava/lang/Long;Ljava/lang/Boolean;JLjava/lang/Integer;)V

    .line 66
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    invoke-static {v1}, Lcom/perm/utils/RepostHelper;->access$100(Lcom/perm/utils/RepostHelper;)Lcom/perm/kate/BaseActivity;

    move-result-object v1

    const v2, 0x7f0704d0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 68
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v1, v1, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v1, v1, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/perm/utils/RepostHelper$2;->this$0:Lcom/perm/utils/RepostHelper;

    iget-object v1, v1, Lcom/perm/utils/RepostHelper;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/utils/RepostHelper$RepostCallback;

    invoke-interface {v1, v0}, Lcom/perm/utils/RepostHelper$RepostCallback;->success(Lcom/perm/kate/api/WallMessage;)V

    .line 70
    :cond_1
    return-void
.end method

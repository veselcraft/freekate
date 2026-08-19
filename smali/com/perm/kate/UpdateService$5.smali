.class Lcom/perm/kate/UpdateService$5;
.super Lcom/perm/kate/session/Callback;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/UpdateService;->updateWalls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UpdateService;

.field final synthetic val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;


# direct methods
.method constructor <init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;Lcom/perm/utils/WallSubscriptions$WallSubscription;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iput-object p3, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 342
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 343
    instance-of v0, p1, Lcom/perm/kate/api/KException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/perm/kate/api/KException;

    iget p1, p1, Lcom/perm/kate/api/KException;->error_code:I

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 344
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-virtual {p1, v0}, Lcom/perm/utils/WallSubscriptions;->wallFailed(Lcom/perm/utils/WallSubscriptions$WallSubscription;)V

    :cond_0
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 332
    check-cast p1, Lcom/perm/kate/api/WallResponse;

    .line 333
    iget-object v0, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iget-object p1, p1, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v1, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/UpdateService;->getNewPost(Ljava/util/ArrayList;J)Lcom/perm/kate/api/WallMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iget-object v1, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v2, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    iget v1, v1, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    invoke-static {v0, p1, v2, v3, v1}, Lcom/perm/kate/notifications/WallNotification;->display(Landroid/content/Context;Lcom/perm/kate/api/WallMessage;JI)V

    .line 336
    iget-object v0, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v1, p1, Lcom/perm/kate/api/WallMessage;->date:J

    iput-wide v1, v0, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 337
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/utils/WallSubscriptions;->save()V

    :cond_0
    return-void
.end method

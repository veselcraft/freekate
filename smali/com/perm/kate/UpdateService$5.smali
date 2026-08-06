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
    .param p1, "this$0"    # Lcom/perm/kate/UpdateService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iput-object p3, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 315
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/WallResponse;

    .line 316
    .local v0, "wallResponse":Lcom/perm/kate/api/WallResponse;
    iget-object v2, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iget-object v3, v0, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v4, v4, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/UpdateService;->getNewPost(Ljava/util/ArrayList;J)Lcom/perm/kate/api/WallMessage;

    move-result-object v1

    .line 317
    .local v1, "wm":Lcom/perm/kate/api/WallMessage;
    if-eqz v1, :cond_0

    .line 318
    iget-object v2, p0, Lcom/perm/kate/UpdateService$5;->this$0:Lcom/perm/kate/UpdateService;

    iget-object v3, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v4, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->owner_id:J

    iget-object v3, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget v3, v3, Lcom/perm/utils/WallSubscriptions$WallSubscription;->type:I

    invoke-static {v2, v1, v4, v5, v3}, Lcom/perm/kate/notifications/WallNotification;->display(Landroid/content/Context;Lcom/perm/kate/api/WallMessage;JI)V

    .line 319
    iget-object v2, p0, Lcom/perm/kate/UpdateService$5;->val$ws:Lcom/perm/utils/WallSubscriptions$WallSubscription;

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->date:J

    iput-wide v4, v2, Lcom/perm/utils/WallSubscriptions$WallSubscription;->last_post:J

    .line 320
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/utils/WallSubscriptions;->save()V

    .line 322
    :cond_0
    return-void
.end method

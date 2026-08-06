.class Lcom/perm/kate/UpdateService$2;
.super Lcom/perm/kate/session/Callback;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/UpdateService;


# direct methods
.method constructor <init>(Lcom/perm/kate/UpdateService;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/UpdateService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/perm/kate/UpdateService$2;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 236
    move-object v9, p1

    check-cast v9, Lcom/perm/kate/api/Counters;

    .line 237
    .local v9, "counters":Lcom/perm/kate/api/Counters;
    iget v0, v9, Lcom/perm/kate/api/Counters;->notifications:I

    if-lez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/perm/kate/UpdateService$2;->this$0:Lcom/perm/kate/UpdateService;

    const/4 v2, 0x1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/notifications/RepliesNotification;->display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method

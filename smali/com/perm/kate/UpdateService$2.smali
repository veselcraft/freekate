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

    .line 248
    iput-object p1, p0, Lcom/perm/kate/UpdateService$2;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 251
    check-cast p1, Lcom/perm/kate/api/Counters;

    .line 252
    iget p1, p1, Lcom/perm/kate/api/Counters;->notifications:I

    if-lez p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/perm/kate/UpdateService$2;->this$0:Lcom/perm/kate/UpdateService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/notifications/RepliesNotification;->display(Landroid/content/Context;IZZLjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

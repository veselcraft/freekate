.class Lcom/perm/kate/UpdateService$3;
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

    .line 257
    iput-object p1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 260
    check-cast p1, Lcom/perm/kate/api/Newsfeed;

    .line 261
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "News received count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.UpdateService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/perm/kate/NewsFragment;->count:I

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    .line 264
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v3, v1, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v0, v3, v4, v2}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 265
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v3, v1, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v0, p1, v3, v4, v2}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 267
    iget-object p1, p1, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 268
    iget-object p1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {p1}, Lcom/perm/kate/UpdateService;->access$100(Lcom/perm/kate/UpdateService;)V

    .line 269
    iget-object p1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {p1}, Lcom/perm/kate/notifications/NewsNotification;->display(Landroid/content/Context;)V

    .line 270
    iget-object p1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {p1}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

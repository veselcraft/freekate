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
    .param p1, "this$0"    # Lcom/perm/kate/UpdateService;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 245
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Newsfeed;

    .line 246
    .local v0, "ns":Lcom/perm/kate/api/Newsfeed;
    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 247
    const-string v1, "Kate.UpdateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "News received count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget v2, Lcom/perm/kate/NewsFragment;->count:I

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_1

    .line 249
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v2, v2, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->deleteAllNews(JI)V

    .line 250
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    iget-wide v2, v2, Lcom/perm/kate/UpdateService;->account_id:J

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->createNews(Lcom/perm/kate/api/Newsfeed;JI)V

    .line 252
    iget-object v1, v0, Lcom/perm/kate/api/Newsfeed;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 253
    iget-object v1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {v1}, Lcom/perm/kate/UpdateService;->access$100(Lcom/perm/kate/UpdateService;)V

    .line 254
    iget-object v1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {v1}, Lcom/perm/kate/notifications/NewsNotification;->display(Landroid/content/Context;)V

    .line 255
    iget-object v1, p0, Lcom/perm/kate/UpdateService$3;->this$0:Lcom/perm/kate/UpdateService;

    invoke-static {v1}, Lcom/perm/kate/KateWidgetMed;->refresh(Landroid/content/Context;)V

    .line 257
    :cond_2
    return-void
.end method

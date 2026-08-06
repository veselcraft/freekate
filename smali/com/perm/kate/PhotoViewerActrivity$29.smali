.class Lcom/perm/kate/PhotoViewerActrivity$29;
.super Ljava/lang/Thread;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->refreshCounts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 1323
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 1326
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v7}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v7}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iget-wide v8, v7, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, "photos":Ljava/lang/String;
    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    iget-object v6, v6, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1328
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v7}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v7

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1329
    :cond_0
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v6, :cond_1

    .line 1337
    :goto_0
    return-void

    .line 1334
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    iget-object v6, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v6

    iget-object v6, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1335
    .local v2, "o_id":J
    :goto_1
    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v6, v6, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    cmp-long v6, v6, v4

    if-ltz v6, :cond_2

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 1336
    .local v0, "get_user_id":Z
    :goto_2
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v5}, Lcom/perm/kate/PhotoViewerActrivity;->access$3400(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v4, v1, v0, v5, v6}, Lcom/perm/kate/session/Session;->getPhotoCountsByIdWithExecute(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .end local v0    # "get_user_id":Z
    .end local v2    # "o_id":J
    :cond_3
    move-wide v2, v4

    .line 1334
    goto :goto_1

    .line 1335
    .restart local v2    # "o_id":J
    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

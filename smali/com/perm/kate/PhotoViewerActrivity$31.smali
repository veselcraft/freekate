.class Lcom/perm/kate/PhotoViewerActrivity$31;
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

.field final synthetic val$photos_to_request:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1481
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->val$photos_to_request:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1484
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->val$photos_to_request:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$3600(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    return-void

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_0

    :cond_1
    move-wide v4, v2

    .line 1494
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iget-wide v6, v1, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    cmp-long v8, v6, v2

    if-ltz v8, :cond_3

    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 1495
    :goto_2
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$3700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity$31;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v3, v0, v2, v1, v4}, Lcom/perm/kate/session/Session;->getPhotoCountsByIdWithExecute(Ljava/lang/String;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

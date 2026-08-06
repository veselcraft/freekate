.class Lcom/perm/kate/PhotoViewerActrivity$30;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1341
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$30;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1357
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1358
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 1345
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 1346
    .local v0, "photo":Lcom/perm/kate/api/Photo;
    if-nez v0, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1348
    :cond_1
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 1351
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$30;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3500(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    .line 1352
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$30;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$3600(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    goto :goto_0
.end method

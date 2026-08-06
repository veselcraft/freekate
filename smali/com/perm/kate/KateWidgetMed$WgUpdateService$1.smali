.class Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;
.super Ljava/lang/Thread;
.source "KateWidgetMed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/KateWidgetMed$WgUpdateService;->handleStart(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

.field final synthetic val$url_photo:Ljava/lang/String;

.field final synthetic val$widget_id:I


# direct methods
.method constructor <init>(Lcom/perm/kate/KateWidgetMed$WgUpdateService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    iput-object p2, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    iput p3, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$widget_id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 255
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    .line 256
    .local v0, "loader":Lcom/perm/kate/ImageLoader;
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 257
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    invoke-virtual {v0, v1, v7}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    iget v2, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$widget_id:I

    invoke-static {v1, v2}, Lcom/perm/kate/KateWidgetMed;->access$000(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-virtual {v1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->stopSelf()V

    .line 264
    .end local v0    # "loader":Lcom/perm/kate/ImageLoader;
    .end local v7    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v8

    .line 260
    .local v8, "th":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-virtual {v1}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->stopSelf()V

    goto :goto_0

    .end local v8    # "th":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-virtual {v2}, Lcom/perm/kate/KateWidgetMed$WgUpdateService;->stopSelf()V

    throw v1
.end method

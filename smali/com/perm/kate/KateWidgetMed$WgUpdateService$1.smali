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

    .line 243
    iput-object p1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    iput-object p2, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    iput p3, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$widget_id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 247
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    .line 248
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    const/16 v2, 0x5a

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->getBitmap(Ljava/lang/String;IIZLcom/perm/utils/UploadProgressListener;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$url_photo:Ljava/lang/String;

    invoke-virtual {v7, v1, v0}, Lcom/perm/kate/ImageLoader;->putToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 250
    iget-object v0, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    iget v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->val$widget_id:I

    invoke-static {v0, v1}, Lcom/perm/kate/KateWidgetMed;->access$000(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 252
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/perm/kate/KateWidgetMed$WgUpdateService$1;->this$0:Lcom/perm/kate/KateWidgetMed$WgUpdateService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    .line 255
    throw v0
.end method

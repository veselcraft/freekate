.class Lcom/perm/kate/GifViewActivity$3;
.super Ljava/lang/Object;
.source "GifViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GifViewActivity;->loadGifByUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GifViewActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GifViewActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 178
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v1}, Lcom/perm/kate/GifViewActivity;->access$400(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v2}, Lcom/perm/kate/GifViewActivity;->access$500(Lcom/perm/kate/GifViewActivity;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v4}, Lcom/perm/kate/GifViewActivity;->access$600(Lcom/perm/kate/GifViewActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v1, v0}, Lcom/perm/kate/GifViewActivity;->access$700(Lcom/perm/kate/GifViewActivity;Z)V

    return-void
.end method

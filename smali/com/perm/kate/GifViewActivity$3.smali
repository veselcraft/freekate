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
    .param p1, "this$0"    # Lcom/perm/kate/GifViewActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 177
    const/4 v1, 0x0

    .line 179
    .local v1, "success":Z
    :try_start_0
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v3}, Lcom/perm/kate/GifViewActivity;->access$400(Lcom/perm/kate/GifViewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v4}, Lcom/perm/kate/GifViewActivity;->access$500(Lcom/perm/kate/GifViewActivity;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;

    iget-object v6, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v6}, Lcom/perm/kate/GifViewActivity;->access$600(Lcom/perm/kate/GifViewActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/perm/kate/GifViewActivity$ProgressDisplayer;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v1, 0x1

    .line 186
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/GifViewActivity$3;->this$0:Lcom/perm/kate/GifViewActivity;

    invoke-static {v2, v1}, Lcom/perm/kate/GifViewActivity;->access$700(Lcom/perm/kate/GifViewActivity;Z)V

    .line 187
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    invoke-static {v0}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

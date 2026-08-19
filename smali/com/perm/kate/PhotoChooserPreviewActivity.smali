.class public Lcom/perm/kate/PhotoChooserPreviewActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoChooserPreviewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 16
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    :try_start_0
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->isMeizu()Z

    move-result p1

    if-nez p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    const v0, 0x7f0c00eb

    .line 23
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const v0, 0x7f0f0265

    .line 24
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    const v0, 0x7f090185

    .line 25
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 29
    invoke-static {v1}, Lcom/perm/kate/PhotoChooserActivity;->makeKey(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v0, v2, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    .line 34
    :cond_1
    new-instance p1, Lcom/perm/kate/PhotoChooserPreviewActivity$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/perm/kate/PhotoChooserPreviewActivity$1;-><init>(Lcom/perm/kate/PhotoChooserPreviewActivity;ILcom/perm/kate/imagezoom/ImageViewTouchBase;)V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 49
    invoke-static {p0, v3}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_2

    .line 54
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_2
    :goto_0
    return-void
.end method

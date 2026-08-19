.class Lcom/perm/kate/PhotoChooserPreviewActivity$1;
.super Ljava/lang/Thread;
.source "PhotoChooserPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoChooserPreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoChooserPreviewActivity;

.field final synthetic val$id:I

.field final synthetic val$imageView:Lcom/perm/kate/imagezoom/ImageViewTouchBase;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserPreviewActivity;ILcom/perm/kate/imagezoom/ImageViewTouchBase;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->this$0:Lcom/perm/kate/PhotoChooserPreviewActivity;

    iput p2, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->val$id:I

    iput-object p3, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->val$imageView:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 37
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/perm/utils/PhotoOrientationHelper;->getOrientationFromProvider(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->this$0:Lcom/perm/kate/PhotoChooserPreviewActivity;

    const/16 v3, 0x258

    invoke-static {v0, v2, v1, v3}, Lcom/perm/kate/PhotoUploadOptionsActivity;->getResampledImage(Landroid/net/Uri;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->this$0:Lcom/perm/kate/PhotoChooserPreviewActivity;

    new-instance v2, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;-><init>(Lcom/perm/kate/PhotoChooserPreviewActivity$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

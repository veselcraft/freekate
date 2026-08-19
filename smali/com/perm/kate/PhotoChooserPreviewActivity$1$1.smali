.class Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;
.super Ljava/lang/Object;
.source "PhotoChooserPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotoChooserPreviewActivity$1;

.field final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserPreviewActivity$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;->this$1:Lcom/perm/kate/PhotoChooserPreviewActivity$1;

    iput-object p2, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;->val$b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;->this$1:Lcom/perm/kate/PhotoChooserPreviewActivity$1;

    iget-object v0, v0, Lcom/perm/kate/PhotoChooserPreviewActivity$1;->val$imageView:Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    iget-object v1, p0, Lcom/perm/kate/PhotoChooserPreviewActivity$1$1;->val$b:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setImageBitmapReset(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

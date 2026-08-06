.class Lcom/felipecsl/gifimageview/library/GifImageView$1;
.super Ljava/lang/Object;
.source "GifImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/felipecsl/gifimageview/library/GifImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/felipecsl/gifimageview/library/GifImageView;


# direct methods
.method constructor <init>(Lcom/felipecsl/gifimageview/library/GifImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/felipecsl/gifimageview/library/GifImageView;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/felipecsl/gifimageview/library/GifImageView$1;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$1;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-static {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$1;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-static {v0}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/felipecsl/gifimageview/library/GifImageView$1;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    iget-object v1, p0, Lcom/felipecsl/gifimageview/library/GifImageView$1;->this$0:Lcom/felipecsl/gifimageview/library/GifImageView;

    invoke-static {v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->access$000(Lcom/felipecsl/gifimageview/library/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/felipecsl/gifimageview/library/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 31
    :cond_0
    return-void
.end method

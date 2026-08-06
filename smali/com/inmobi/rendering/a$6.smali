.class Lcom/inmobi/rendering/a$6;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Lcom/inmobi/rendering/InMobiAdActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 736
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 738
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    .line 739
    invoke-static {v1}, Lcom/inmobi/rendering/a;->c(Lcom/inmobi/rendering/a;)Landroid/content/Context;

    move-result-object v1

    .line 738
    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/e;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 741
    iget-object v1, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    .line 742
    invoke-static {v1}, Lcom/inmobi/rendering/a;->c(Lcom/inmobi/rendering/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    invoke-static {v2}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b$e;->a()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    invoke-static {v3}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b$e;->b()I

    move-result v3

    .line 741
    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/rendering/mraid/e;->a(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 745
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 746
    iget-object v3, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    .line 747
    invoke-static {v3}, Lcom/inmobi/rendering/a;->c(Lcom/inmobi/rendering/a;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    invoke-static {v4}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/b$e;->c()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/inmobi/rendering/mraid/e;->a(Landroid/graphics/Bitmap;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fireGalleryImageSelectedEvent(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/a$6;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :goto_0
    return-void

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$6;->b:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$6;->a:Ljava/lang/String;

    const-string v2, "User did not select an image from gallery"

    const-string v3, "getGalleryImage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

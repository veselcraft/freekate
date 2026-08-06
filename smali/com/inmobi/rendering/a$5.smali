.class Lcom/inmobi/rendering/a$5;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Lcom/inmobi/rendering/InMobiAdActivity$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->getGalleryImage(Ljava/lang/String;)V
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
    .line 715
    iput-object p1, p0, Lcom/inmobi/rendering/a$5;->b:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    .line 718
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/inmobi/rendering/a$5;->b:Lcom/inmobi/rendering/a;

    iget-object v1, p0, Lcom/inmobi/rendering/a$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;Ljava/lang/String;)V

    .line 723
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$5;->b:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$5;->a:Ljava/lang/String;

    const-string v2, "Permission denied by user."

    const-string v3, "processGetGalleryImage"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

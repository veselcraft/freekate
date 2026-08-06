.class Lcom/inmobi/rendering/RenderView$7$5;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/RenderView$7;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/RenderView$7;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView$7;)V
    .locals 0

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$7$5;->a:Lcom/inmobi/rendering/RenderView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    .line 1491
    const/4 v0, 0x4

    .line 1492
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1493
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/RenderView;->p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Back pressed when HTML5 video is playing."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$7$5;->a:Lcom/inmobi/rendering/RenderView$7;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView$7;->a(Lcom/inmobi/rendering/RenderView$7;)V

    .line 1496
    const/4 v0, 0x1

    .line 1498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.class Lcom/inmobi/rendering/RenderView$7$4;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1473
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$7$4;->a:Lcom/inmobi/rendering/RenderView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 1477
    const/4 v0, 0x1

    return v0
.end method

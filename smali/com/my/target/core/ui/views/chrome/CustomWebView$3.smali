.class final Lcom/my/target/core/ui/views/chrome/CustomWebView$3;
.super Ljava/lang/Object;
.source "CustomWebView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/ui/views/chrome/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/ui/views/chrome/CustomWebView;


# direct methods
.method constructor <init>(Lcom/my/target/core/ui/views/chrome/CustomWebView;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$3;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$3;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Lcom/my/target/core/ui/views/chrome/CustomWebView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/my/target/core/ui/views/chrome/CustomWebView$3;->a:Lcom/my/target/core/ui/views/chrome/CustomWebView;

    invoke-static {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView;->e(Lcom/my/target/core/ui/views/chrome/CustomWebView;)Lcom/my/target/core/ui/views/chrome/CustomWebView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/my/target/core/ui/views/chrome/CustomWebView$a;->onWebViewClosed()V

    .line 306
    :cond_0
    return-void
.end method

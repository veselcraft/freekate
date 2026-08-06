.class final Lru/begun/adlib/AdView$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/begun/adlib/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lru/begun/adlib/AdView;


# direct methods
.method constructor <init>(Lru/begun/adlib/AdView;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lru/begun/adlib/AdView$a;->a:Lru/begun/adlib/AdView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 339
    iget-object v0, p0, Lru/begun/adlib/AdView$a;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_onJsAlert_: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    .line 341
    const/4 v0, 0x1

    return v0
.end method

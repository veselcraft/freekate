.class final Lcom/my/target/core/engines/h$1;
.super Landroid/webkit/WebChromeClient;
.source "StandardJSEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/my/target/core/engines/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/my/target/core/engines/h;


# direct methods
.method constructor <init>(Lcom/my/target/core/engines/h;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/my/target/core/engines/h$1;->a:Lcom/my/target/core/engines/h;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "js console message: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " at line: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 318
    invoke-static {p1}, Lcom/my/target/core/communication/js/a;->a(Landroid/webkit/ConsoleMessage;)Lcom/my/target/core/communication/js/events/f;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 321
    iget-object v1, p0, Lcom/my/target/core/engines/h$1;->a:Lcom/my/target/core/engines/h;

    invoke-static {v1}, Lcom/my/target/core/engines/h;->a(Lcom/my/target/core/engines/h;)Lcom/my/target/core/communication/js/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/my/target/core/communication/js/c;->a(Lcom/my/target/core/communication/js/events/f;)Z

    .line 322
    const/4 v0, 0x1

    .line 324
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

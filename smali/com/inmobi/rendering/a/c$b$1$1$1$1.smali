.class Lcom/inmobi/rendering/a/c$b$1$1$1$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c$b$1$1$1;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b$1$1$1;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1$1$1$1;->a:Lcom/inmobi/rendering/a/c$b$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$b$1$1$1$1;->a:Lcom/inmobi/rendering/a/c$b$1$1$1;

    iget-object v0, v0, Lcom/inmobi/rendering/a/c$b$1$1$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 338
    return-void
.end method

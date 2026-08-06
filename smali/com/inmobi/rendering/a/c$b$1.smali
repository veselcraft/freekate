.class Lcom/inmobi/rendering/a/c$b$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/a;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Lcom/inmobi/rendering/a/c$b;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c$b;Lcom/inmobi/rendering/a/a;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$b$1;->c:Lcom/inmobi/rendering/a/c$b;

    iput-object p2, p0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iput-object p3, p0, Lcom/inmobi/rendering/a/c$b$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 312
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p0, Lcom/inmobi/rendering/a/c$b$1;->a:Lcom/inmobi/rendering/a/a;

    iget-object v2, v2, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 313
    new-instance v1, Lcom/inmobi/commons/core/network/e;

    new-instance v2, Lcom/inmobi/rendering/a/c$b$1$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$b$1$1;-><init>(Lcom/inmobi/rendering/a/c$b$1;)V

    invoke-direct {v1, v0, v2}, Lcom/inmobi/commons/core/network/e;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;Landroid/webkit/WebViewClient;)V

    .line 388
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/e;->a()V

    .line 389
    return-void
.end method

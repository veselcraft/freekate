.class Lcom/flurry/sdk/cl$1;
.super Lcom/flurry/sdk/fi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cl;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/cl;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/cl;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/flurry/sdk/cl$1;->a:Lcom/flurry/sdk/cl;

    invoke-direct {p0}, Lcom/flurry/sdk/fi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/cl$1;->a:Lcom/flurry/sdk/cl;

    invoke-static {v0}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/cl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/flurry/sdk/cl$1;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cl;->a(Lcom/flurry/sdk/cl;Landroid/content/Context;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/cl$1;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cl;->b(Lcom/flurry/sdk/cl;Landroid/content/Context;)V

    .line 263
    return-void
.end method

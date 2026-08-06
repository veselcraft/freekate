.class Lcom/flurry/sdk/cl$3;
.super Lcom/flurry/sdk/fi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cl;->v()V
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
    .line 367
    iput-object p1, p0, Lcom/flurry/sdk/cl$3;->a:Lcom/flurry/sdk/cl;

    invoke-direct {p0}, Lcom/flurry/sdk/fi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/flurry/sdk/cl$3;->a:Lcom/flurry/sdk/cl;

    invoke-virtual {v0}, Lcom/flurry/sdk/cl;->f()Lcom/flurry/sdk/cj;

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/flurry/sdk/cl$3;->a:Lcom/flurry/sdk/cl;

    invoke-static {v1}, Lcom/flurry/sdk/cl;->b(Lcom/flurry/sdk/cl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 372
    iget-object v1, p0, Lcom/flurry/sdk/cl$3;->a:Lcom/flurry/sdk/cl;

    invoke-static {v1}, Lcom/flurry/sdk/cl;->b(Lcom/flurry/sdk/cl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/flurry/sdk/cl$3;->a:Lcom/flurry/sdk/cl;

    invoke-static {v0}, Lcom/flurry/sdk/cl;->c(Lcom/flurry/sdk/cl;)V

    .line 375
    return-void
.end method

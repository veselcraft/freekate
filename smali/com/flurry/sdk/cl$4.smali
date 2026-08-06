.class Lcom/flurry/sdk/cl$4;
.super Lcom/flurry/sdk/fi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/cl;->w()V
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
    .line 380
    iput-object p1, p0, Lcom/flurry/sdk/cl$4;->a:Lcom/flurry/sdk/cl;

    invoke-direct {p0}, Lcom/flurry/sdk/fi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/flurry/sdk/cl$4;->a:Lcom/flurry/sdk/cl;

    invoke-static {}, Lcom/flurry/sdk/eg;->a()Lcom/flurry/sdk/eg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/eg;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cl;->c(Lcom/flurry/sdk/cl;Landroid/content/Context;)V

    .line 384
    return-void
.end method

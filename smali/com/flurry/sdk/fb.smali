.class public Lcom/flurry/sdk/fb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/fc;


# instance fields
.field private final a:Lcom/flurry/sdk/fc;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fc;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/fc;

    .line 22
    return-void
.end method


# virtual methods
.method public f(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/fc;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/fc;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/fc;->f(Landroid/content/Context;)V

    .line 33
    :cond_0
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/fc;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flurry/sdk/fb;->a:Lcom/flurry/sdk/fc;

    invoke-interface {v0, p1}, Lcom/flurry/sdk/fc;->g(Landroid/content/Context;)V

    .line 40
    :cond_0
    return-void
.end method

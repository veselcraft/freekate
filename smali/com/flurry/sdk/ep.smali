.class public abstract Lcom/flurry/sdk/ep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eq;


# instance fields
.field private final a:Lcom/flurry/sdk/eq;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/eq;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/dg;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/flurry/sdk/ep;->a:Lcom/flurry/sdk/eq;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/eq;->c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

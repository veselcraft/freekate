.class Lcom/flurry/sdk/ei$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ek$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/ei;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ei;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ei;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ek;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->d(Lcom/flurry/sdk/ei;)V

    return-void
.end method

.method public a(Lcom/flurry/sdk/ek;Ljava/io/InputStream;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/ek;->d()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->c(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/flurry/sdk/eu;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public a(Lcom/flurry/sdk/ek;Ljava/io/OutputStream;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {p1}, Lcom/flurry/sdk/ei;->b(Lcom/flurry/sdk/ei;)Lcom/flurry/sdk/eu;

    move-result-object p1

    iget-object v0, p0, Lcom/flurry/sdk/ei$1;->a:Lcom/flurry/sdk/ei;

    invoke-static {v0}, Lcom/flurry/sdk/ei;->a(Lcom/flurry/sdk/ei;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/flurry/sdk/eu;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

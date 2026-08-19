.class public Lcom/flurry/sdk/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/eu<",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/et;->b(Ljava/io/InputStream;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/et;->a(Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;[B)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 26
    array-length v1, p2

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/io/InputStream;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 35
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 36
    invoke-static {p1, v0}, Lcom/flurry/sdk/fb;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 37
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

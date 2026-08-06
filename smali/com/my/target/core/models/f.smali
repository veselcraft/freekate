.class public final Lcom/my/target/core/models/f;
.super Ljava/lang/Object;
.source "AudioParams.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0xa

    iput v0, p0, Lcom/my/target/core/models/f;->a:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/my/target/core/models/f;->b:I

    .line 13
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/my/target/core/models/f;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 17
    iput p1, p0, Lcom/my/target/core/models/f;->a:I

    .line 18
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/my/target/core/models/f;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/my/target/core/models/f;->b:I

    .line 33
    return-void
.end method

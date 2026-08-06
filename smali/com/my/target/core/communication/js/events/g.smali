.class public final Lcom/my/target/core/communication/js/events/g;
.super Lcom/my/target/core/communication/js/events/a;
.source "JSExpandEvent.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    const-string v0, "onExpand"

    invoke-direct {p0, v0}, Lcom/my/target/core/communication/js/events/a;-><init>(Ljava/lang/String;)V

    .line 21
    iput v1, p0, Lcom/my/target/core/communication/js/events/g;->a:I

    .line 22
    iput v1, p0, Lcom/my/target/core/communication/js/events/g;->b:I

    .line 43
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "onExpand"

    invoke-direct {p0, v0}, Lcom/my/target/core/communication/js/events/a;-><init>(Ljava/lang/String;)V

    .line 21
    iput v1, p0, Lcom/my/target/core/communication/js/events/g;->a:I

    .line 22
    iput v1, p0, Lcom/my/target/core/communication/js/events/g;->b:I

    .line 48
    iput p1, p0, Lcom/my/target/core/communication/js/events/g;->a:I

    .line 49
    iput p2, p0, Lcom/my/target/core/communication/js/events/g;->b:I

    .line 50
    return-void
.end method

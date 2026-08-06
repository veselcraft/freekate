.class public Lcom/inmobi/rendering/mraid/b;
.super Ljava/lang/Object;
.source "Dimensions.java"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->a:I

    .line 12
    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->b:I

    .line 13
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->c:I

    .line 14
    const/16 v0, 0xf0

    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->d:I

    .line 15
    return-void
.end method

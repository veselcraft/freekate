.class public final Lcom/flurry/sdk/en;
.super Lcom/flurry/sdk/ep;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 22
    invoke-static {p1, p2}, Lcom/flurry/sdk/en;->a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ep;-><init>(Lcom/flurry/sdk/eq;)V

    .line 23
    iput p2, p0, Lcom/flurry/sdk/en;->a:I

    return-void
.end method

.method private static a(Ljava/lang/String;I)Lcom/flurry/sdk/eq;
    .locals 0

    .line 32
    invoke-static {p0, p1}, Lcom/flurry/sdk/en;->b(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 33
    invoke-static {p0}, Lcom/flurry/sdk/eo;->a(Ljava/lang/String;)Lcom/flurry/sdk/eq;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 0

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

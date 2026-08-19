.class public Lcom/flurry/sdk/eb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/flurry/sdk/eb;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/eb;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)I
    .locals 5

    const v0, 0x7fffffff

    if-eqz p1, :cond_2

    .line 37
    instance-of v1, p1, Lcom/flurry/sdk/ec;

    if-eqz v1, :cond_0

    .line 38
    check-cast p1, Lcom/flurry/sdk/ec;

    .line 39
    invoke-virtual {p1}, Lcom/flurry/sdk/ec;->a()Ljava/lang/Runnable;

    move-result-object p1

    check-cast p1, Lcom/flurry/sdk/fd;

    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/flurry/sdk/fd;->i()I

    move-result p1

    move v0, p1

    goto :goto_0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/flurry/sdk/fd;

    if-eqz v1, :cond_1

    .line 44
    check-cast p1, Lcom/flurry/sdk/fd;

    invoke-virtual {p1}, Lcom/flurry/sdk/fd;->i()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    .line 46
    sget-object v2, Lcom/flurry/sdk/eb;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown runnable class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;)I

    move-result p1

    .line 22
    invoke-direct {p0, p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;)I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/eb;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

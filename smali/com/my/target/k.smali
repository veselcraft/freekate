.class public Lcom/my/target/k;
.super Lcom/my/target/d;
.source "InstreamAudioAdResultProcessor.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/my/target/d;-><init>()V

    return-void
.end method

.method public static h()Lcom/my/target/k;
    .locals 1

    .line 21
    new-instance v0, Lcom/my/target/k;

    invoke-direct {v0}, Lcom/my/target/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/my/target/cv;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cv;
    .locals 0

    .line 17
    check-cast p1, Lcom/my/target/cx;

    invoke-virtual {p0, p1, p2, p3}, Lcom/my/target/k;->a(Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/my/target/cx;Lcom/my/target/a;Landroid/content/Context;)Lcom/my/target/cx;
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/my/target/cx;->bR()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/my/target/da;

    .line 36
    invoke-virtual {p3}, Lcom/my/target/da;->cc()V

    goto :goto_0

    :cond_0
    return-object p1
.end method

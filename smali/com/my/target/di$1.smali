.class Lcom/my/target/di$1;
.super Ljava/lang/Object;
.source "StatHolder.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/my/target/di;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/my/target/dg;Lcom/my/target/dg;)I
    .locals 0

    .line 104
    invoke-virtual {p2}, Lcom/my/target/dg;->cu()F

    move-result p2

    invoke-virtual {p1}, Lcom/my/target/dg;->cu()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 100
    check-cast p1, Lcom/my/target/dg;

    check-cast p2, Lcom/my/target/dg;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/di$1;->a(Lcom/my/target/dg;Lcom/my/target/dg;)I

    move-result p1

    return p1
.end method

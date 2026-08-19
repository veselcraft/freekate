.class Lcom/my/target/fi$c$1;
.super Ljava/lang/Object;
.source "EnvironmentParamsDataProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/my/target/fi$c;)V
    .locals 0

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 559
    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget p2, p2, Landroid/net/wifi/ScanResult;->level:I

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 555
    check-cast p1, Landroid/net/wifi/ScanResult;

    check-cast p2, Landroid/net/wifi/ScanResult;

    invoke-virtual {p0, p1, p2}, Lcom/my/target/fi$c$1;->a(Landroid/net/wifi/ScanResult;Landroid/net/wifi/ScanResult;)I

    move-result p1

    return p1
.end method

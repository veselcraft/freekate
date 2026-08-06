.class public final Lcom/my/target/core/utils/m;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://play.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https://play.google.com"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://market.android.com"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "https://market.android.com"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "market://"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "samsungapps://"

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/utils/m;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 29
    sget-object v2, Lcom/my/target/core/utils/m;->a:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 34
    :cond_0
    return v0

    .line 29
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 50
    const-string v0, "samsungapps://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

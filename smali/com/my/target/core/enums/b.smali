.class public abstract Lcom/my/target/core/enums/b;
.super Ljava/lang/Object;
.source "Sections.java"


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "standard"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "showcase"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "appwall"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fullscreenslider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "nativeads"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "instreamads"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "video"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "instreamaudioads"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "audio"

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/enums/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 28
    sget-object v2, Lcom/my/target/core/enums/b;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 32
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

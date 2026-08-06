.class public final enum Lcom/yandex/metrica/impl/ob/ce;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/ob/ce;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ce;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ce;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/ce;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/yandex/metrica/impl/ob/ce;

    const-string v1, "EXTERNAL"

    const-string v2, "external"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ce;

    .line 5
    new-instance v0, Lcom/yandex/metrica/impl/ob/ce;

    const-string v1, "STORED"

    const-string v2, "stored"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/metrica/impl/ob/ce;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ce;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ce;->a:Lcom/yandex/metrica/impl/ob/ce;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/ob/ce;->d:[Lcom/yandex/metrica/impl/ob/ce;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/yandex/metrica/impl/ob/ce;->c:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ce;
    .locals 5

    .prologue
    .line 18
    invoke-static {}, Lcom/yandex/metrica/impl/ob/ce;->values()[Lcom/yandex/metrica/impl/ob/ce;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 19
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/ce;->c:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    :goto_1
    return-object v0

    .line 18
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 23
    :cond_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ce;->b:Lcom/yandex/metrica/impl/ob/ce;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ce;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/yandex/metrica/impl/ob/ce;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ce;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ce;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/yandex/metrica/impl/ob/ce;->d:[Lcom/yandex/metrica/impl/ob/ce;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ce;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ce;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/ce;->c:Ljava/lang/String;

    return-object v0
.end method

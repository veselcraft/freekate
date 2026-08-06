.class public final enum Lcom/yandex/metrica/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/a;

.field public static final enum b:Lcom/yandex/metrica/a;

.field public static final enum c:Lcom/yandex/metrica/a;

.field private static final synthetic e:[Lcom/yandex/metrica/a;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "PHONE"

    const-string v2, "phone"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "TABLET"

    const-string v2, "tablet"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    new-instance v0, Lcom/yandex/metrica/a;

    const-string v1, "TV"

    const-string v2, "tv"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/metrica/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/a;

    sget-object v1, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/metrica/a;->e:[Lcom/yandex/metrica/a;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/metrica/a;
    .locals 5

    .prologue
    .line 19
    invoke-static {}, Lcom/yandex/metrica/a;->values()[Lcom/yandex/metrica/a;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 20
    iget-object v4, v0, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    :goto_1
    return-object v0

    .line 19
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/yandex/metrica/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/a;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/yandex/metrica/a;->e:[Lcom/yandex/metrica/a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/yandex/metrica/a;->d:Ljava/lang/String;

    return-object v0
.end method

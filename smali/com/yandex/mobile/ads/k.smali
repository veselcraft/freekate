.class final enum Lcom/yandex/mobile/ads/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/k;

.field public static final enum b:Lcom/yandex/mobile/ads/k;

.field public static final enum c:Lcom/yandex/mobile/ads/k;

.field public static final enum d:Lcom/yandex/mobile/ads/k;

.field private static final synthetic e:[Lcom/yandex/mobile/ads/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/yandex/mobile/ads/k;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/k;->a:Lcom/yandex/mobile/ads/k;

    .line 17
    new-instance v0, Lcom/yandex/mobile/ads/k;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/yandex/mobile/ads/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/k;->b:Lcom/yandex/mobile/ads/k;

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/k;

    const-string v1, "SUCCESSFULLY_LOADED"

    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/k;->c:Lcom/yandex/mobile/ads/k;

    .line 19
    new-instance v0, Lcom/yandex/mobile/ads/k;

    const-string v1, "ERRONEOUSLY_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/yandex/mobile/ads/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/mobile/ads/k;

    sget-object v1, Lcom/yandex/mobile/ads/k;->a:Lcom/yandex/mobile/ads/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/mobile/ads/k;->b:Lcom/yandex/mobile/ads/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/k;->c:Lcom/yandex/mobile/ads/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/mobile/ads/k;->e:[Lcom/yandex/mobile/ads/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/k;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/yandex/mobile/ads/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/k;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/k;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yandex/mobile/ads/k;->e:[Lcom/yandex/mobile/ads/k;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/k;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yandex/mobile/ads/k;->c:Lcom/yandex/mobile/ads/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isLoading, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v0, Lcom/yandex/mobile/ads/k;->b:Lcom/yandex/mobile/ads/k;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

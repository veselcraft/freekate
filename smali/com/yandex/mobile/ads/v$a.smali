.class final enum Lcom/yandex/mobile/ads/v$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/v$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/v$a;

.field public static final enum b:Lcom/yandex/mobile/ads/v$a;

.field public static final enum c:Lcom/yandex/mobile/ads/v$a;

.field private static final synthetic d:[Lcom/yandex/mobile/ads/v$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    new-instance v0, Lcom/yandex/mobile/ads/v$a;

    const-string v1, "FIXED"

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/v$a;->a:Lcom/yandex/mobile/ads/v$a;

    .line 162
    new-instance v0, Lcom/yandex/mobile/ads/v$a;

    const-string v1, "FLEXIBLE"

    invoke-direct {v0, v1, v3}, Lcom/yandex/mobile/ads/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/v$a;->b:Lcom/yandex/mobile/ads/v$a;

    .line 164
    new-instance v0, Lcom/yandex/mobile/ads/v$a;

    const-string v1, "SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/yandex/mobile/ads/v$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/mobile/ads/v$a;->c:Lcom/yandex/mobile/ads/v$a;

    .line 158
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/mobile/ads/v$a;

    sget-object v1, Lcom/yandex/mobile/ads/v$a;->a:Lcom/yandex/mobile/ads/v$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/mobile/ads/v$a;->b:Lcom/yandex/mobile/ads/v$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/v$a;->c:Lcom/yandex/mobile/ads/v$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/mobile/ads/v$a;->d:[Lcom/yandex/mobile/ads/v$a;

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
    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/v$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 158
    const-class v0, Lcom/yandex/mobile/ads/v$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/v$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/v$a;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/yandex/mobile/ads/v$a;->d:[Lcom/yandex/mobile/ads/v$a;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/v$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/v$a;

    return-object v0
.end method

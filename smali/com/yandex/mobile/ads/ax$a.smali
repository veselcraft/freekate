.class public final enum Lcom/yandex/mobile/ads/ax$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/ax$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum b:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum c:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum d:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum e:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum f:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum g:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum h:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum i:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum j:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum k:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum l:Lcom/yandex/mobile/ads/ax$a;

.field public static final enum m:Lcom/yandex/mobile/ads/ax$a;

.field private static final synthetic o:[Lcom/yandex/mobile/ads/ax$a;


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "SUCCESS"

    const-string v2, "success"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    .line 44
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "AD_NOT_LOADED"

    const-string v2, "ad_not_loaded"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->b:Lcom/yandex/mobile/ads/ax$a;

    .line 45
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "APPLICATION_INACTIVE"

    const-string v2, "application_inactive"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->c:Lcom/yandex/mobile/ads/ax$a;

    .line 46
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "INCONSISTENT_ASSET_VALUE"

    const-string v2, "inconsistent_asset_value"

    invoke-direct {v0, v1, v7, v2}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->d:Lcom/yandex/mobile/ads/ax$a;

    .line 47
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "NO_AD_VIEW"

    const-string v2, "no_ad_view"

    invoke-direct {v0, v1, v8, v2}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->e:Lcom/yandex/mobile/ads/ax$a;

    .line 48
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "NO_VISIBLE_ADS"

    const/4 v2, 0x5

    const-string v3, "no_visible_ads"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->f:Lcom/yandex/mobile/ads/ax$a;

    .line 49
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "NO_VISIBLE_REQUIRED_ASSETS"

    const/4 v2, 0x6

    const-string v3, "no_visible_required_assets"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->g:Lcom/yandex/mobile/ads/ax$a;

    .line 50
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "NOT_ADDED_TO_HIERARCHY"

    const/4 v2, 0x7

    const-string v3, "not_added_to_hierarchy"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->h:Lcom/yandex/mobile/ads/ax$a;

    .line 51
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "NOT_VISIBLE_FOR_PERCENT"

    const/16 v2, 0x8

    const-string v3, "not_visible_for_percent"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->i:Lcom/yandex/mobile/ads/ax$a;

    .line 52
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "REQUIRED_ASSET_CAN_NOT_BE_VISIBLE"

    const/16 v2, 0x9

    const-string v3, "required_asset_can_not_be_visible"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->j:Lcom/yandex/mobile/ads/ax$a;

    .line 53
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "REQUIRED_ASSET_IS_NOT_SUBVIEW"

    const/16 v2, 0xa

    const-string v3, "required_asset_is_not_subview"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->k:Lcom/yandex/mobile/ads/ax$a;

    .line 54
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "SUPERVIEW_HIDDEN"

    const/16 v2, 0xb

    const-string v3, "superview_hidden"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->l:Lcom/yandex/mobile/ads/ax$a;

    .line 55
    new-instance v0, Lcom/yandex/mobile/ads/ax$a;

    const-string v1, "TOO_SMALL"

    const/16 v2, 0xc

    const-string v3, "too_small"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/ax$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->m:Lcom/yandex/mobile/ads/ax$a;

    .line 42
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/yandex/mobile/ads/ax$a;

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->a:Lcom/yandex/mobile/ads/ax$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->b:Lcom/yandex/mobile/ads/ax$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->c:Lcom/yandex/mobile/ads/ax$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->d:Lcom/yandex/mobile/ads/ax$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yandex/mobile/ads/ax$a;->e:Lcom/yandex/mobile/ads/ax$a;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->f:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->g:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->h:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->i:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->j:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->k:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->l:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yandex/mobile/ads/ax$a;->m:Lcom/yandex/mobile/ads/ax$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yandex/mobile/ads/ax$a;->o:[Lcom/yandex/mobile/ads/ax$a;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-object p3, p0, Lcom/yandex/mobile/ads/ax$a;->n:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/ax$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/yandex/mobile/ads/ax$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/ax$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/ax$a;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->o:[Lcom/yandex/mobile/ads/ax$a;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/ax$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/ax$a;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/ax$a;->n:Ljava/lang/String;

    return-object v0
.end method

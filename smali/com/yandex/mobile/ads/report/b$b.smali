.class public final enum Lcom/yandex/mobile/ads/report/b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/report/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/report/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum b:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum c:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum d:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum e:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum f:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum g:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum h:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum i:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum j:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum k:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum l:Lcom/yandex/mobile/ads/report/b$b;

.field public static final enum m:Lcom/yandex/mobile/ads/report/b$b;

.field private static final synthetic o:[Lcom/yandex/mobile/ads/report/b$b;


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

    .line 64
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "REQUEST"

    const-string v2, "ad_request"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->a:Lcom/yandex/mobile/ads/report/b$b;

    .line 65
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "RESPONSE"

    const-string v2, "ad_response"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->b:Lcom/yandex/mobile/ads/report/b$b;

    .line 66
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "BLOCKS_INFO_REQUEST"

    const-string v2, "blocks_info_request"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->c:Lcom/yandex/mobile/ads/report/b$b;

    .line 67
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "BLOCKS_INFO_RESPONSE"

    const-string v2, "blocks_info_response"

    invoke-direct {v0, v1, v7, v2}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->d:Lcom/yandex/mobile/ads/report/b$b;

    .line 68
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "VAST_REQUEST"

    const-string v2, "vast_request"

    invoke-direct {v0, v1, v8, v2}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->e:Lcom/yandex/mobile/ads/report/b$b;

    .line 69
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "VAST_RESPONSE"

    const/4 v2, 0x5

    const-string v3, "vast_response"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->f:Lcom/yandex/mobile/ads/report/b$b;

    .line 70
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "IMPRESSION_TRACKING_SUCCESS"

    const/4 v2, 0x6

    const-string v3, "impression_tracking_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->g:Lcom/yandex/mobile/ads/report/b$b;

    .line 71
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "IMPRESSION_TRACKING_FAILURE"

    const/4 v2, 0x7

    const-string v3, "impression_tracking_failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->h:Lcom/yandex/mobile/ads/report/b$b;

    .line 72
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "AD_UNIT_IMPRESSION_TRACKING_SUCCESS"

    const/16 v2, 0x8

    const-string v3, "ad_unit_impression_tracking_success"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->i:Lcom/yandex/mobile/ads/report/b$b;

    .line 73
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "AD_UNIT_IMPRESSION_TRACKING_FAILURE"

    const/16 v2, 0x9

    const-string v3, "ad_unit_impression_tracking_failure"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->j:Lcom/yandex/mobile/ads/report/b$b;

    .line 74
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "CLICK"

    const/16 v2, 0xa

    const-string v3, "click"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->k:Lcom/yandex/mobile/ads/report/b$b;

    .line 75
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "REQUIRED_ASSET_MISSING"

    const/16 v2, 0xb

    const-string v3, "required_asset_missing"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->l:Lcom/yandex/mobile/ads/report/b$b;

    .line 76
    new-instance v0, Lcom/yandex/mobile/ads/report/b$b;

    const-string v1, "RETURNED_TO_APP"

    const/16 v2, 0xc

    const-string v3, "returned_to_app"

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/report/b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->m:Lcom/yandex/mobile/ads/report/b$b;

    .line 63
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/yandex/mobile/ads/report/b$b;

    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->a:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->b:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->c:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->d:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v1, v0, v7

    sget-object v1, Lcom/yandex/mobile/ads/report/b$b;->e:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->f:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->g:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->h:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->i:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->j:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->k:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->l:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/yandex/mobile/ads/report/b$b;->m:Lcom/yandex/mobile/ads/report/b$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/yandex/mobile/ads/report/b$b;->o:[Lcom/yandex/mobile/ads/report/b$b;

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
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/yandex/mobile/ads/report/b$b;->n:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/report/b$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/yandex/mobile/ads/report/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/report/b$b;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/report/b$b;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/yandex/mobile/ads/report/b$b;->o:[Lcom/yandex/mobile/ads/report/b$b;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/report/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/report/b$b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yandex/mobile/ads/report/b$b;->n:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
.super Ljava/lang/Enum;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/sdk/InMobiSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HouseHoldIncome"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum ABOVE_USD_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BELOW_USD_5K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_100K_AND_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_10K_AND_15K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_15K_AND_20K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_20K_AND_25K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_25K_AND_50K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_50K_AND_75K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_5K_AND_10K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

.field public static final enum BETWEEN_USD_75K_AND_100K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 122
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BELOW_USD_5K"

    const-string v2, "belowusd5k"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BELOW_USD_5K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 123
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_5K_AND_10K"

    const-string v2, "betweenusd5kand10k"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_5K_AND_10K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 124
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_10K_AND_15K"

    const-string v2, "betweenusd10kand15k"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_10K_AND_15K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 125
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_15K_AND_20K"

    const-string v2, "betweenusd15kand20k"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_15K_AND_20K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 126
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_20K_AND_25K"

    const-string v2, "betweenusd20kand25k"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_20K_AND_25K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 127
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_25K_AND_50K"

    const/4 v2, 0x5

    const-string v3, "betweenusd25kand50k"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_25K_AND_50K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 128
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_50K_AND_75K"

    const/4 v2, 0x6

    const-string v3, "betweenusd50kand75k"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_50K_AND_75K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 129
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_75K_AND_100K"

    const/4 v2, 0x7

    const-string v3, "betweenusd75kand100k"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_75K_AND_100K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 130
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "BETWEEN_USD_100K_AND_150K"

    const/16 v2, 0x8

    const-string v3, "betweenusd100kand150k"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_100K_AND_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 131
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    const-string v1, "ABOVE_USD_150K"

    const/16 v2, 0x9

    const-string v3, "aboveusd150k"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->ABOVE_USD_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    .line 121
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BELOW_USD_5K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_5K_AND_10K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_10K_AND_15K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_15K_AND_20K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_20K_AND_25K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_25K_AND_50K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_50K_AND_75K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_75K_AND_100K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->BETWEEN_USD_100K_AND_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->ABOVE_USD_150K:Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

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
    .line 135
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 136
    iput-object p3, p0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->a:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
    .locals 1

    .prologue
    .line 121
    const-class v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    invoke-virtual {v0}, [Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/sdk/InMobiSdk$HouseHoldIncome;->a:Ljava/lang/String;

    return-object v0
.end method

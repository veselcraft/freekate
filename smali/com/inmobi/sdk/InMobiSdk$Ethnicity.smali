.class public final enum Lcom/inmobi/sdk/InMobiSdk$Ethnicity;
.super Ljava/lang/Enum;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/sdk/InMobiSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ethnicity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/sdk/InMobiSdk$Ethnicity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

.field public static final enum AFRICAN_AMERICAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

.field public static final enum ASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

.field public static final enum CAUCASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

.field public static final enum HISPANIC:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

.field public static final enum OTHER:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    const-string v1, "AFRICAN_AMERICAN"

    const-string v2, "africanamerican"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->AFRICAN_AMERICAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 51
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    const-string v1, "ASIAN"

    const-string v2, "asian"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->ASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 52
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    const-string v1, "CAUCASIAN"

    const-string v2, "caucasian"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->CAUCASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 53
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    const-string v1, "HISPANIC"

    const-string v2, "hispanic"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->HISPANIC:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 54
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    const-string v1, "OTHER"

    const-string v2, "other"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->OTHER:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->AFRICAN_AMERICAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->ASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->CAUCASIAN:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->HISPANIC:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->OTHER:Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 59
    iput-object p3, p0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->a:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$Ethnicity;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/sdk/InMobiSdk$Ethnicity;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    invoke-virtual {v0}, [Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/sdk/InMobiSdk$Ethnicity;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inmobi/sdk/InMobiSdk$Ethnicity;->a:Ljava/lang/String;

    return-object v0
.end method

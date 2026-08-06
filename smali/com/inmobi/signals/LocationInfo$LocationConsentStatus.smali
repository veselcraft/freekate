.class public final enum Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
.super Ljava/lang/Enum;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocationConsentStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

.field public static final enum AUTHORISED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

.field public static final enum DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

.field public static final enum UNDETERMINED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    const-string v1, "AUTHORISED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->AUTHORISED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    .line 46
    new-instance v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    const-string v1, "DENIED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    .line 47
    new-instance v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    const-string v1, "UNDETERMINED"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->UNDETERMINED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    sget-object v1, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->AUTHORISED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->DENIED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->UNDETERMINED:Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->$VALUES:[Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->$VALUES:[Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    invoke-virtual {v0}, [Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/signals/LocationInfo$LocationConsentStatus;

    return-object v0
.end method

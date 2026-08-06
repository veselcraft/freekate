.class public final enum Lcom/yandex/metrica/IIdentifierCallback$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/IIdentifierCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/IIdentifierCallback$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/metrica/IIdentifierCallback$Reason;

.field public static final enum INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

.field public static final enum NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

.field public static final enum UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/IIdentifierCallback$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    new-instance v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/yandex/metrica/IIdentifierCallback$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    new-instance v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v4}, Lcom/yandex/metrica/IIdentifierCallback$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/IIdentifierCallback$Reason;

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->UNKNOWN:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->NETWORK:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/IIdentifierCallback$Reason;->INVALID_RESPONSE:Lcom/yandex/metrica/IIdentifierCallback$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;->$VALUES:[Lcom/yandex/metrica/IIdentifierCallback$Reason;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/IIdentifierCallback$Reason;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/IIdentifierCallback$Reason;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/yandex/metrica/IIdentifierCallback$Reason;->$VALUES:[Lcom/yandex/metrica/IIdentifierCallback$Reason;

    invoke-virtual {v0}, [Lcom/yandex/metrica/IIdentifierCallback$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/IIdentifierCallback$Reason;

    return-object v0
.end method

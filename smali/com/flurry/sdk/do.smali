.class public final enum Lcom/flurry/sdk/do;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/flurry/sdk/do;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/do;

.field public static final enum b:Lcom/flurry/sdk/do;

.field public static final enum c:Lcom/flurry/sdk/do;

.field private static final synthetic f:[Lcom/flurry/sdk/do;


# instance fields
.field public final d:I

.field public final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 5
    new-instance v0, Lcom/flurry/sdk/do;

    const-string v1, "PhoneId"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/flurry/sdk/do;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/flurry/sdk/do;->a:Lcom/flurry/sdk/do;

    .line 6
    new-instance v1, Lcom/flurry/sdk/do;

    const-string v4, "Sha1Imei"

    const/4 v5, 0x5

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/flurry/sdk/do;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/flurry/sdk/do;->b:Lcom/flurry/sdk/do;

    .line 7
    new-instance v4, Lcom/flurry/sdk/do;

    const-string v5, "AndroidAdvertisingId"

    const/4 v6, 0x2

    const/16 v7, 0xd

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/flurry/sdk/do;-><init>(Ljava/lang/String;IIZ)V

    sput-object v4, Lcom/flurry/sdk/do;->c:Lcom/flurry/sdk/do;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/flurry/sdk/do;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    .line 3
    sput-object v5, Lcom/flurry/sdk/do;->f:[Lcom/flurry/sdk/do;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/flurry/sdk/do;->d:I

    .line 14
    iput-boolean p4, p0, Lcom/flurry/sdk/do;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/do;
    .locals 1

    .line 3
    const-class v0, Lcom/flurry/sdk/do;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/flurry/sdk/do;

    return-object p0
.end method

.method public static values()[Lcom/flurry/sdk/do;
    .locals 1

    .line 3
    sget-object v0, Lcom/flurry/sdk/do;->f:[Lcom/flurry/sdk/do;

    invoke-virtual {v0}, [Lcom/flurry/sdk/do;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/do;

    return-object v0
.end method

.class public final enum Lcom/inmobi/sdk/InMobiSdk$ImIdType;
.super Ljava/lang/Enum;
.source "InMobiSdk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/sdk/InMobiSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/sdk/InMobiSdk$ImIdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/sdk/InMobiSdk$ImIdType;

.field public static final enum LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

.field public static final enum SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    const-string v1, "LOGIN"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/sdk/InMobiSdk$ImIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    .line 46
    new-instance v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    const-string v1, "SESSION"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/sdk/InMobiSdk$ImIdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->LOGIN:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->SESSION:Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$ImIdType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/sdk/InMobiSdk$ImIdType;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/sdk/InMobiSdk$ImIdType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/inmobi/sdk/InMobiSdk$ImIdType;->$VALUES:[Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    invoke-virtual {v0}, [Lcom/inmobi/sdk/InMobiSdk$ImIdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/sdk/InMobiSdk$ImIdType;

    return-object v0
.end method

.class public final enum Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;
.super Ljava/lang/Enum;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

.field public static final enum EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

.field public static final enum INCREMENTAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

.field public static final enum NONE:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    const-string v1, "INCREMENTAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->INCREMENTAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    .line 16
    new-instance v1, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    const-string v3, "EXPONENTIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->EXPONENTIAL:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    .line 20
    new-instance v3, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->NONE:Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    const/4 v5, 0x3

    new-array v5, v5, [Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 6
    sput-object v5, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;
    .locals 1

    .line 6
    const-class v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    return-object p0
.end method

.method public static values()[Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;
    .locals 1

    .line 6
    sget-object v0, Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->$VALUES:[Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    invoke-virtual {v0}, [Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfr/nicolaspomepuy/discreetapprate/RetryPolicy;

    return-object v0
.end method

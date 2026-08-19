.class final enum Lcom/perm/kate/data/Page$PageStatus;
.super Ljava/lang/Enum;
.source "PageCommentList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/data/Page;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PageStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/data/Page$PageStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/data/Page$PageStatus;

.field public static final enum EMPTY:Lcom/perm/kate/data/Page$PageStatus;

.field public static final enum FULL:Lcom/perm/kate/data/Page$PageStatus;

.field public static final enum LOADING:Lcom/perm/kate/data/Page$PageStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 312
    new-instance v0, Lcom/perm/kate/data/Page$PageStatus;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    new-instance v1, Lcom/perm/kate/data/Page$PageStatus;

    const-string v3, "LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/data/Page$PageStatus;->LOADING:Lcom/perm/kate/data/Page$PageStatus;

    new-instance v3, Lcom/perm/kate/data/Page$PageStatus;

    const-string v5, "FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/perm/kate/data/Page$PageStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 311
    sput-object v5, Lcom/perm/kate/data/Page$PageStatus;->$VALUES:[Lcom/perm/kate/data/Page$PageStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/data/Page$PageStatus;
    .locals 1

    .line 311
    const-class v0, Lcom/perm/kate/data/Page$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/data/Page$PageStatus;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/data/Page$PageStatus;
    .locals 1

    .line 311
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->$VALUES:[Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v0}, [Lcom/perm/kate/data/Page$PageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/data/Page$PageStatus;

    return-object v0
.end method

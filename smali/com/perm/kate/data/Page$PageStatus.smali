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
        "Ljava/lang/Enum",
        "<",
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    new-instance v0, Lcom/perm/kate/data/Page$PageStatus;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    new-instance v0, Lcom/perm/kate/data/Page$PageStatus;

    const-string v1, "LOADING"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/data/Page$PageStatus;->LOADING:Lcom/perm/kate/data/Page$PageStatus;

    new-instance v0, Lcom/perm/kate/data/Page$PageStatus;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/data/Page$PageStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    .line 193
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/perm/kate/data/Page$PageStatus;

    sget-object v1, Lcom/perm/kate/data/Page$PageStatus;->EMPTY:Lcom/perm/kate/data/Page$PageStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/data/Page$PageStatus;->LOADING:Lcom/perm/kate/data/Page$PageStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/data/Page$PageStatus;->FULL:Lcom/perm/kate/data/Page$PageStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/perm/kate/data/Page$PageStatus;->$VALUES:[Lcom/perm/kate/data/Page$PageStatus;

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
    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/data/Page$PageStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 193
    const-class v0, Lcom/perm/kate/data/Page$PageStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/Page$PageStatus;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/data/Page$PageStatus;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/perm/kate/data/Page$PageStatus;->$VALUES:[Lcom/perm/kate/data/Page$PageStatus;

    invoke-virtual {v0}, [Lcom/perm/kate/data/Page$PageStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/data/Page$PageStatus;

    return-object v0
.end method

.class final enum Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
.super Ljava/lang/Enum;
.source "SmilePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

.field public static final enum RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

.field public static final enum SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

.field public static final enum STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const-string v1, "STICKERS"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    new-instance v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const-string v1, "SMILES"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    new-instance v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const-string v1, "RECENT_SMILES"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->STICKERS:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->RECENT_SMILES:Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->$VALUES:[Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

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
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    const-class v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->$VALUES:[Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    invoke-virtual {v0}, [Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/smile/SmilePagerAdapter$SmilePage$Type;

    return-object v0
.end method

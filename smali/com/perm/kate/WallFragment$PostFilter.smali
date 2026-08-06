.class final enum Lcom/perm/kate/WallFragment$PostFilter;
.super Ljava/lang/Enum;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PostFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/WallFragment$PostFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum ALL:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum OTHERS:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum OWNER:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "OWNER"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->OTHERS:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "POSTPONED"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "SUGGESTS"

    invoke-direct {v0, v1, v6}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/perm/kate/WallFragment$PostFilter;

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->OTHERS:Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v1, v0, v6

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->$VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/WallFragment$PostFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/perm/kate/WallFragment$PostFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/WallFragment$PostFilter;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/WallFragment$PostFilter;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->$VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v0}, [Lcom/perm/kate/WallFragment$PostFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/WallFragment$PostFilter;

    return-object v0
.end method

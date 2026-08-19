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
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/WallFragment$PostFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum ALL:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum ARCHIVED:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum OTHERS:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum OWNER:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

.field public static final enum SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 47
    new-instance v0, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/WallFragment$PostFilter;->ALL:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v1, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v3, "OWNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/WallFragment$PostFilter;->OWNER:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v3, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v5, "OTHERS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/WallFragment$PostFilter;->OTHERS:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v5, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v7, "POSTPONED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/WallFragment$PostFilter;->POSTPONED:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v7, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v9, "SUGGESTS"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perm/kate/WallFragment$PostFilter;->SUGGESTS:Lcom/perm/kate/WallFragment$PostFilter;

    new-instance v9, Lcom/perm/kate/WallFragment$PostFilter;

    const-string v11, "ARCHIVED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/perm/kate/WallFragment$PostFilter;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/perm/kate/WallFragment$PostFilter;->ARCHIVED:Lcom/perm/kate/WallFragment$PostFilter;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/perm/kate/WallFragment$PostFilter;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/perm/kate/WallFragment$PostFilter;->$VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/WallFragment$PostFilter;
    .locals 1

    .line 47
    const-class v0, Lcom/perm/kate/WallFragment$PostFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/WallFragment$PostFilter;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/WallFragment$PostFilter;
    .locals 1

    .line 47
    sget-object v0, Lcom/perm/kate/WallFragment$PostFilter;->$VALUES:[Lcom/perm/kate/WallFragment$PostFilter;

    invoke-virtual {v0}, [Lcom/perm/kate/WallFragment$PostFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/WallFragment$PostFilter;

    return-object v0
.end method

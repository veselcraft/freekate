.class public final enum Lcom/perm/kate/links/VkLinkType;
.super Ljava/lang/Enum;
.source "VkLinkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/links/VkLinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/links/VkLinkType;

.field public static final enum ALBUM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum ALBUMS:Lcom/perm/kate/links/VkLinkType;

.field public static final enum DIALOG:Lcom/perm/kate/links/VkLinkType;

.field public static final enum DOMAIN:Lcom/perm/kate/links/VkLinkType;

.field public static final enum EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

.field public static final enum GROUP:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MAIL:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PAGE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PHOTO:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PROFILE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum TOPIC:Lcom/perm/kate/links/VkLinkType;

.field public static final enum TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

.field public static final enum VIDEO:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL_POST:Lcom/perm/kate/links/VkLinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->PHOTO:Lcom/perm/kate/links/VkLinkType;

    .line 5
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "ALBUM"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    .line 6
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v5}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    .line 7
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "GROUP"

    invoke-direct {v0, v1, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->GROUP:Lcom/perm/kate/links/VkLinkType;

    .line 8
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "TOPIC"

    invoke-direct {v0, v1, v7}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->TOPIC:Lcom/perm/kate/links/VkLinkType;

    .line 9
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "DOMAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    .line 10
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "WALL_POST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->WALL_POST:Lcom/perm/kate/links/VkLinkType;

    .line 11
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "PAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    .line 12
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "ALBUMS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->ALBUMS:Lcom/perm/kate/links/VkLinkType;

    .line 13
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "DIALOG"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->DIALOG:Lcom/perm/kate/links/VkLinkType;

    .line 14
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "EXTERNAL_LINK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

    .line 15
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "WALL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->WALL:Lcom/perm/kate/links/VkLinkType;

    .line 16
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "MAIL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    .line 17
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "VIDEO"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->VIDEO:Lcom/perm/kate/links/VkLinkType;

    .line 18
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "WALL_COMMENT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

    .line 19
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "TOPIC_COMMENT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    .line 20
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "MARKET_ITEM"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

    .line 3
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/perm/kate/links/VkLinkType;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PHOTO:Lcom/perm/kate/links/VkLinkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->GROUP:Lcom/perm/kate/links/VkLinkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->TOPIC:Lcom/perm/kate/links/VkLinkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL_POST:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->ALBUMS:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->DIALOG:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->VIDEO:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/perm/kate/links/VkLinkType;->MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->$VALUES:[Lcom/perm/kate/links/VkLinkType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/links/VkLinkType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/perm/kate/links/VkLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/links/VkLinkType;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/links/VkLinkType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/perm/kate/links/VkLinkType;->$VALUES:[Lcom/perm/kate/links/VkLinkType;

    invoke-virtual {v0}, [Lcom/perm/kate/links/VkLinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/links/VkLinkType;

    return-object v0
.end method

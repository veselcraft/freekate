.class public final enum Lcom/perm/kate/links/VkLinkType;
.super Ljava/lang/Enum;
.source "VkLinkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/links/VkLinkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/links/VkLinkType;

.field public static final enum ALBUM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum ALBUMS:Lcom/perm/kate/links/VkLinkType;

.field public static final enum ARTICLE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum AUDIO_PLAYLIST:Lcom/perm/kate/links/VkLinkType;

.field public static final enum CHAT_INVITE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum DIALOG:Lcom/perm/kate/links/VkLinkType;

.field public static final enum DOMAIN:Lcom/perm/kate/links/VkLinkType;

.field public static final enum EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

.field public static final enum GROUP:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MAIL:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MARKET:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MARKET_ALBUM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PAGE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PHOTO:Lcom/perm/kate/links/VkLinkType;

.field public static final enum POLL:Lcom/perm/kate/links/VkLinkType;

.field public static final enum PROFILE:Lcom/perm/kate/links/VkLinkType;

.field public static final enum STORY:Lcom/perm/kate/links/VkLinkType;

.field public static final enum TOPIC:Lcom/perm/kate/links/VkLinkType;

.field public static final enum TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

.field public static final enum VIDEO:Lcom/perm/kate/links/VkLinkType;

.field public static final enum VIDEO_ALBUM:Lcom/perm/kate/links/VkLinkType;

.field public static final enum VKCC:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

.field public static final enum WALL_POST:Lcom/perm/kate/links/VkLinkType;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 4
    new-instance v0, Lcom/perm/kate/links/VkLinkType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/links/VkLinkType;->PHOTO:Lcom/perm/kate/links/VkLinkType;

    .line 5
    new-instance v1, Lcom/perm/kate/links/VkLinkType;

    const-string v3, "ALBUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/links/VkLinkType;->ALBUM:Lcom/perm/kate/links/VkLinkType;

    .line 6
    new-instance v3, Lcom/perm/kate/links/VkLinkType;

    const-string v5, "PROFILE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/links/VkLinkType;->PROFILE:Lcom/perm/kate/links/VkLinkType;

    .line 7
    new-instance v5, Lcom/perm/kate/links/VkLinkType;

    const-string v7, "GROUP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/perm/kate/links/VkLinkType;->GROUP:Lcom/perm/kate/links/VkLinkType;

    .line 8
    new-instance v7, Lcom/perm/kate/links/VkLinkType;

    const-string v9, "TOPIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/perm/kate/links/VkLinkType;->TOPIC:Lcom/perm/kate/links/VkLinkType;

    .line 9
    new-instance v9, Lcom/perm/kate/links/VkLinkType;

    const-string v11, "DOMAIN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/perm/kate/links/VkLinkType;->DOMAIN:Lcom/perm/kate/links/VkLinkType;

    .line 10
    new-instance v11, Lcom/perm/kate/links/VkLinkType;

    const-string v13, "WALL_POST"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/perm/kate/links/VkLinkType;->WALL_POST:Lcom/perm/kate/links/VkLinkType;

    .line 11
    new-instance v13, Lcom/perm/kate/links/VkLinkType;

    const-string v15, "PAGE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/perm/kate/links/VkLinkType;->PAGE:Lcom/perm/kate/links/VkLinkType;

    .line 12
    new-instance v15, Lcom/perm/kate/links/VkLinkType;

    const-string v14, "ALBUMS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/perm/kate/links/VkLinkType;->ALBUMS:Lcom/perm/kate/links/VkLinkType;

    .line 13
    new-instance v14, Lcom/perm/kate/links/VkLinkType;

    const-string v12, "DIALOG"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/perm/kate/links/VkLinkType;->DIALOG:Lcom/perm/kate/links/VkLinkType;

    .line 14
    new-instance v12, Lcom/perm/kate/links/VkLinkType;

    const-string v10, "EXTERNAL_LINK"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/perm/kate/links/VkLinkType;->EXTERNAL_LINK:Lcom/perm/kate/links/VkLinkType;

    .line 15
    new-instance v10, Lcom/perm/kate/links/VkLinkType;

    const-string v8, "WALL"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/perm/kate/links/VkLinkType;->WALL:Lcom/perm/kate/links/VkLinkType;

    .line 16
    new-instance v8, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "MAIL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/perm/kate/links/VkLinkType;->MAIL:Lcom/perm/kate/links/VkLinkType;

    .line 17
    new-instance v6, Lcom/perm/kate/links/VkLinkType;

    const-string v4, "VIDEO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perm/kate/links/VkLinkType;->VIDEO:Lcom/perm/kate/links/VkLinkType;

    .line 18
    new-instance v4, Lcom/perm/kate/links/VkLinkType;

    const-string v2, "WALL_COMMENT"

    move-object/from16 v16, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perm/kate/links/VkLinkType;->WALL_COMMENT:Lcom/perm/kate/links/VkLinkType;

    .line 19
    new-instance v2, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "TOPIC_COMMENT"

    move-object/from16 v17, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    .line 20
    new-instance v6, Lcom/perm/kate/links/VkLinkType;

    const-string v4, "AUDIO_PLAYLIST"

    move-object/from16 v18, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perm/kate/links/VkLinkType;->AUDIO_PLAYLIST:Lcom/perm/kate/links/VkLinkType;

    .line 21
    new-instance v4, Lcom/perm/kate/links/VkLinkType;

    const-string v2, "ARTICLE"

    move-object/from16 v19, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perm/kate/links/VkLinkType;->ARTICLE:Lcom/perm/kate/links/VkLinkType;

    .line 22
    new-instance v2, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "MARKET_ITEM"

    move-object/from16 v20, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perm/kate/links/VkLinkType;->MARKET_ITEM:Lcom/perm/kate/links/VkLinkType;

    .line 23
    new-instance v6, Lcom/perm/kate/links/VkLinkType;

    const-string v4, "POLL"

    move-object/from16 v21, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perm/kate/links/VkLinkType;->POLL:Lcom/perm/kate/links/VkLinkType;

    .line 24
    new-instance v4, Lcom/perm/kate/links/VkLinkType;

    const-string v2, "CHAT_INVITE"

    move-object/from16 v22, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perm/kate/links/VkLinkType;->CHAT_INVITE:Lcom/perm/kate/links/VkLinkType;

    .line 25
    new-instance v2, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "VKCC"

    move-object/from16 v23, v4

    const/16 v4, 0x15

    invoke-direct {v2, v6, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perm/kate/links/VkLinkType;->VKCC:Lcom/perm/kate/links/VkLinkType;

    .line 26
    new-instance v6, Lcom/perm/kate/links/VkLinkType;

    const-string v4, "MARKET_ALBUM"

    move-object/from16 v24, v2

    const/16 v2, 0x16

    invoke-direct {v6, v4, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/perm/kate/links/VkLinkType;->MARKET_ALBUM:Lcom/perm/kate/links/VkLinkType;

    .line 27
    new-instance v2, Lcom/perm/kate/links/VkLinkType;

    const-string v4, "MARKET"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v2, v4, v6}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perm/kate/links/VkLinkType;->MARKET:Lcom/perm/kate/links/VkLinkType;

    .line 28
    new-instance v4, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "VIDEO_ALBUM"

    move-object/from16 v26, v2

    const/16 v2, 0x18

    invoke-direct {v4, v6, v2}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perm/kate/links/VkLinkType;->VIDEO_ALBUM:Lcom/perm/kate/links/VkLinkType;

    .line 29
    new-instance v2, Lcom/perm/kate/links/VkLinkType;

    const-string v6, "STORY"

    move-object/from16 v27, v4

    const/16 v4, 0x19

    invoke-direct {v2, v6, v4}, Lcom/perm/kate/links/VkLinkType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perm/kate/links/VkLinkType;->STORY:Lcom/perm/kate/links/VkLinkType;

    const/16 v4, 0x1a

    new-array v4, v4, [Lcom/perm/kate/links/VkLinkType;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v16, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v19, v4, v0

    const/16 v0, 0x11

    aput-object v20, v4, v0

    const/16 v0, 0x12

    aput-object v21, v4, v0

    const/16 v0, 0x13

    aput-object v22, v4, v0

    const/16 v0, 0x14

    aput-object v23, v4, v0

    const/16 v0, 0x15

    aput-object v24, v4, v0

    const/16 v0, 0x16

    aput-object v25, v4, v0

    const/16 v0, 0x17

    aput-object v26, v4, v0

    const/16 v0, 0x18

    aput-object v27, v4, v0

    const/16 v0, 0x19

    aput-object v2, v4, v0

    .line 3
    sput-object v4, Lcom/perm/kate/links/VkLinkType;->$VALUES:[Lcom/perm/kate/links/VkLinkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/links/VkLinkType;
    .locals 1

    .line 3
    const-class v0, Lcom/perm/kate/links/VkLinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/links/VkLinkType;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/links/VkLinkType;
    .locals 1

    .line 3
    sget-object v0, Lcom/perm/kate/links/VkLinkType;->$VALUES:[Lcom/perm/kate/links/VkLinkType;

    invoke-virtual {v0}, [Lcom/perm/kate/links/VkLinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/links/VkLinkType;

    return-object v0
.end method

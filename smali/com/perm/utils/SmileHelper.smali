.class public abstract Lcom/perm/utils/SmileHelper;
.super Ljava/lang/Object;
.source "SmileHelper.java"


# static fields
.field private static beginnings:[C

.field public static blind:Ljava/lang/Boolean;

.field static final cache:Landroidx/collection/LruCache;

.field public static final codes:[Ljava/lang/String;

.field private static is_riva:Ljava/lang/Boolean;

.field static max_smiles:I

.field public static pages:[I

.field public static prefix:Ljava/lang/String;

.field private static recent_smiles:Ljava/util/ArrayList;

.field public static final resources:[Ljava/lang/String;

.field static size:I

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 37
    sput-object v1, Lcom/perm/utils/SmileHelper;->pages:[I

    const/16 v2, 0x26e

    new-array v3, v2, [Ljava/lang/String;

    .line 38
    sput-object v3, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    .line 39
    sput-object v4, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/String;

    .line 40
    sput-object v5, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    .line 49
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lt v6, v7, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    const/16 v11, 0x15

    if-lt v6, v11, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    const-string v12, "\ud83d\ude04"

    aput-object v12, v3, v8

    const-string v12, "smile135"

    aput-object v12, v4, v8

    const-string v12, "\u0441\u043c\u0435\u0445"

    aput-object v12, v5, v8

    const-string v13, "\ud83d\ude03"

    aput-object v13, v3, v9

    const-string v13, "smile02"

    aput-object v13, v4, v9

    const-string v13, "\u0443\u043b\u044b\u0431\u043a\u0430 \u0441 \u043e\u0442\u043a\u0440\u044b\u0442\u044b\u043c \u0440\u0442\u043e\u043c"

    aput-object v13, v5, v9

    const-string v13, "\ud83d\ude00"

    const/4 v14, 0x2

    aput-object v13, v3, v14

    const-string v13, "smile149"

    aput-object v13, v4, v14

    aput-object v12, v5, v14

    const-string v12, "\ud83d\ude0a"

    const/4 v13, 0x3

    aput-object v12, v3, v13

    const-string v12, "smile01"

    aput-object v12, v4, v13

    const-string v12, "\u0441 \u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u043c\u0438\u0441\u044f \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v12, v5, v13

    const-string v12, "\u263a"

    const/4 v15, 0x4

    aput-object v12, v3, v15

    const-string v12, "smile148"

    aput-object v12, v4, v15

    const-string v12, "\u0443\u043b\u044b\u0431\u043a\u0430"

    aput-object v12, v5, v15

    const-string v16, "\ud83d\ude09"

    aput-object v16, v3, v0

    const-string v16, "smile03"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0434\u043c\u0438\u0433\u0438\u0432\u0430\u043d\u0438\u0435"

    aput-object v16, v5, v0

    const/4 v0, 0x6

    const-string v16, "\ud83d\ude0d"

    aput-object v16, v3, v0

    const-string v16, "smile07"

    aput-object v16, v4, v0

    const-string v16, "\u0432\u043b\u044e\u0431\u043b\u0451\u043d"

    aput-object v16, v5, v0

    const/4 v0, 0x7

    const-string v16, "\ud83d\ude18"

    aput-object v16, v3, v0

    const-string v16, "smile139"

    aput-object v16, v4, v0

    const-string v16, "\u0432\u043e\u0437\u0434\u0443\u0448\u043d\u044b\u0439 \u043f\u043e\u0446\u0435\u043b\u0443\u0439"

    aput-object v16, v5, v0

    const/16 v0, 0x8

    const-string v16, "\ud83d\ude1a"

    aput-object v16, v3, v0

    const-string v16, "smile25"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0446\u0435\u043b\u0443\u0439 \u0441 \u0437\u0430\u043a\u0440\u044b\u0442\u044b\u043c\u0438 \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x9

    const-string v16, "\ud83d\ude17"

    aput-object v16, v3, v0

    const-string v16, "emoji_1f617"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0446\u0435\u043b\u0443\u0439"

    aput-object v16, v5, v0

    const-string v0, "\ud83d\ude19"

    const/16 v2, 0xa

    aput-object v0, v3, v2

    const-string v0, "smiled83dde19"

    aput-object v0, v4, v2

    aput-object v16, v5, v2

    const/16 v0, 0xb

    const-string v16, "\ud83d\ude1c"

    aput-object v16, v3, v0

    const-string v16, "smile05"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0434\u043c\u0438\u0433\u0438\u0432\u0430\u0435\u0442 \u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v16, v5, v0

    const/16 v0, 0xc

    const-string v16, "\ud83d\ude1d"

    aput-object v16, v3, v0

    const-string v16, "smile137"

    aput-object v16, v4, v0

    const-string v16, "\u0441\u043c\u0435\u0451\u0442\u0441\u044f \u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v16, v5, v0

    const/16 v0, 0xd

    const-string v16, "\ud83d\ude1b"

    aput-object v16, v3, v0

    const-string v16, "smile151"

    aput-object v16, v4, v0

    const-string v16, "\u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v16, v5, v0

    const/16 v0, 0xe

    const-string v16, "\ud83d\ude33"

    aput-object v16, v3, v0

    const-string v16, "smile23"

    aput-object v16, v4, v0

    const-string v16, "\u043a\u0440\u0430\u0441\u043d\u0435\u044e"

    aput-object v16, v5, v0

    const/16 v0, 0xf

    const-string v16, "\ud83d\ude01"

    aput-object v16, v3, v0

    const-string v16, "smiled83dde01"

    aput-object v16, v4, v0

    const-string v16, "\u0443\u0441\u043c\u0435\u0448\u043a\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x10

    const-string v17, "\ud83d\ude14"

    aput-object v17, v3, v0

    const-string v17, "smile11"

    aput-object v17, v4, v0

    const-string v17, "\u0437\u0430\u0434\u0443\u043c\u0447\u0438\u0432\u044b\u0439"

    aput-object v17, v5, v0

    const/16 v0, 0x11

    const-string v17, "\ud83d\ude0c"

    aput-object v17, v3, v0

    const-string v17, "smile17"

    aput-object v17, v4, v0

    const-string v17, "\u043e\u0431\u043b\u0435\u0433\u0447\u0435\u043d\u0438\u0435"

    aput-object v17, v5, v0

    const-string v0, "\ud83d\ude12"

    const/16 v2, 0x12

    aput-object v0, v3, v2

    const-string v0, "smile09"

    aput-object v0, v4, v2

    const-string v0, "\u043f\u0435\u0447\u0430\u043b\u044c"

    aput-object v0, v5, v2

    const-string v0, "\ud83d\ude1e"

    aput-object v0, v3, v7

    const-string v0, "smile159"

    aput-object v0, v4, v7

    const-string v0, "\u0440\u0430\u0437\u043e\u0447\u0430\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    aput-object v0, v5, v7

    const/16 v0, 0x14

    const-string v7, "\ud83d\ude23"

    aput-object v7, v3, v0

    const-string v7, "smile154"

    aput-object v7, v4, v0

    const-string v7, "\u043d\u0430\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u044b\u0439"

    aput-object v7, v5, v0

    const-string v0, "\ud83d\ude22"

    aput-object v0, v3, v11

    const-string v0, "smile12"

    aput-object v0, v4, v11

    const-string v0, "\u0441\u043b\u0451\u0437\u044b \u043d\u0430 \u0433\u043b\u0430\u0437\u0430\u0445"

    aput-object v0, v5, v11

    const/16 v0, 0x16

    const-string v7, "\ud83d\ude02"

    aput-object v7, v3, v0

    const-string v7, "smile136"

    aput-object v7, v4, v0

    const-string v7, "\u0441\u043b\u0451\u0437\u044b \u0440\u0430\u0434\u043e\u0441\u0442\u0438"

    aput-object v7, v5, v0

    const/16 v0, 0x17

    const-string v7, "\ud83d\ude2d"

    aput-object v7, v3, v0

    const-string v7, "smile13"

    aput-object v7, v4, v0

    const-string v7, "\u0433\u0440\u043e\u043c\u043a\u0438\u0439 \u043f\u043b\u0430\u0447"

    aput-object v7, v5, v0

    const/16 v0, 0x18

    const-string v7, "\ud83d\ude2a"

    aput-object v7, v3, v0

    const-string v7, "smile143"

    aput-object v7, v4, v0

    const-string v7, "\u0441\u043e\u043d\u043d\u044b\u0439"

    aput-object v7, v5, v0

    const/16 v0, 0x19

    const-string v7, "\ud83d\ude25"

    aput-object v7, v3, v0

    const-string v7, "smile150"

    aput-object v7, v4, v0

    const-string v7, "\u0440\u0430\u0437\u043e\u0447\u0430\u0440\u043e\u0432\u0430\u043d"

    aput-object v7, v5, v0

    const/16 v0, 0x1a

    const-string v7, "\ud83d\ude30"

    aput-object v7, v3, v0

    const-string v7, "smile21"

    aput-object v7, v4, v0

    const-string v7, "\u0445\u043e\u043b\u043e\u0434\u043d\u044b\u0439 \u043f\u043e\u0442"

    aput-object v7, v5, v0

    const/16 v0, 0x1b

    const-string v7, "\ud83d\ude05"

    aput-object v7, v3, v0

    const-string v7, "smile157"

    aput-object v7, v4, v0

    const-string v7, "\u0440\u0430\u0434\u043e\u0441\u0442\u044c \u0432 \u0445\u043e\u043b\u043e\u0434\u043d\u043e\u043c \u043f\u043e\u0442\u0443"

    aput-object v7, v5, v0

    const/16 v0, 0x1c

    const-string v7, "\ud83d\ude13"

    aput-object v7, v3, v0

    const-string v7, "smiled83dde13"

    aput-object v7, v4, v0

    const-string v7, "\u0433\u0440\u0443\u0441\u0442\u044c \u0432 \u0445\u043e\u043b\u043e\u0434\u043d\u043e\u043c \u043f\u043e\u0442\u0443"

    aput-object v7, v5, v0

    const-string v0, "\ud83d\ude29"

    const/16 v7, 0x1d

    aput-object v0, v3, v7

    const-string v0, "smile14"

    aput-object v0, v4, v7

    const-string v0, "\u0443\u0441\u0442\u0430\u043b"

    aput-object v0, v5, v7

    const/16 v0, 0x1e

    const-string v11, "\ud83d\ude2b"

    aput-object v11, v3, v0

    const-string v11, "smile144"

    aput-object v11, v4, v0

    const-string v11, "\u043e\u0447\u0435\u043d\u044c \u0443\u0441\u0442\u0430\u043b"

    aput-object v11, v5, v0

    const/16 v0, 0x1f

    const-string v11, "\ud83d\ude28"

    aput-object v11, v3, v0

    const-string v11, "smile15"

    aput-object v11, v4, v0

    const-string v11, "\u0438\u0441\u043f\u0443\u0433"

    aput-object v11, v5, v0

    const/16 v0, 0x20

    const-string v11, "\ud83d\ude31"

    aput-object v11, v3, v0

    const-string v11, "smile163"

    aput-object v11, v4, v0

    const-string v11, "\u043a\u0440\u0438\u0447\u0438\u0442 \u043e\u0442 \u0441\u0442\u0440\u0430\u0445\u0430"

    aput-object v11, v5, v0

    const/16 v0, 0x21

    const-string v11, "\ud83d\ude20"

    aput-object v11, v3, v0

    const-string v11, "smile18"

    aput-object v11, v4, v0

    const-string v11, "\u0437\u043b\u043e\u0439"

    aput-object v11, v5, v0

    const/16 v0, 0x22

    const-string v11, "\ud83d\ude21"

    aput-object v11, v3, v0

    const-string v11, "smile19"

    aput-object v11, v4, v0

    const-string v11, "\u043e\u0447\u0435\u043d\u044c \u0437\u043b\u043e\u0439"

    aput-object v11, v5, v0

    const/16 v0, 0x23

    const-string v11, "\ud83d\ude24"

    aput-object v11, v3, v0

    const-string v11, "smile153"

    aput-object v11, v4, v0

    const-string v11, "\u0442\u0440\u0438\u0443\u043c\u0444"

    aput-object v11, v5, v0

    const/16 v0, 0x24

    const-string v11, "\ud83d\ude16"

    aput-object v11, v3, v0

    const-string v11, "smile152"

    aput-object v11, v4, v0

    const-string v11, "\u0441\u043c\u0443\u0449\u0435\u043d\u0438\u0435"

    aput-object v11, v5, v0

    const/16 v0, 0x25

    const-string v11, "\ud83d\ude06"

    aput-object v11, v3, v0

    const-string v11, "smile04"

    aput-object v11, v4, v0

    const-string v11, "\u0441\u043c\u0435\u0445 \u0441 \u0437\u0430\u0436\u043c\u0443\u0440\u0435\u043d\u043d\u044b\u043c\u0438 \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v11, v5, v0

    const/16 v0, 0x26

    const-string v11, "\ud83d\ude0b"

    aput-object v11, v3, v0

    const-string v11, "smile06"

    aput-object v11, v4, v0

    aput-object v12, v5, v0

    const/16 v0, 0x27

    const-string v11, "\ud83d\ude37"

    aput-object v11, v3, v0

    const-string v11, "smile24"

    aput-object v11, v4, v0

    const-string v11, "\u0431\u043e\u043b\u0435\u043d"

    aput-object v11, v5, v0

    const-string v0, "\ud83d\ude0e"

    const/16 v11, 0x28

    aput-object v0, v3, v11

    const-string v0, "smile08"

    aput-object v0, v4, v11

    const-string v0, "\u043a\u0440\u0443\u0442\u043e\u0439"

    aput-object v0, v5, v11

    const/16 v0, 0x29

    const-string v18, "\ud83d\ude34"

    aput-object v18, v3, v0

    const-string v18, "smile138"

    aput-object v18, v4, v0

    const-string v18, "\u0441\u043e\u043d"

    aput-object v18, v5, v0

    const/16 v0, 0x2a

    const-string v18, "\ud83d\ude35"

    aput-object v18, v3, v0

    const-string v18, "smile134"

    aput-object v18, v4, v0

    const-string v18, "\u0433\u043b\u0430\u0437\u0430 \u043a\u0440\u0435\u0441\u0442\u0438\u043a\u0430\u043c\u0438"

    aput-object v18, v5, v0

    const/16 v0, 0x2b

    const-string v18, "\ud83d\ude32"

    aput-object v18, v3, v0

    const-string v18, "smile22"

    aput-object v18, v4, v0

    const-string v18, "\u0443\u0434\u0438\u0432\u043b\u0435\u043d\u0438\u0435"

    aput-object v18, v5, v0

    const/16 v0, 0x2c

    const-string v18, "\ud83d\ude1f"

    aput-object v18, v3, v0

    const-string v18, "smile140"

    aput-object v18, v4, v0

    const-string v18, "\u043e\u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0435\u043d"

    aput-object v18, v5, v0

    const/16 v0, 0x2d

    const-string v18, "\ud83d\ude26"

    aput-object v18, v3, v0

    const-string v18, "smile133"

    aput-object v18, v4, v0

    const-string v18, "\u043e\u043f\u0435\u0447\u0430\u043b\u0435\u043d"

    aput-object v18, v5, v0

    const/16 v0, 0x2e

    const-string v18, "\ud83d\ude27"

    aput-object v18, v3, v0

    const-string v18, "smile155"

    aput-object v18, v4, v0

    const-string v18, "\u0441\u0442\u0440\u0430\u0434\u0430\u044e"

    aput-object v18, v5, v0

    const-string v0, "\ud83d\ude08"

    const/16 v11, 0x2f

    aput-object v0, v3, v11

    const-string v0, "smile26"

    aput-object v0, v4, v11

    const-string v0, "\u0434\u043e\u0431\u0440\u044b\u0439 \u0447\u0435\u0440\u0442\u0451\u043d\u043e\u043a"

    aput-object v0, v5, v11

    const/16 v0, 0x30

    const-string v19, "\ud83d\udc7f"

    aput-object v19, v3, v0

    const-string v19, "smile145"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u043b\u043e\u0439 \u0447\u0435\u0440\u0442\u0451\u043d\u043e\u043a"

    aput-object v19, v5, v0

    const/16 v0, 0x31

    const-string v19, "\ud83d\ude2e"

    aput-object v19, v3, v0

    const-string v19, "smile158"

    aput-object v19, v4, v0

    const-string v19, "\u043d\u0435\u0434\u043e\u0443\u043c\u0435\u043d\u0438\u0435"

    aput-object v19, v5, v0

    const/16 v0, 0x32

    const-string v20, "\ud83d\ude2c"

    aput-object v20, v3, v0

    const-string v20, "smile141"

    aput-object v20, v4, v0

    aput-object v16, v5, v0

    const/16 v0, 0x33

    const-string v16, "\ud83d\ude10"

    aput-object v16, v3, v0

    const-string v16, "smile16"

    aput-object v16, v4, v0

    const-string v16, "\u043d\u0435\u0439\u0442\u0440\u0430\u043b\u044c\u043d\u044b\u0439"

    aput-object v16, v5, v0

    const/16 v0, 0x34

    const-string v16, "\ud83d\ude15"

    aput-object v16, v3, v0

    const-string v16, "smile131"

    aput-object v16, v4, v0

    const-string v16, "\u043d\u0435\u0434\u043e\u0432\u043e\u043b\u0435\u043d"

    aput-object v16, v5, v0

    const/16 v0, 0x35

    const-string v16, "\ud83d\ude2f"

    aput-object v16, v3, v0

    const-string v16, "smile132"

    aput-object v16, v4, v0

    aput-object v19, v5, v0

    const/16 v0, 0x36

    const-string v16, "\ud83d\ude36"

    aput-object v16, v3, v0

    const-string v16, "smile142"

    aput-object v16, v4, v0

    const-string v16, "\u0440\u043e\u0442 \u043d\u0430 \u0437\u0430\u043c\u043e\u043a"

    aput-object v16, v5, v0

    const/16 v0, 0x37

    const-string v19, "\ud83d\ude07"

    aput-object v19, v3, v0

    const-string v19, "smile20"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0432\u044f\u0442\u043e\u0439"

    aput-object v19, v5, v0

    const/16 v0, 0x38

    const-string v19, "\ud83d\ude0f"

    aput-object v19, v3, v0

    const-string v19, "smile10"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u0445\u043c\u044b\u043b\u043a\u0430"

    aput-object v19, v5, v0

    const/16 v0, 0x39

    const-string v19, "\ud83d\ude11"

    aput-object v19, v3, v0

    const-string v19, "smile156"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0435\u0437 \u044d\u043c\u043e\u0446\u0438\u0439"

    aput-object v19, v5, v0

    const/16 v0, 0x3a

    const-string v19, "\ud83d\ude42"

    aput-object v19, v3, v0

    const-string v19, "emoji_d83dde42"

    aput-object v19, v4, v0

    aput-object v12, v5, v0

    const/16 v0, 0x3b

    const-string v12, "\ud83e\udd17"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83edd17"

    aput-object v12, v4, v0

    const-string v12, "\u043e\u0431\u043d\u0438\u043c\u0430\u044e"

    aput-object v12, v5, v0

    const/16 v0, 0x3c

    const-string v12, "\ud83e\udd14"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83edd14"

    aput-object v12, v4, v0

    const-string v12, "\u0434\u0443\u043c\u0430\u044e"

    aput-object v12, v5, v0

    const/16 v0, 0x3d

    const-string v12, "\ud83d\ude44"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83dde44"

    aput-object v12, v4, v0

    const-string v12, "\u0432\u0440\u0430\u0449\u0430\u044e \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v12, v5, v0

    const/16 v0, 0x3e

    const-string v12, "\ud83e\udd10"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83edd10"

    aput-object v12, v4, v0

    aput-object v16, v5, v0

    const/16 v0, 0x3f

    const-string v12, "\ud83e\udd13"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83edd13"

    aput-object v12, v4, v0

    const-string v12, "\u0431\u043e\u0442\u0430\u043d\u0438\u043a"

    aput-object v12, v5, v0

    const/16 v0, 0x40

    const-string v12, "\u2639"

    aput-object v12, v3, v0

    const-string v12, "emoji_2639"

    aput-object v12, v4, v0

    const-string v12, "\u0445\u043c\u0443\u0440\u044b\u0439"

    aput-object v12, v5, v0

    const/16 v0, 0x41

    const-string v12, "\ud83d\ude41"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83dde41"

    aput-object v12, v4, v0

    const-string v12, "\u0441\u043b\u0435\u0433\u043a\u0430 \u0433\u0440\u0443\u0441\u0442\u043d\u044b\u0439"

    aput-object v12, v5, v0

    const/16 v0, 0x42

    const-string v12, "\ud83d\ude43"

    aput-object v12, v3, v0

    const-string v12, "emoji_d83dde43"

    aput-object v12, v4, v0

    const-string v12, "\u0432\u043d\u0438\u0437 \u0433\u043e\u043b\u043e\u0432\u043e\u0439"

    aput-object v12, v5, v0

    const-string v0, "\ud83e\udd12"

    const/16 v12, 0x43

    aput-object v0, v3, v12

    const-string v0, "emoji_d83edd12"

    aput-object v0, v4, v12

    const-string v0, "\u0441 \u0433\u0440\u0430\u0434\u0443\u0441\u043d\u0438\u043a\u043e\u043c"

    aput-object v0, v5, v12

    const/16 v0, 0x44

    const-string v16, "\ud83e\udd15"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd15"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u0435\u0440\u0435\u0432\u044f\u0437\u0430\u043d\u043d\u043e\u0435 \u043b\u0438\u0446\u043e"

    aput-object v16, v5, v0

    const/16 v0, 0x45

    const-string v16, "\ud83e\udd11"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd11"

    aput-object v16, v4, v0

    const-string v16, "\u0434\u0435\u043d\u044c\u0433\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x46

    const-string v16, "\ud83e\udd25"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd25"

    aput-object v16, v4, v0

    const-string v16, "\u0432\u044b\u0440\u043e\u0441 \u043d\u043e\u0441"

    aput-object v16, v5, v0

    const/16 v0, 0x47

    const-string v16, "\ud83e\udd27"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd27"

    aput-object v16, v4, v0

    const-string v16, "\u0441\u043c\u043e\u0440\u043a\u0430\u044e\u0441\u044c"

    aput-object v16, v5, v0

    const/16 v0, 0x48

    const-string v16, "\ud83e\udd23"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd23"

    aput-object v16, v4, v0

    const-string v16, "\u041a\u0430\u0442\u0430\u044e\u0441\u044c \u043f\u043e \u043f\u043e\u043b\u0443 \u0441\u043e \u0441\u043c\u0435\u0445\u0443"

    aput-object v16, v5, v0

    const/16 v0, 0x49

    const-string v16, "\ud83e\udd24"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd24"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u0443\u0441\u043a\u0430\u044e \u0441\u043b\u044e\u043d\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x4a

    const-string v16, "\ud83e\udd22"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd22"

    aput-object v16, v4, v0

    const-string v16, "\u0442\u043e\u0448\u043d\u0438\u0442"

    aput-object v16, v5, v0

    const/16 v0, 0x4b

    const-string v16, "\ud83e\udd20"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd20"

    aput-object v16, v4, v0

    const-string v16, "\u043a\u043e\u0432\u0431\u043e\u0439"

    aput-object v16, v5, v0

    const/16 v0, 0x4c

    const-string v16, "\ud83e\udd2b"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd2b"

    aput-object v16, v4, v0

    const-string v16, "\u0442\u0438\u0448\u0435"

    aput-object v16, v5, v0

    const/16 v0, 0x4d

    const-string v16, "\ud83e\udd28"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd28"

    aput-object v16, v4, v0

    const-string v16, "\u0441 \u043f\u043e\u0434\u043d\u044f\u0442\u043e\u0439 \u0431\u0440\u043e\u0432\u044c\u044e"

    aput-object v16, v5, v0

    const/16 v0, 0x4e

    const-string v16, "\ud83e\udd26\u200d\u2640"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd26200d2640"

    aput-object v16, v4, v0

    const-string v16, "\u0444\u0435\u0439\u0441\u043f\u0430\u043b\u043c \u0436\u0435\u043d\u0449\u0438\u043d\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x4f

    const-string v16, "\ud83e\udd26"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd26"

    aput-object v16, v4, v0

    const-string v16, "\u0444\u0435\u0439\u0441\u043f\u0430\u043b\u043c"

    aput-object v16, v5, v0

    const/16 v0, 0x50

    const-string v16, "\ud83e\udd2d"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd2d"

    aput-object v16, v4, v0

    const-string v16, "\u0443\u043b\u044b\u0431\u0430\u044e\u0441\u044c \u043f\u0440\u0438\u043a\u0440\u044b\u0432 \u0440\u043e\u0442"

    aput-object v16, v5, v0

    const/16 v0, 0x51

    const-string v16, "\ud83e\udd2f"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd2f"

    aput-object v16, v4, v0

    const-string v16, "\u0432\u0437\u0440\u044b\u0432 \u043c\u043e\u0437\u0433\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x52

    const-string v16, "\ud83e\udd2a"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd2a"

    aput-object v16, v4, v0

    const-string v16, "\u0431\u0435\u0437\u0443\u043c\u043d\u044b\u0435 \u0433\u043b\u0430\u0437\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x53

    const-string v16, "\ud83e\udd70"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd70"

    aput-object v16, v4, v0

    const-string v16, "\u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0435\u0435\u0441\u044f \u043b\u0438\u0446\u043e \u0441 \u0441\u0435\u0440\u0434\u0435\u0447\u043a\u0430\u043c\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x54

    const-string v16, "\ud83e\udd7a"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd7a"

    aput-object v16, v4, v0

    const-string v16, "\u0443\u043c\u043e\u043b\u044f\u044e\u0449\u0435\u0435 \u043b\u0438\u0446\u043e"

    aput-object v16, v5, v0

    const/16 v0, 0x55

    const-string v16, "\ud83e\udd72"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd72"

    aput-object v16, v4, v0

    const-string v16, "\u0443\u043b\u044b\u0431\u043a\u0430 \u0441\u043e \u0441\u043b\u0435\u0437\u043e\u0439"

    aput-object v16, v5, v0

    const/16 v0, 0x56

    const-string v16, "\ud83e\udd37\u200d\u2642"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd37200d2642"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0436\u0438\u043c\u0430\u044e \u043f\u043b\u0435\u0447\u0430\u043c\u0438 \u043c\u0443\u0436\u0447\u0438\u043d\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x57

    const-string v16, "\ud83e\udd37"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd37"

    aput-object v16, v4, v0

    const-string v16, "\u043f\u043e\u0436\u0438\u043c\u0430\u044e \u043f\u043b\u0435\u0447\u0430\u043c\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x58

    const-string v16, "\ud83e\udd74"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd74"

    aput-object v16, v4, v0

    const-string v16, "\u0438\u0441\u043a\u0440\u0438\u0432\u043b\u0451\u043d\u043d\u043e\u0435 \u043b\u0438\u0446\u043e"

    aput-object v16, v5, v0

    const/16 v0, 0x59

    const-string v16, "\ud83e\udd73"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd73"

    aput-object v16, v4, v0

    const-string v16, "\u0432\u0435\u0447\u0435\u0440\u0438\u043d\u043a\u0430"

    aput-object v16, v5, v0

    const/16 v0, 0x5a

    const-string v16, "\ud83e\udd76"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd76"

    aput-object v16, v4, v0

    const-string v16, "\u0437\u0430\u043c\u0435\u0440\u0437\u0430\u044e"

    aput-object v16, v5, v0

    const/16 v0, 0x5b

    const-string v16, "\u2620"

    aput-object v16, v3, v0

    const-string v16, "emoji_2620"

    aput-object v16, v4, v0

    const-string v16, "\u0447\u0435\u0440\u0435\u043f \u0438 \u043a\u043e\u0441\u0442\u0438"

    aput-object v16, v5, v0

    const/16 v0, 0x5c

    const-string v16, "\ud83e\udd21"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd21"

    aput-object v16, v4, v0

    const-string v16, "\u043a\u043b\u043e\u0443\u043d"

    aput-object v16, v5, v0

    const/16 v0, 0x5d

    const-string v16, "\ud83e\udd2c"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edd2c"

    aput-object v16, v4, v0

    const-string v16, "\u0440\u0443\u0433\u0430\u044e\u0441\u044c"

    aput-object v16, v5, v0

    const/16 v0, 0x5e

    const-string v16, "\ud83e\udde0"

    aput-object v16, v3, v0

    const-string v16, "emoji_d83edde0"

    aput-object v16, v4, v0

    const-string v16, "\u043c\u043e\u0437\u0433"

    aput-object v16, v5, v0

    const/16 v0, 0x5f

    const-string v16, "\ud83d\udc72"

    aput-object v16, v3, v0

    const-string v16, "smiled83ddc72"

    aput-object v16, v4, v0

    const/16 v0, 0x60

    const-string v16, "\ud83d\udc73"

    aput-object v16, v3, v0

    const-string v16, "smiled83ddc73"

    aput-object v16, v4, v0

    const/16 v0, 0x61

    const-string v16, "\ud83d\udc6e"

    aput-object v16, v3, v0

    const-string v16, "smiled83ddc6e"

    aput-object v16, v4, v0

    const/16 v0, 0x62

    const-string v16, "\ud83d\udc82"

    aput-object v16, v3, v0

    const/16 v0, 0x63

    const-string v16, "\ud83d\udc76"

    aput-object v16, v3, v0

    const-string v16, "emoji_1f476"

    aput-object v16, v4, v0

    const-string v16, "\u0440\u0435\u0431\u0451\u043d\u043e\u043a"

    aput-object v16, v5, v0

    const-string v0, "\ud83d\udc66"

    const/16 v16, 0x64

    aput-object v0, v3, v16

    const/16 v0, 0x65

    const-string v19, "\ud83d\udc67"

    aput-object v19, v3, v0

    const-string v19, "smiled83ddc67"

    aput-object v19, v4, v0

    const-string v19, "\u0434\u0435\u0432\u043e\u0447\u043a\u0430"

    aput-object v19, v5, v0

    const/16 v0, 0x66

    const-string v19, "\ud83d\udc68"

    aput-object v19, v3, v0

    const-string v19, "smiled83ddc68"

    aput-object v19, v4, v0

    const-string v19, "\u043c\u0443\u0436\u0447\u0438\u043d\u0430"

    aput-object v19, v5, v0

    const/16 v0, 0x67

    const-string v19, "\ud83d\udc69"

    aput-object v19, v3, v0

    const/16 v0, 0x68

    if-eqz v10, :cond_2

    const-string v19, "\ud83d\udc74"

    aput-object v19, v3, v0

    const/16 v0, 0x69

    :cond_2
    if-eqz v10, :cond_3

    const-string v19, "\ud83d\udc75"

    .line 163
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    if-eqz v10, :cond_4

    const-string v19, "\ud83d\udc71"

    .line 164
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    const-string v19, "\ud83d\udc7c"

    .line 165
    aput-object v19, v3, v0

    const-string v19, "emoji_1f47c"

    aput-object v19, v4, v0

    const-string v19, "\u0430\u043d\u0433\u0435\u043b\u043e\u0447\u0435\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc78"

    .line 166
    aput-object v19, v3, v0

    const-string v19, "emoji_1f478"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0440\u0438\u043d\u0446\u0435\u0441\u0441\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3a"

    .line 167
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3a"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude38"

    .line 168
    aput-object v19, v3, v0

    const-string v19, "smiled83dde38"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3b"

    .line 169
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3b"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u043b\u044e\u0431\u043b\u0451\u043d\u043d\u044b\u0439 \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3d"

    .line 170
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3d"

    aput-object v19, v4, v0

    const-string v19, "\u0446\u0435\u043b\u0443\u044e\u0449\u0438\u0439 \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3c"

    .line 171
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3c"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u0445\u043c\u044b\u043b\u044f\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude40"

    .line 172
    aput-object v19, v3, v0

    const-string v19, "smiled83dde40"

    aput-object v19, v4, v0

    const-string v19, "\u0438\u0441\u043f\u0443\u0433\u0430\u043d\u043d\u044b\u0439 \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3f"

    .line 173
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3f"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u043b\u0430\u0447\u0443\u0449\u0438\u0439 \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude39"

    .line 174
    aput-object v19, v3, v0

    const-string v19, "smiled83dde39"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u043e\u0442 \u0441\u043e \u0441\u043b\u0435\u0437\u0430\u043c\u0438 \u0440\u0430\u0434\u043e\u0441\u0442\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude3e"

    .line 175
    aput-object v19, v3, v0

    const-string v19, "smiled83dde3e"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u043b\u043e\u0439 \u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc79"

    .line 176
    aput-object v19, v3, v0

    const-string v19, "smile147"

    aput-object v19, v4, v0

    const-string v19, "\u042f\u043f\u043e\u043d\u0441\u043a\u0438\u0439 \u041e\u0433\u0440\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc7a"

    .line 177
    aput-object v19, v3, v0

    const-string v19, "smile165"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude48"

    .line 178
    aput-object v19, v3, v0

    const-string v19, "smiled83dde48"

    aput-object v19, v4, v0

    const-string v19, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0433\u043b\u0430\u0437\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude49"

    .line 179
    aput-object v19, v3, v0

    const-string v19, "smiled83dde49"

    aput-object v19, v4, v0

    const-string v19, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0443\u0448\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4a"

    .line 180
    aput-object v19, v3, v0

    const-string v19, "smiled83dde4a"

    aput-object v19, v4, v0

    const-string v19, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0440\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc80"

    .line 181
    aput-object v19, v3, v0

    const-string v19, "emoji_1f480"

    aput-object v19, v4, v0

    const-string v19, "\u0447\u0435\u0440\u0435\u043f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc7d"

    .line 182
    aput-object v19, v3, v0

    const-string v19, "smile146"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0440\u0438\u0448\u0435\u043b\u0435\u0446"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca9"

    .line 183
    aput-object v19, v3, v0

    const-string v19, "smile161"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0430\u043a\u0430\u0448\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd25"

    .line 184
    aput-object v19, v3, v0

    const-string v19, "smiled83ddd25"

    aput-object v19, v4, v0

    const-string v19, "\u043e\u0433\u043e\u043d\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2728"

    .line 185
    aput-object v19, v3, v0

    const-string v19, "emoji_2728"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u0432\u0451\u0437\u0434\u044b"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf1f"

    .line 186
    aput-object v19, v3, v0

    const-string v19, "smile35"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0432\u0435\u0440\u043a\u0430\u044e\u0449\u0430\u044f \u0437\u0432\u0435\u0437\u0434\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcab"

    .line 187
    aput-object v19, v3, v0

    const-string v19, "emoji_1f4ab"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u0434\u0430\u044e\u0449\u0430\u044f \u0437\u0432\u0435\u0437\u0434\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca5"

    .line 188
    aput-object v19, v3, v0

    const-string v19, "smiled83ddca5"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u0437\u0440\u044b\u0432"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca2"

    .line 189
    aput-object v19, v3, v0

    const-string v19, "emoji_1f4a2"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca6"

    .line 190
    aput-object v19, v3, v0

    const-string v19, "smile164"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0430\u043f\u043b\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca7"

    .line 191
    aput-object v19, v3, v0

    const-string v19, "smiled83ddca7"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0430\u043f\u043b\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca4"

    .line 192
    aput-object v19, v3, v0

    const-string v19, "emoji_1f4a4"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca8"

    .line 193
    aput-object v19, v3, v0

    const-string v19, "smiled83ddca8"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u044b\u043b\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc42"

    .line 194
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc40"

    .line 195
    aput-object v19, v3, v0

    const-string v19, "smile115"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u043b\u0430\u0437\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc43"

    .line 196
    aput-object v19, v3, v0

    const-string v19, "smile117"

    aput-object v19, v4, v0

    const-string v19, "\u043d\u043e\u0441"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc45"

    .line 197
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc45"

    aput-object v19, v4, v0

    const-string v19, "\u044f\u0437\u044b\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc44"

    .line 198
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc44"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u0443\u0431\u044b"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4d"

    .line 199
    aput-object v19, v3, v0

    const-string v19, "smile28"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u043e\u043b\u044c\u0448\u043e\u0439 \u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4e"

    .line 200
    aput-object v19, v3, v0

    const-string v19, "smile29"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u043e\u043b\u044c\u0448\u043e\u0439 \u043f\u0430\u043b\u0435\u0446 \u0432\u043d\u0438\u0437"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4c"

    .line 201
    aput-object v19, v3, v0

    const-string v19, "smile32"

    aput-object v19, v4, v0

    const-string v19, "\u043e\u043a\u0435\u0439"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4a"

    .line 202
    aput-object v19, v3, v0

    const-string v19, "smile169"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0443\u043b\u0430\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u270a"

    .line 203
    aput-object v19, v3, v0

    const-string v19, "smile270a"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0436\u0430\u0442\u0430\u044f \u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u270c"

    .line 204
    aput-object v19, v3, v0

    const-string v19, "smile31"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u043d\u0430\u043a \u043f\u043e\u0431\u0435\u0434\u044b"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4b"

    .line 205
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc4b"

    aput-object v19, v4, v0

    const-string v19, "\u043c\u0430\u0448\u0435\u0442 \u0440\u0443\u043a\u043e\u0439"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u270b"

    .line 206
    aput-object v19, v3, v0

    const-string v19, "smile170"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc50"

    .line 207
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc50"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0430\u0434\u043e\u043d\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc46"

    .line 208
    aput-object v19, v3, v0

    const-string v19, "smile118"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc47"

    .line 209
    aput-object v19, v3, v0

    const-string v19, "smile119"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043d\u0438\u0437"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc49"

    .line 210
    aput-object v19, v3, v0

    const-string v19, "emoji_1f449"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043f\u0440\u0430\u0432\u043e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc48"

    .line 211
    aput-object v19, v3, v0

    const-string v19, "smile120"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043b\u0435\u0432\u043e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4c"

    .line 212
    aput-object v19, v3, v0

    const-string v19, "smiled83dde4c"

    aput-object v19, v4, v0

    const-string v19, "\u041f\u043e\u0434\u043d\u044f\u043b \u0440\u0443\u043a\u0438 \u043d\u0430\u0434 \u0441\u043e\u0431\u043e\u0439"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4f"

    .line 213
    aput-object v19, v3, v0

    const-string v19, "smile171"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u0434\u0430\u0440 \u0432 \u043b\u0430\u0434\u043e\u0448\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u261d"

    .line 214
    aput-object v19, v3, v0

    const-string v19, "smile30"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc4f"

    .line 215
    aput-object v19, v3, v0

    const-string v19, "smile168"

    aput-object v19, v4, v0

    const-string v19, "\u0445\u043b\u043e\u043f\u0430\u044e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcaa"

    .line 216
    aput-object v19, v3, v0

    const-string v19, "smile125"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0438\u0446\u0435\u043f\u0441"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd95"

    .line 217
    aput-object v19, v3, v0

    const-string v19, "smiled83ddd95"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0440\u0435\u0434\u043d\u0438\u0439 \u043f\u0430\u043b\u0435\u0446"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd18"

    .line 218
    aput-object v19, v3, v0

    const-string v19, "smiled83edd18"

    aput-object v19, v4, v0

    const-string v19, "\u0436\u0435\u0441\u0442 \u0440\u043e\u0433\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd1e"

    .line 219
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd1e"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0435\u0440\u0435\u043a\u0440\u0435\u0449\u0435\u043d\u043d\u044b\u0435 \u043f\u0430\u043b\u044c\u0446\u044b"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd19"

    .line 220
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd19"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u043e\u0437\u0432\u043e\u043d\u0438 \u043c\u043d\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd96"

    .line 221
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddd96"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u0443\u043b\u043a\u0430\u043d\u0441\u043a\u043e\u0435 \u043f\u0440\u0438\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd1d"

    .line 222
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd1d"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u0443\u043a\u043e\u043f\u043e\u0436\u0430\u0442\u0438\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u270d"

    .line 223
    aput-object v19, v3, v0

    const-string v19, "emoji_270d"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0438\u0448\u0443\u0449\u0430\u044f \u0440\u0443\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd90"

    .line 224
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddd90"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u0430\u0441\u0442\u043e\u043f\u044b\u0440\u0435\u043d\u043d\u0430\u044f \u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd1b"

    .line 225
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd1b"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0443\u043b\u0430\u043a \u0432\u043b\u0435\u0432\u043e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v6, :cond_5

    const-string v19, "\ud83e\udd33"

    .line 226
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5
    const-string v19, "\ud83d\udeb6"

    .line 227
    aput-object v19, v3, v0

    const-string v19, "smiled83ddeb6"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udfc3"

    .line 228
    aput-object v19, v3, v0

    const-string v19, "smiled83cdfc3"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0435\u0433\u0443"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc83"

    .line 229
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc83"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd7a"

    .line 230
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddd7a"

    aput-object v19, v4, v0

    const-string v19, "\u0442\u0430\u043d\u0446\u0443\u044e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udfcb"

    .line 231
    aput-object v19, v3, v0

    const-string v19, "emoji_d83cdfcb"

    aput-object v19, v4, v0

    const-string v19, "\u0448\u0442\u0430\u043d\u0433\u0438\u0441\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc6b"

    .line 232
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc6b"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc6a"

    .line 233
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc6a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_6

    const-string v19, "\ud83d\udc6c"

    .line 234
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6
    if-eqz v10, :cond_7

    const-string v19, "\ud83d\udc6d"

    .line 235
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7
    const-string v19, "\ud83d\udc8f"

    .line 236
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc8f"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc91"

    .line 237
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc91"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc6f"

    .line 238
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc6f"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude46"

    .line 239
    aput-object v19, v3, v0

    const-string v19, "smiled83dde46"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude45"

    .line 240
    aput-object v19, v3, v0

    const-string v19, "smiled83dde45"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc81"

    .line 241
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc81"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4b"

    .line 242
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc86"

    .line 243
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc87"

    .line 244
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc85"

    .line 245
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc85"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc70"

    .line 246
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc70"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4e"

    .line 247
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude4d"

    .line 248
    aput-object v19, v3, v0

    const-string v19, "emoji_1f64d"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude47"

    .line 249
    aput-object v19, v3, v0

    const-string v19, "smiled83dde47"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udfa9"

    .line 250
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc51"

    .line 251
    aput-object v19, v3, v0

    const-string v19, "smile121"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc5f"

    .line 252
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc5f"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc61"

    .line 253
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc61"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc60"

    .line 254
    aput-object v19, v3, v0

    const-string v19, "smile122"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_8

    const-string v19, "\ud83d\udc62"

    .line 255
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8
    if-eqz v10, :cond_9

    const-string v19, "\ud83d\udc55"

    .line 256
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9
    const-string v19, "\ud83d\udc54"

    .line 257
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc54"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a

    const-string v19, "\ud83d\udc5a"

    .line 258
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a
    const-string v19, "\ud83d\udc57"

    .line 259
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc56"

    .line 260
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc59"

    .line 261
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc59"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_b

    const-string v19, "\ud83d\udcbc"

    .line 262
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_b
    const-string v19, "\ud83d\udc5c"

    .line 263
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc5b"

    .line 264
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc5b"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc53"

    .line 265
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc53"

    aput-object v19, v4, v0

    const-string v19, "\u043e\u0447\u043a\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf80"

    .line 266
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf80"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0430\u043d\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf02"

    .line 267
    aput-object v19, v3, v0

    const-string v19, "emoji_1f302"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc84"

    .line 268
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc84"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc9b"

    .line 269
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc9b"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc99"

    .line 270
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc99"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc9c"

    .line 271
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc9c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc9a"

    .line 272
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc9a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udda4"

    .line 273
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddda4"

    aput-object v19, v4, v0

    const-string v19, "\u0447\u0451\u0440\u043d\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2764"

    .line 274
    aput-object v19, v3, v0

    const-string v19, "smile27"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udde1"

    .line 275
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edde1"

    aput-object v19, v4, v0

    const-string v19, "\u043e\u0440\u0430\u043d\u0436\u0435\u0432\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd0d"

    .line 276
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd0d"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0435\u043b\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc94"

    .line 277
    aput-object v19, v3, v0

    const-string v19, "smile58"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u0430\u0437\u0431\u0438\u0442\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc97"

    .line 278
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc97"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc93"

    .line 279
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc93"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc95"

    .line 280
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc95"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc96"

    .line 281
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc96"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc9e"

    .line 282
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc9e"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc98"

    .line 283
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc98"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0442\u0440\u0435\u043b\u0430 \u043f\u0440\u043e\u043d\u0437\u0430\u0435\u0442 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2763"

    .line 284
    aput-object v19, v3, v0

    const-string v19, "smile2763"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0435\u0440\u0434\u0446\u0435 \u043a\u0430\u043a \u0432\u043e\u0441\u043a\u043b\u0438\u0446\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc8c"

    .line 285
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc8c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc8b"

    .line 286
    aput-object v19, v3, v0

    const-string v19, "smile160"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043b\u0435\u0434 \u043e\u0442 \u043f\u043e\u0446\u0435\u043b\u0443\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc8d"

    .line 287
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc8d"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc8e"

    .line 288
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc8e"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc64"

    .line 289
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc65"

    .line 290
    aput-object v19, v3, v0

    const-string v19, "emoji_1f465"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcac"

    .line 291
    aput-object v19, v3, v0

    const-string v19, "smile126"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc63"

    .line 292
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc63"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcad"

    .line 293
    aput-object v19, v3, v0

    const-string v19, "smile59"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    aput v0, v1, v8

    const-string v19, "\ud83d\udc36"

    .line 297
    aput-object v19, v3, v0

    const-string v19, "smile60"

    aput-object v19, v4, v0

    const-string v19, "\u0449\u0435\u043d\u043e\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc3a"

    .line 298
    aput-object v19, v3, v0

    const-string v19, "smile107"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u043e\u043b\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc31"

    .line 299
    aput-object v19, v3, v0

    const-string v19, "smile61"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc2d"

    .line 300
    aput-object v19, v3, v0

    const-string v19, "smile106"

    aput-object v19, v4, v0

    const-string v19, "\u043c\u044b\u0448\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc39"

    .line 301
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc39"

    aput-object v19, v4, v0

    const-string v19, "\u0445\u043e\u043c\u044f\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc30"

    .line 302
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc30"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u0430\u044f\u0446"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc38"

    .line 303
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc38"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u044f\u0433\u0443\u0448\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc2f"

    .line 304
    aput-object v19, v3, v0

    const-string v19, "smile109"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u0446\u043e \u0442\u0438\u0433\u0440\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_c

    const-string v19, "\ud83d\udc28"

    .line 305
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_c
    const-string v19, "\ud83d\udc3b"

    .line 306
    aput-object v19, v3, v0

    const-string v19, "smile53"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u0446\u043e \u043c\u0435\u0434\u0432\u0435\u0434\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc37"

    .line 307
    aput-object v19, v3, v0

    const-string v19, "smile62"

    aput-object v19, v4, v0

    const-string v19, "\u0445\u0440\u044e\u0448\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc3d"

    .line 308
    aput-object v19, v3, v0

    const-string v19, "smile108"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u0432\u0438\u043d\u043e\u0439 \u043f\u044f\u0442\u0430\u0447\u043e\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc2e"

    .line 309
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc17"

    .line 310
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc17"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc35"

    .line 311
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc12"

    .line 312
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc12"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_d

    const-string v19, "\ud83d\udc34"

    .line 313
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_d
    const-string v19, "\ud83d\udc11"

    .line 314
    aput-object v19, v3, v0

    const-string v19, "smile63"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc18"

    .line 315
    aput-object v19, v3, v0

    const-string v19, "smile57"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043b\u043e\u043d"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc3c"

    .line 316
    aput-object v19, v3, v0

    const-string v19, "smile54"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u0446\u043e \u043f\u0430\u043d\u0434\u044b"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_e

    const-string v19, "\ud83d\udc27"

    .line 317
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_e
    const-string v19, "\ud83d\udc26"

    .line 318
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc24"

    .line 319
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc25"

    .line 320
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc25"

    aput-object v19, v4, v0

    const-string v19, "\u0446\u044b\u043f\u043b\u0451\u043d\u043e\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc23"

    .line 321
    aput-object v19, v3, v0

    const-string v19, "smile113"

    aput-object v19, v4, v0

    const-string v19, "\u0446\u044b\u043f\u043b\u0451\u043d\u043e\u043a \u0432 \u0441\u043a\u043e\u0440\u043b\u0443\u043f\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc14"

    .line 322
    aput-object v19, v3, v0

    const-string v19, "smile112"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0443\u0440\u0438\u0446\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc0d"

    .line 323
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc0d"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u043c\u0435\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc22"

    .line 324
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc22"

    aput-object v19, v4, v0

    const-string v19, "\u0447\u0435\u0440\u0435\u043f\u0430\u0445\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc1b"

    .line 325
    aput-object v19, v3, v0

    const-string v19, "smile101"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u0443\u0441\u0435\u043d\u0438\u0446\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc1d"

    .line 326
    aput-object v19, v3, v0

    const-string v19, "smile102"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0447\u0435\u043b\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_f

    const-string v19, "\ud83d\udc1c"

    .line 327
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_f
    const-string v19, "\ud83d\udc1e"

    .line 328
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc0c"

    .line 329
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc19"

    .line 330
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc1a"

    .line 331
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc20"

    .line 332
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc1f"

    .line 333
    aput-object v19, v3, v0

    const-string v19, "smile103"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u044b\u0431\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc2c"

    .line 334
    aput-object v19, v3, v0

    const-string v19, "smile105"

    aput-object v19, v4, v0

    const-string v19, "\u0434\u0435\u043b\u044c\u0444\u0438\u043d"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_10

    const-string v19, "\ud83d\udc0b"

    .line 335
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_10
    if-eqz v10, :cond_11

    const-string v19, "\ud83d\udc04"

    .line 336
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_11
    if-eqz v10, :cond_12

    const-string v19, "\ud83d\udc0f"

    .line 337
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_12
    if-eqz v10, :cond_13

    const-string v19, "\ud83d\udc00"

    .line 338
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_13
    if-eqz v10, :cond_14

    const-string v19, "\ud83d\udc03"

    .line 339
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_14
    if-eqz v10, :cond_15

    const-string v19, "\ud83d\udc05"

    .line 340
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_15
    const-string v19, "\ud83d\udc07"

    .line 341
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc07"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_16

    const-string v19, "\ud83d\udc09"

    .line 342
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_16
    const-string v19, "\ud83d\udc0e"

    .line 343
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_17

    const-string v19, "\ud83d\udc13"

    .line 344
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_17
    if-eqz v10, :cond_18

    const-string v19, "\ud83d\udc15"

    .line 345
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_18
    if-eqz v10, :cond_19

    const-string v19, "\ud83d\udc16"

    .line 346
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_19
    const-string v19, "\ud83d\udc01"

    .line 347
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc01"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_1a

    const-string v19, "\ud83d\udc02"

    .line 348
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1a
    if-eqz v10, :cond_1b

    const-string v19, "\ud83d\udc32"

    .line 349
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1b
    const-string v19, "\ud83d\udc0a"

    .line 350
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc0a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_1c

    const-string v19, "\ud83d\udc06"

    .line 351
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1c
    const-string v19, "\ud83d\udc08"

    .line 352
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc08"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u043e\u0448\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_1d

    const-string v19, "\ud83d\udc29"

    .line 353
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1d
    const-string v19, "\ud83e\udd84"

    .line 354
    aput-object v19, v3, v0

    const-string v19, "smiled83edd84"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd4a"

    .line 355
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddd4a"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u043e\u043b\u0443\u0431\u044c \u043c\u0438\u0440\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd8a"

    .line 356
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd8a"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u0441\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd81"

    .line 357
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd81"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0435\u0432"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v6, :cond_1e

    const-string v19, "\ud83d\udc3f\ufe0f"

    .line 358
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1e
    const-string v19, "\ud83d\udd77"

    .line 359
    aput-object v19, v3, v0

    const-string v19, "emoji_d83ddd77"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0430\u0443\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd89"

    .line 360
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd89"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043e\u0432\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc3e"

    .line 361
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc3e"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043b\u0435\u0434\u044b \u043e\u0442 \u043b\u0430\u043f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc90"

    .line 362
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc90"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u0443\u043a\u0435\u0442 \u0446\u0432\u0435\u0442\u043e\u0432"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf38"

    .line 363
    aput-object v19, v3, v0

    const-string v19, "smile79"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf37"

    .line 364
    aput-object v19, v3, v0

    const-string v19, "smile78"

    aput-object v19, v4, v0

    const-string v19, "\u0442\u044e\u043b\u044c\u043f\u0430\u043d"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf40"

    .line 365
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf40"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf39"

    .line 366
    aput-object v19, v3, v0

    const-string v19, "smile39"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u043e\u0437\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd40"

    .line 367
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd40"

    aput-object v19, v4, v0

    const-string v19, "\u0443\u0432\u044f\u0434\u0448\u0438\u0439 \u0446\u0432\u0435\u0442\u043e\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf3b"

    .line 368
    aput-object v19, v3, v0

    const-string v19, "smile69"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf3a"

    .line 369
    aput-object v19, v3, v0

    const-string v19, "smile68"

    aput-object v19, v4, v0

    const-string v19, "\u0446\u0432\u0435\u0442\u043e\u043a \u0433\u0438\u0431\u0438\u0441\u043a\u0443\u0441\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_1f

    const-string v19, "\ud83c\udf41"

    .line 370
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1f
    const-string v19, "\ud83c\udf43"

    .line 371
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf43"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u0441\u0442\u044c\u044f \u043d\u0430 \u0432\u0435\u0442\u0440\u0443"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf42"

    .line 372
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf3f"

    .line 373
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf3f"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf3e"

    .line 374
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf3e"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_20

    const-string v19, "\ud83c\udf44"

    .line 375
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_20
    if-eqz v10, :cond_21

    const-string v19, "\ud83c\udf35"

    .line 376
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_21
    if-eqz v10, :cond_22

    const-string v19, "\ud83c\udf34"

    .line 377
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_22
    if-eqz v10, :cond_23

    const-string v19, "\ud83c\udf32"

    .line 378
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_23
    if-eqz v10, :cond_24

    const-string v19, "\ud83c\udf33"

    .line 379
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_24
    const-string v19, "\ud83c\udf30"

    .line 380
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf31"

    .line 381
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf3c"

    .line 382
    aput-object v19, v3, v0

    const-string v19, "smile70"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_25

    const-string v19, "\ud83c\udf10"

    .line 383
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_25
    const-string v19, "\ud83c\udf1e"

    .line 384
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf1e"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043e\u043b\u043d\u0446\u0435 \u0441 \u043b\u0438\u0446\u043e\u043c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf1d"

    .line 385
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf1d"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf1a"

    .line 386
    aput-object v19, v3, v0

    const-string v19, "emoji_1f31a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_26

    const-string v19, "\ud83c\udf11"

    .line 387
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_26
    const-string v19, "\ud83c\udf15"

    .line 388
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf1c"

    .line 389
    aput-object v19, v3, v0

    const-string v19, "emoji_1f31c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf1b"

    .line 390
    aput-object v19, v3, v0

    const-string v19, "emoji_1f31b"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf19"

    .line 391
    aput-object v19, v3, v0

    const-string v19, "emoji_1f319"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_27

    const-string v19, "\ud83c\udf0d"

    .line 392
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_27
    const-string v19, "\ud83c\udf0b"

    .line 393
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf0c"

    .line 394
    aput-object v19, v3, v0

    const-string v19, "emoji_1f30c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf20"

    .line 395
    aput-object v19, v3, v0

    const-string v19, "emoji_1f320"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\u2b50"

    .line 396
    aput-object v19, v3, v0

    const-string v19, "emoji_2b50"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\u2600"

    .line 397
    aput-object v19, v3, v0

    const-string v19, "smile67"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043e\u043b\u043d\u0446\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u26c5"

    .line 398
    aput-object v19, v3, v0

    const-string v19, "smile34"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043e\u043b\u043d\u0446\u0435 \u0437\u0430 \u043e\u0431\u043b\u0430\u043a\u0430\u043c\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2601"

    .line 399
    aput-object v19, v3, v0

    const-string v19, "smile2601"

    aput-object v19, v4, v0

    const-string v19, "\u043e\u0431\u043b\u0430\u043a\u043e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u26a1"

    .line 400
    aput-object v19, v3, v0

    const-string v19, "smile26a1"

    aput-object v19, v4, v0

    const-string v19, "\u043c\u043e\u043b\u043d\u0438\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2614"

    .line 401
    aput-object v19, v3, v0

    const-string v19, "emoji_2614"

    aput-object v19, v4, v0

    const-string v19, "\u0437\u043e\u043d\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\u2744"

    .line 402
    aput-object v19, v3, v0

    const-string v19, "smile162"

    aput-object v19, v4, v0

    const-string v19, "\u0441\u043d\u0435\u0436\u0438\u043d\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_28

    const-string v19, "\u26c4"

    .line 403
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_28
    const-string v19, "\ud83c\udf00"

    .line 404
    aput-object v19, v3, v0

    const-string v19, "emoji_1f300"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf08"

    .line 405
    aput-object v19, v3, v0

    const-string v19, "emoji_1f308"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u0430\u0434\u0443\u0433\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf0a"

    .line 406
    aput-object v19, v3, v0

    const-string v19, "emoji_1f30a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    .line 407
    aget v19, v1, v8

    sub-int v19, v0, v19

    aput v19, v1, v9

    const-string v19, "\ud83d\udc9d"

    .line 410
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc9d"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_29

    const-string v19, "\ud83c\udf8e"

    .line 411
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_29
    const-string v19, "\ud83c\udf93"

    .line 412
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf86"

    .line 413
    aput-object v19, v3, v0

    const-string v19, "emoji_1f386"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf87"

    .line 414
    aput-object v19, v3, v0

    const-string v19, "emoji_1f387"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc7b"

    .line 415
    aput-object v19, v3, v0

    const-string v19, "smile111"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf85"

    .line 416
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_2a

    const-string v19, "\ud83c\udf84"

    .line 417
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2a
    const-string v19, "\ud83c\udf81"

    .line 418
    aput-object v19, v3, v0

    const-string v19, "smile42"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_2b

    const-string v19, "\ud83c\udf8b"

    .line 419
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2b
    const-string v19, "\ud83c\udf89"

    .line 420
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf89"

    aput-object v19, v4, v0

    const-string v19, "\u0445\u043b\u043e\u043f\u0443\u0448\u043a\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf8a"

    .line 421
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf8a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf88"

    .line 422
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf88"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u043e\u0437\u0434\u0443\u0448\u043d\u044b\u0439 \u0448\u0430\u0440\u0438\u043a"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd2e"

    .line 423
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcf7"

    .line 424
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcf7"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_2c

    const-string v19, "\ud83d\udcf9"

    .line 425
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2c
    if-eqz v10, :cond_2d

    const-string v19, "\ud83d\udcbf"

    .line 426
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    const-string v19, "\ud83d\udcc0"

    .line 427
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_2e

    const-string v19, "\ud83d\udcbb"

    .line 428
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2e
    const-string v19, "\ud83d\udcf1"

    .line 429
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u260e\ufe0f"

    .line 430
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_2f

    const-string v19, "\ud83d\udcde"

    .line 431
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    if-eqz v10, :cond_30

    const-string v19, "\ud83d\udcfa"

    .line 432
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_30
    if-eqz v10, :cond_31

    const-string v19, "\ud83d\udcfb"

    .line 433
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_31
    if-eqz v10, :cond_32

    const-string v19, "\ud83d\udd0a"

    .line 434
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_32
    if-eqz v10, :cond_33

    const-string v19, "\ud83d\udd09"

    .line 435
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_33
    if-eqz v10, :cond_34

    const-string v19, "\ud83d\udd08"

    .line 436
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_34
    const-string v19, "\ud83d\udce2"

    .line 437
    aput-object v19, v3, v0

    const-string v19, "smiled83ddce2"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u0440\u043e\u043c\u043a\u043e\u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0435\u043b\u044c"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_35

    const-string v19, "\ud83d\udce3"

    .line 438
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_35
    if-eqz v10, :cond_36

    const-string v19, "\u23f3"

    .line 439
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_36
    if-eqz v10, :cond_37

    const-string v19, "\u231b"

    .line 440
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_37
    if-eqz v10, :cond_38

    const-string v19, "\u23f0"

    .line 441
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_38
    if-eqz v10, :cond_39

    const-string v19, "\u231a"

    .line 442
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_39
    if-eqz v10, :cond_3a

    const-string v19, "\ud83d\udd13"

    .line 443
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3a
    if-eqz v10, :cond_3b

    const-string v19, "\ud83d\udd12"

    .line 444
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3b
    const-string v19, "\ud83d\udd10"

    .line 445
    aput-object v19, v3, v0

    const-string v19, "emoji_1f510"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_3c

    const-string v19, "\ud83d\udd11"

    .line 446
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3c
    if-eqz v10, :cond_3d

    const-string v19, "\ud83d\udca1"

    .line 447
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3d
    if-eqz v10, :cond_3e

    const-string v19, "\ud83d\udd06"

    .line 448
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    if-eqz v10, :cond_3f

    const-string v19, "\ud83d\udd0b"

    .line 449
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3f
    if-eqz v10, :cond_40

    const-string v19, "\ud83d\udec0"

    .line 450
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_40
    if-eqz v10, :cond_41

    const-string v19, "\ud83d\udebf"

    .line 451
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_41
    if-eqz v10, :cond_42

    const-string v19, "\ud83d\udebd"

    .line 452
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_42
    if-eqz v10, :cond_43

    const-string v19, "\ud83d\udd27"

    .line 453
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_43
    const-string v19, "\ud83d\udd28"

    .line 454
    aput-object v19, v3, v0

    const-string v19, "smiled83ddd28"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udeac"

    .line 455
    aput-object v19, v3, v0

    const-string v19, "smiled83ddeac"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udca3"

    .line 456
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd2b"

    .line 457
    aput-object v19, v3, v0

    const-string v19, "smiled83ddd2b"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0438\u0441\u0442\u043e\u043b\u0435\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udd2a"

    .line 458
    aput-object v19, v3, v0

    const-string v19, "smiled83ddd2a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc8a"

    .line 459
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc8a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udc89"

    .line 460
    aput-object v19, v3, v0

    const-string v19, "smiled83ddc89"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcb0"

    .line 461
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcb0"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcb5"

    .line 462
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcb5"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcb6"

    .line 463
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcb6"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udcb8"

    .line 464
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcb8"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_44

    const-string v19, "\ud83d\udce5"

    .line 465
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_44
    const-string v19, "\ud83d\udcdd"

    .line 466
    aput-object v19, v3, v0

    const-string v19, "smiled83ddcdd"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_45

    const-string v19, "\ud83d\udcca"

    .line 467
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_45
    if-eqz v10, :cond_46

    const-string v19, "\ud83d\udcc8"

    .line 468
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_46
    if-eqz v10, :cond_47

    const-string v19, "\ud83d\udcc9"

    .line 469
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_47
    if-eqz v10, :cond_48

    const-string v19, "\ud83d\udcc5"

    .line 470
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_48
    const-string v19, "\u2702\ufe0f"

    .line 471
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udccc"

    .line 472
    aput-object v19, v3, v0

    const-string v19, "smiled83ddccc"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_49

    const-string v19, "\ud83d\udcce"

    .line 473
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_49
    const-string v19, "\u2712\ufe0f"

    .line 474
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u270f\ufe0f"

    .line 475
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_4a

    const-string v19, "\ud83d\udcd5"

    .line 476
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4a
    if-eqz v10, :cond_4b

    const-string v19, "\ud83d\udcda"

    .line 477
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4b
    if-eqz v10, :cond_4c

    const-string v19, "\ud83d\udcd6"

    .line 478
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4c
    const-string v19, "\ud83d\udcdb"

    .line 479
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_4d

    const-string v19, "\ud83d\udd2c"

    .line 480
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4d
    if-eqz v10, :cond_4e

    const-string v19, "\ud83d\udcf0"

    .line 481
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4e
    if-eqz v10, :cond_4f

    const-string v19, "\ud83c\udfa4"

    .line 482
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4f
    if-eqz v10, :cond_50

    const-string v19, "\ud83c\udfa7"

    .line 483
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_50
    if-eqz v10, :cond_51

    const-string v19, "\ud83c\udfbc"

    .line 484
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_51
    const-string v19, "\ud83c\udfb5"

    .line 485
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udfb6"

    .line 486
    aput-object v19, v3, v0

    const-string v19, "emoji_1f3b6"

    aput-object v19, v4, v0

    const-string v19, "\u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u044b\u0445 \u043d\u043e\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_52

    const-string v19, "\ud83c\udfb9"

    .line 487
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_52
    const-string v19, "\ud83c\udfbb"

    .line 488
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_53

    const-string v19, "\ud83c\udfba"

    .line 489
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_53
    if-eqz v10, :cond_54

    const-string v19, "\ud83c\udfb7"

    .line 490
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_54
    if-eqz v10, :cond_55

    const-string v19, "\ud83c\udfb8"

    .line 491
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_55
    if-eqz v10, :cond_56

    const-string v19, "\ud83d\udc7e"

    .line 492
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_56
    if-eqz v10, :cond_57

    const-string v19, "\ud83c\udfae"

    .line 493
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_57
    if-eqz v10, :cond_58

    const-string v19, "\ud83c\udfc0"

    .line 494
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_58
    const-string v19, "\u26bd"

    .line 495
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v6, :cond_59

    const-string v19, "\ud83c\udfd0"

    .line 496
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_59
    if-eqz v10, :cond_5a

    const-string v19, "\ud83c\udfbe"

    .line 497
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5a
    if-eqz v10, :cond_5b

    const-string v19, "\ud83c\udfb1"

    .line 498
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5b
    const-string v19, "\ud83d\udeb4"

    .line 499
    aput-object v19, v3, v0

    const-string v19, "smiled83ddeb4"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udfc1"

    .line 500
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_5c

    const-string v19, "\ud83c\udfc6"

    .line 501
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5c
    if-eqz v10, :cond_5d

    const-string v19, "\ud83c\udfbf"

    .line 502
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5d
    if-eqz v10, :cond_5e

    const-string v19, "\ud83c\udfc2"

    .line 503
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5e
    if-eqz v10, :cond_5f

    const-string v19, "\ud83c\udfca"

    .line 504
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_5f
    if-eqz v10, :cond_60

    const-string v19, "\ud83c\udfa3"

    .line 505
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_60
    const-string v19, "\u2615"

    .line 506
    aput-object v19, v3, v0

    const-string v19, "smile2615"

    aput-object v19, v4, v0

    const-string v19, "\u043a\u0440\u0443\u0436\u043a\u0430 \u043a\u043e\u0444\u0444\u0435"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_61

    const-string v19, "\ud83c\udf75"

    .line 507
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_61
    const-string v19, "\ud83c\udf7c"

    .line 508
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf7c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf7a"

    .line 509
    aput-object v19, v3, v0

    const-string v19, "smile37"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf7b"

    .line 510
    aput-object v19, v3, v0

    const-string v19, "smile38"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd42"

    .line 511
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd42"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u043e\u043a\u0430\u043b\u044b \u0448\u0430\u043c\u043f\u0430\u043d\u0441\u043a\u043e\u0433\u043e"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf78"

    .line 512
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf78"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf79"

    .line 513
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf79"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf77"

    .line 514
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf77"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83e\udd43"

    .line 515
    aput-object v19, v3, v0

    const-string v19, "emoji_d83edd43"

    aput-object v19, v4, v0

    const-string v19, "\u0431\u043e\u043a\u0430\u043b \u0432\u0438\u0441\u043a\u0438"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_62

    const-string v19, "\ud83c\udf74"

    .line 516
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_62
    const-string v19, "\ud83c\udf55"

    .line 517
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf54"

    .line 518
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf5f"

    .line 519
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf57"

    .line 520
    aput-object v19, v3, v0

    const-string v19, "smile88"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_63

    const-string v19, "\ud83c\udf56"

    .line 521
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_63
    if-eqz v10, :cond_64

    const-string v19, "\ud83c\udf5d"

    .line 522
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_64
    const-string v19, "\ud83c\udf64"

    .line 523
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf63"

    .line 524
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_65

    const-string v19, "\ud83c\udf65"

    .line 525
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_65
    if-eqz v10, :cond_66

    const-string v19, "\ud83c\udf5c"

    .line 526
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_66
    if-eqz v10, :cond_67

    const-string v19, "\ud83c\udf72"

    .line 527
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_67
    const-string v19, "\ud83c\udf61"

    .line 528
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_68

    const-string v19, "\ud83c\udf73"

    .line 529
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_68
    const-string v19, "\ud83c\udf69"

    .line 530
    aput-object v19, v3, v0

    const-string v19, "smile89"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_69

    const-string v19, "\ud83c\udf6e"

    .line 531
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_69
    const-string v19, "\ud83c\udf66"

    .line 532
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf66"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_6a

    const-string v19, "\ud83c\udf68"

    .line 533
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6a
    if-eqz v10, :cond_6b

    const-string v19, "\ud83c\udf67"

    .line 534
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6b
    const-string v19, "\ud83c\udf82"

    .line 535
    aput-object v19, v3, v0

    const-string v19, "smile43"

    aput-object v19, v4, v0

    const-string v19, "\u043f\u0440\u0430\u0437\u0434\u043d\u0438\u0447\u043d\u044b\u0439 \u0442\u043e\u0440\u0442"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf70"

    .line 536
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf70"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf6a"

    .line 537
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf6a"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf6b"

    .line 538
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf6b"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf6c"

    .line 539
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf6c"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf6d"

    .line 540
    aput-object v19, v3, v0

    const-string v19, "smile77"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf2f"

    .line 541
    aput-object v19, v3, v0

    const-string v19, "emoji_d83cdf2f"

    aput-object v19, v4, v0

    const-string v19, "\u0448\u0430\u0443\u0440\u043c\u0430"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_6c

    const-string v19, "\ud83c\udf6f"

    .line 542
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6c
    const-string v19, "\ud83c\udf4e"

    .line 543
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_6d

    const-string v19, "\ud83c\udf4f"

    .line 544
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6d
    const-string v19, "\ud83c\udf4a"

    .line 545
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf4b"

    .line 546
    aput-object v19, v3, v0

    const-string v19, "smile73"

    aput-object v19, v4, v0

    const-string v19, "\u043b\u0438\u043c\u043e\u043d"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf52"

    .line 547
    aput-object v19, v3, v0

    const-string v19, "smile41"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u0438\u0448\u043d\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf47"

    .line 548
    aput-object v19, v3, v0

    const-string v19, "smiled83cdf47"

    aput-object v19, v4, v0

    const-string v19, "\u0432\u0438\u043d\u043e\u0433\u0440\u0430\u0434"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf49"

    .line 549
    aput-object v19, v3, v0

    const-string v19, "smile81"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf53"

    .line 550
    aput-object v19, v3, v0

    const-string v19, "smile84"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf51"

    .line 551
    aput-object v19, v3, v0

    const-string v19, "smile83"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf4c"

    .line 552
    aput-object v19, v3, v0

    const-string v19, "smile36"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_6e

    const-string v19, "\ud83c\udf50"

    .line 553
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6e
    if-eqz v10, :cond_6f

    const-string v19, "\ud83c\udf4d"

    .line 554
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_6f
    const-string v19, "\ud83c\udf46"

    .line 555
    aput-object v19, v3, v0

    const-string v19, "smile80"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\udf45"

    .line 556
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_70

    const-string v19, "\ud83c\udf3d"

    .line 557
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_70
    const-string v19, "\u26b0"

    .line 558
    aput-object v19, v3, v0

    const-string v19, "emoji_26b0"

    aput-object v19, v4, v0

    const-string v19, "\u0433\u0440\u043e\u0431"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    .line 559
    aget v19, v1, v8

    sub-int v19, v0, v19

    aget v20, v1, v9

    sub-int v19, v19, v20

    aput v19, v1, v14

    const-string v19, "\ud83c\udfe0"

    .line 562
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_71

    const-string v19, "\ud83c\udfe5"

    .line 563
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_71
    const-string v19, "\ud83c\udfe9"

    .line 564
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_72

    const-string v19, "\ud83c\udfe8"

    .line 565
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_72
    if-eqz v10, :cond_73

    const-string v19, "\ud83d\udc92"

    .line 566
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_73
    if-eqz v10, :cond_74

    const-string v19, "\u26ea"

    .line 567
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_74
    if-eqz v10, :cond_75

    const-string v19, "\ud83c\udf06"

    .line 568
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_75
    if-eqz v10, :cond_76

    const-string v19, "\u26fa"

    .line 569
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_76
    if-eqz v10, :cond_77

    const-string v19, "\ud83c\udf04"

    .line 570
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_77
    const-string v19, "\ud83c\udf05"

    .line 571
    aput-object v19, v3, v0

    const-string v19, "emoji_1f305"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_78

    const-string v19, "\ud83c\udf03"

    .line 572
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_78
    if-eqz v10, :cond_79

    const-string v19, "\ud83d\uddfd"

    .line 573
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_79
    if-eqz v10, :cond_7a

    const-string v19, "\ud83c\udfa1"

    .line 574
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7a
    if-eqz v10, :cond_7b

    const-string v19, "\u26f5"

    .line 575
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7b
    if-eqz v10, :cond_7c

    const-string v19, "\ud83d\udea3"

    .line 576
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7c
    const-string v19, "\ud83d\ude80"

    .line 577
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u2708"

    .line 578
    aput-object v19, v3, v0

    const-string v19, "smile2708"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\ude8c"

    .line 579
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_7d

    const-string v19, "\ud83d\ude99"

    .line 580
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7d
    if-eqz v10, :cond_7e

    const-string v19, "\ud83d\ude98"

    .line 581
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7e
    const-string v19, "\ud83d\ude97"

    .line 582
    aput-object v19, v3, v0

    const-string v19, "smiled83dde97"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_7f

    const-string v19, "\ud83d\ude96"

    .line 583
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_7f
    if-eqz v10, :cond_80

    const-string v19, "\ud83d\ude9a"

    .line 584
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_80
    if-eqz v10, :cond_81

    const-string v19, "\ud83d\ude94"

    .line 585
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_81
    const-string v19, "\ud83d\ude91"

    .line 586
    aput-object v19, v3, v0

    const-string v19, "smiled83dde91"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\udeb2"

    .line 587
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_82

    const-string v19, "\ud83d\ude9c"

    .line 588
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_82
    const-string v19, "\u26a0"

    .line 589
    aput-object v19, v3, v0

    const-string v19, "smile26a0"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_83

    const-string v19, "\u26fd"

    .line 590
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_83
    if-eqz v10, :cond_84

    const-string v19, "\ud83c\udfb0"

    .line 591
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_84
    const-string v19, "\u2668\ufe0f"

    .line 592
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83d\uddff"

    .line 593
    aput-object v19, v3, v0

    const-string v19, "smiled83dddff"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_85

    const-string v19, "\ud83c\udfad"

    .line 594
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_85
    const-string v19, "\ud83d\udccd"

    .line 595
    aput-object v19, v3, v0

    const-string v19, "smiled83ddccd"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_86

    const-string v19, "\ud83d\udea9"

    .line 596
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_86
    if-eqz v6, :cond_87

    const-string v19, "\ud83c\uddef\ud83c\uddf5"

    .line 597
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_87
    if-eqz v6, :cond_88

    const-string v19, "\ud83c\udde9\ud83c\uddea"

    .line 598
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_88
    if-eqz v6, :cond_89

    const-string v19, "\ud83c\uddeb\ud83c\uddf7"

    .line 599
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_89
    if-eqz v6, :cond_8a

    const-string v19, "\ud83c\uddee\ud83c\uddf9"

    .line 600
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8a
    const-string v19, "\ud83c\uddf7\ud83c\uddfa"

    .line 601
    aput-object v19, v3, v0

    const-string v19, "smiled83cddf7d83cddfa"

    aput-object v19, v4, v0

    const-string v19, "\u0440\u043e\u0441\u0441\u0438\u044f"

    aput-object v19, v5, v0

    add-int/2addr v0, v9

    const-string v19, "\ud83c\uddfa\ud83c\udde6"

    .line 602
    aput-object v19, v3, v0

    const-string v19, "emojid83cddfad83cdde6"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v6, :cond_8b

    const-string v19, "\ud83c\udde7\ud83c\uddfe"

    .line 603
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8b
    if-eqz v6, :cond_8c

    const-string v19, "\ud83c\uddf0\ud83c\uddff"

    .line 604
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8c
    if-eqz v6, :cond_8d

    const-string v19, "\ud83c\uddee\ud83c\uddf1"

    .line 605
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8d
    if-eqz v6, :cond_8e

    const-string v19, "\ud83c\uddf9\ud83c\uddf7"

    .line 606
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 607
    :cond_8e
    aget v19, v1, v8

    sub-int v19, v0, v19

    aget v20, v1, v9

    sub-int v19, v19, v20

    aget v20, v1, v14

    sub-int v19, v19, v20

    aput v19, v1, v13

    const-string v19, "1\u20e3"

    .line 610
    aput-object v19, v3, v0

    const-string v19, "emoji_0031"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "2\u20e3"

    .line 611
    aput-object v19, v3, v0

    const-string v19, "emoji_0032"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "3\u20e3"

    .line 612
    aput-object v19, v3, v0

    const-string v19, "emoji_0033"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "4\u20e3"

    .line 613
    aput-object v19, v3, v0

    const-string v19, "emoji_0034"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "5\u20e3"

    .line 614
    aput-object v19, v3, v0

    const-string v19, "emoji_0035"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "6\u20e3"

    .line 615
    aput-object v19, v3, v0

    const-string v19, "emoji_0036"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "7\u20e3"

    .line 616
    aput-object v19, v3, v0

    const-string v19, "emoji_0037"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "8\u20e3"

    .line 617
    aput-object v19, v3, v0

    const-string v19, "emoji_0038"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "9\u20e3"

    .line 618
    aput-object v19, v3, v0

    const-string v19, "emoji_0039"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    const-string v19, "0\u20e3"

    .line 619
    aput-object v19, v3, v0

    const-string v19, "emoji_0030"

    aput-object v19, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_8f

    const-string v19, "\u2b06\ufe0f"

    .line 620
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_8f
    if-eqz v10, :cond_90

    const-string v19, "\u2b07\ufe0f"

    .line 621
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_90
    if-eqz v10, :cond_91

    const-string v19, "\u2b05\ufe0f"

    .line 622
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_91
    const-string v19, "\u27a1\ufe0f"

    .line 623
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u2197\ufe0f"

    .line 624
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u2199\ufe0f"

    .line 625
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u2194\ufe0f"

    .line 626
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_92

    const-string v19, "\ud83d\udd04"

    .line 627
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_92
    const-string v19, "\u25c0\ufe0f"

    .line 629
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u25b6\ufe0f"

    .line 630
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_93

    const-string v19, "\ud83d\udd3d"

    .line 631
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_93
    const-string v19, "\u21a9\ufe0f"

    .line 632
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    const-string v19, "\u21aa\ufe0f"

    .line 633
    aput-object v19, v3, v0

    add-int/2addr v0, v9

    if-eqz v6, :cond_94

    const-string v19, "\u2139\ufe0f"

    .line 634
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_94
    if-eqz v10, :cond_95

    const-string v19, "\u2935\ufe0f"

    .line 635
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_95
    if-eqz v10, :cond_96

    const-string v19, "\u2934\ufe0f"

    .line 636
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_96
    if-eqz v10, :cond_97

    const-string v19, "\ud83c\udd95"

    .line 637
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_97
    if-eqz v10, :cond_98

    const-string v19, "\ud83c\udd99"

    .line 638
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_98
    if-eqz v10, :cond_99

    const-string v19, "\ud83c\udd93"

    .line 639
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_99
    if-eqz v10, :cond_9a

    const-string v19, "\ud83d\udeae"

    .line 641
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9a
    if-eqz v6, :cond_9b

    const-string v19, "\u24c2\ufe0f"

    .line 642
    aput-object v19, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9b
    if-eqz v6, :cond_9c

    const-string v6, "\u3299\ufe0f"

    .line 643
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9c
    const-string v6, "\ud83c\udd98"

    .line 644
    aput-object v6, v3, v0

    const-string v6, "emoji_1f198"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_9d

    const-string v6, "\ud83d\udeab"

    .line 646
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9d
    const-string v6, "\ud83d\udd1e"

    .line 647
    aput-object v6, v3, v0

    const-string v6, "smile167"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\u26d4"

    .line 648
    aput-object v6, v3, v0

    const-string v6, "smile26d4"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\u2733\ufe0f"

    .line 649
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\u2747\ufe0f"

    .line 650
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\u2705"

    .line 651
    aput-object v6, v3, v0

    const-string v6, "emoji_2705"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\u2734\ufe0f"

    .line 652
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\ud83d\udc9f"

    .line 653
    aput-object v6, v3, v0

    const-string v6, "smiled83ddc9f"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_9e

    const-string v6, "\ud83c\udd9a"

    .line 654
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9e
    const-string v6, "\ud83c\udd70"

    .line 655
    aput-object v6, v3, v0

    const-string v6, "emoji_1f170"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\ud83c\udd71"

    .line 656
    aput-object v6, v3, v0

    const-string v6, "emoji_1f171"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\ud83c\udd7e"

    .line 657
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_9f

    const-string v6, "\ud83d\udca0"

    .line 658
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_9f
    if-eqz v10, :cond_a0

    const-string v6, "\ud83d\udcb2"

    .line 659
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a0
    const-string v6, "\u00a9\ufe0f"

    .line 660
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\u00ae\ufe0f"

    .line 661
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\u2122\ufe0f"

    .line 662
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a1

    const-string v6, "\u3030\ufe0f"

    .line 663
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a1
    if-eqz v10, :cond_a2

    const-string v6, "\ud83d\udd1d"

    .line 664
    aput-object v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a2
    const-string v6, "\u274c"

    .line 665
    aput-object v6, v3, v0

    const-string v6, "emoji_274c"

    aput-object v6, v4, v0

    add-int/2addr v0, v9

    const-string v6, "\u2b55"

    .line 666
    aput-object v6, v3, v0

    add-int/2addr v0, v9

    const-string v6, "\u2757"

    .line 667
    aput-object v6, v3, v0

    const-string v6, "emoji_2757"

    aput-object v6, v4, v0

    const-string v6, "\u0432\u043e\u0441\u043a\u043b\u0438\u0446\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v6, v5, v0

    add-int/2addr v0, v9

    const-string v6, "\u2753"

    .line 669
    aput-object v6, v3, v0

    const-string v6, "emoji_2753"

    aput-object v6, v4, v0

    const-string v6, "\u0432\u043e\u043f\u0440\u043e\u0441\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v6, v5, v0

    add-int/2addr v0, v9

    const-string v5, "\u2755"

    .line 670
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a3

    const-string v5, "\u2754"

    .line 671
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a3
    if-eqz v10, :cond_a4

    const-string v5, "\ud83d\udd03"

    .line 672
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a4
    const-string v5, "\u2716\ufe0f"

    .line 674
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    const-string v5, "\u2795"

    .line 675
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    const-string v5, "\u2660"

    .line 676
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    const-string v5, "\u2665"

    .line 677
    aput-object v5, v3, v0

    const-string v5, "emoji_2665"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    const-string v5, "\u2663"

    .line 678
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    const-string v5, "\u2666"

    .line 679
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    const-string v5, "\ud83d\udcaf"

    .line 680
    aput-object v5, v3, v0

    const-string v5, "emoji_1f4af"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    const-string v5, "\u2714"

    .line 681
    aput-object v5, v3, v0

    const-string v5, "emoji_2714"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a5

    const-string v5, "\u2611\ufe0f"

    .line 682
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a5
    if-eqz v10, :cond_a6

    const-string v5, "\ud83d\udd18"

    .line 683
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a6
    const-string v5, "\ud83d\udd17"

    .line 684
    aput-object v5, v3, v0

    const-string v5, "emoji_1f517"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a7

    const-string v5, "\ud83d\udd33"

    .line 685
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a7
    const-string v5, "\u25aa\ufe0f"

    .line 686
    aput-object v5, v3, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_a8

    const-string v5, "\u25ab\ufe0f"

    .line 687
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a8
    if-eqz v10, :cond_a9

    const-string v5, "\u26ab"

    .line 688
    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_a9
    const-string v5, "\u26aa"

    .line 690
    aput-object v5, v3, v0

    const-string v5, "emoji_26aa"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    const-string v5, "\ud83d\udd34"

    .line 691
    aput-object v5, v3, v0

    const-string v5, "emoji_1f534"

    aput-object v5, v4, v0

    add-int/2addr v0, v9

    if-eqz v10, :cond_aa

    const-string v4, "\ud83d\udd35"

    .line 692
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_aa
    if-eqz v10, :cond_ab

    const-string v4, "\ud83d\udd3b"

    .line 693
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_ab
    if-eqz v10, :cond_ac

    const-string v4, "\ud83d\udd36"

    .line 694
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_ac
    if-eqz v10, :cond_ad

    const-string v4, "\ud83d\udd37"

    .line 695
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_ad
    if-eqz v10, :cond_ae

    const-string v4, "\ud83d\udd38"

    .line 696
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_ae
    if-eqz v10, :cond_af

    const-string v4, "\ud83d\udd39"

    .line 697
    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    .line 698
    :cond_af
    aget v3, v1, v8

    sub-int/2addr v0, v3

    aget v3, v1, v9

    sub-int/2addr v0, v3

    aget v3, v1, v14

    sub-int/2addr v0, v3

    aget v3, v1, v13

    sub-int/2addr v0, v3

    aput v0, v1, v15

    .line 700
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "smiles_vk"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 701
    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->replaceVkSmiles(Z)V

    .line 704
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v11}, Ljava/util/HashSet;-><init>(I)V

    const/4 v1, 0x0

    const/16 v3, 0x26e

    :goto_2
    if-ge v1, v3, :cond_b2

    .line 707
    sget-object v4, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-nez v4, :cond_b0

    goto :goto_3

    .line 708
    :cond_b0
    sget-object v4, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_b1

    .line 709
    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_b1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 711
    :cond_b2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [C

    sput-object v1, Lcom/perm/utils/SmileHelper;->beginnings:[C

    .line 713
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 714
    sget-object v3, Lcom/perm/utils/SmileHelper;->beginnings:[C

    add-int/lit8 v4, v8, 0x1

    aput-char v1, v3, v8

    move v8, v4

    goto :goto_4

    .line 716
    :cond_b3
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/perm/utils/SmileHelper;->size:I

    if-le v0, v2, :cond_b4

    int-to-double v0, v0

    const-wide v2, 0x3ff599999999999aL    # 1.35

    .line 722
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lcom/perm/utils/SmileHelper;->size:I

    goto :goto_5

    :cond_b4
    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    .line 727
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-int v0, v0

    sput v0, Lcom/perm/utils/SmileHelper;->size:I

    .line 730
    :goto_5
    sget v0, Lcom/perm/kate/ScaleTextView;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b5

    .line 731
    sget v1, Lcom/perm/utils/SmileHelper;->size:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    sput v0, Lcom/perm/utils/SmileHelper;->size:I

    :cond_b5
    const/16 v0, 0x3e8

    .line 733
    sput v0, Lcom/perm/utils/SmileHelper;->max_smiles:I

    .line 734
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v7, :cond_bb

    .line 737
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-A505F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 738
    sput v16, Lcom/perm/utils/SmileHelper;->max_smiles:I

    :cond_b6
    const-string v1, "M2007J20CG"

    .line 740
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 741
    sput v16, Lcom/perm/utils/SmileHelper;->max_smiles:I

    :cond_b7
    const-string v1, "SM-A305FN"

    .line 743
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 744
    sput v12, Lcom/perm/utils/SmileHelper;->max_smiles:I

    :cond_b8
    const-string v1, "A5_Pro"

    .line 746
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b9

    const/16 v1, 0x28

    .line 747
    sput v1, Lcom/perm/utils/SmileHelper;->max_smiles:I

    goto :goto_6

    :cond_b9
    const/16 v1, 0x28

    :goto_6
    const-string v2, "Redmi Note 9 Pro"

    .line 749
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 750
    sput v1, Lcom/perm/utils/SmileHelper;->max_smiles:I

    :cond_ba
    const-string v2, "MI 9"

    .line 752
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 753
    sput v1, Lcom/perm/utils/SmileHelper;->max_smiles:I

    :cond_bb
    const/4 v0, 0x0

    .line 813
    sput-object v0, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    .line 924
    new-instance v0, Landroidx/collection/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/collection/LruCache;-><init>(I)V

    sput-object v0, Lcom/perm/utils/SmileHelper;->cache:Landroidx/collection/LruCache;

    const-string v0, "\u0441\u043c\u0430\u0439\u043b"

    .line 940
    sput-object v0, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    return-void
.end method

.method public static addSmileDescriptions()Z
    .locals 3

    .line 919
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "replace_smiles"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static checkIfSmilesExist(Ljava/lang/String;)Z
    .locals 6

    .line 807
    sget-object v0, Lcom/perm/utils/SmileHelper;->beginnings:[C

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 808
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getRecentPairs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5

    .line 1045
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    :try_start_0
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1048
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    .line 1049
    :goto_1
    sget-object v3, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1050
    aget-object v4, v3, v2

    if-eqz v4, :cond_1

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1051
    new-instance v3, Lcom/perm/utils/SmileHelper$ResCodePair;

    invoke-direct {v3}, Lcom/perm/utils/SmileHelper$ResCodePair;-><init>()V

    .line 1052
    iput-object v1, v3, Lcom/perm/utils/SmileHelper$ResCodePair;->code:Ljava/lang/String;

    .line 1053
    sget-object v1, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v1, v1, v2

    iput-object v1, v3, Lcom/perm/utils/SmileHelper$ResCodePair;->res:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 1060
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1061
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method public static getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2

    .line 994
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    .line 998
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "recent_smiles_codes"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 999
    invoke-static {p0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ";"

    .line 1000
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1001
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1004
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1005
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1008
    :cond_0
    :goto_0
    sget-object p0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getReplaceString(I)Ljava/lang/String;
    .locals 3

    .line 943
    sget-object v0, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    sget-object v0, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    .line 945
    sget-object v1, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    aget-object v2, v1, p0

    if-eqz v2, :cond_1

    .line 946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, v1, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "xxxx"

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 2

    .line 794
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->checkIfSmilesExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 802
    invoke-static {p0, v0, p1, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    return-object p1
.end method

.method public static getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 781
    invoke-static {p1}, Lcom/perm/utils/SmileHelper;->checkIfSmilesExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 785
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 787
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    return-object v0
.end method

.method public static initBlind(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "accessibility"

    .line 929
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 933
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 935
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.SmileHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V
    .locals 12

    .line 821
    :try_start_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 822
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->initBlind(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    .line 828
    :cond_0
    invoke-static {}, Lcom/perm/utils/SmileHelper;->isRiva()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    const/4 p3, 0x0

    .line 833
    :cond_1
    sget-object v0, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p3, 0x0

    .line 840
    :cond_2
    invoke-static {}, Lcom/perm/utils/SmileHelper;->addSmileDescriptions()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p3, 0x0

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x26e

    if-ge v0, v3, :cond_f

    .line 847
    sget-object v3, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_4

    goto/16 :goto_5

    .line 849
    :cond_4
    sget-object v3, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-nez v3, :cond_5

    goto/16 :goto_5

    :cond_5
    const/4 v4, 0x0

    .line 852
    :goto_1
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    const-string v5, "\ud83e\udd26"

    .line 855
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x200d

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v7, v4, 0x4

    if-lt v5, v7, :cond_6

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_6

    add-int/lit8 v5, v4, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v8, 0x2640

    if-ne v5, v8, :cond_6

    :goto_2
    move v4, v7

    goto :goto_1

    :cond_6
    const-string v5, "\ud83e\udd37"

    .line 861
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v7, v4, 0x4

    if-lt v5, v7, :cond_7

    add-int/lit8 v5, v4, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_7

    add-int/lit8 v5, v4, 0x3

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2642

    if-ne v5, v6, :cond_7

    goto :goto_2

    .line 866
    :cond_7
    sget v5, Lcom/perm/utils/SmileHelper;->max_smiles:I

    if-lt v2, v5, :cond_8

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 873
    invoke-static {v0}, Lcom/perm/utils/SmileHelper;->getReplaceString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz p3, :cond_a

    .line 879
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v7, v4, v5

    const/4 v9, 0x0

    sget-object v5, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_3
    move v10, v5

    move-object v5, p2

    move v6, v4

    move-object v8, v11

    invoke-interface/range {v5 .. v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 883
    sget-object v5, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 884
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 888
    :cond_a
    sget-object v5, Lcom/perm/utils/SmileHelper;->cache:Landroidx/collection/LruCache;

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-nez v7, :cond_b

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 891
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 892
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 893
    aget-object v6, v6, v0

    invoke-virtual {v5, v6, v8}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v8

    .line 897
    :cond_b
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 898
    sget v6, Lcom/perm/utils/SmileHelper;->size:I

    invoke-virtual {v5, v1, v1, v6, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 899
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_c

    .line 901
    sget-object v5, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 905
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int v8, v4, v5

    add-int/lit8 v9, v8, 0x2

    if-lt v7, v9, :cond_d

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v9, 0xd83c

    if-ne v7, v9, :cond_d

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v8, 0xdffb

    if-ne v7, v8, :cond_d

    add-int/lit8 v5, v5, 0x2

    :cond_d
    add-int/2addr v5, v4

    const/16 v7, 0x21

    .line 908
    invoke-interface {p2, v6, v4, v5, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v5

    goto/16 :goto_1

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 913
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 914
    invoke-static {p0, p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method private static isRiva()Z
    .locals 2

    .line 1068
    sget-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1069
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S500C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    .line 1070
    :cond_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static replaceVkSmiles(Z)V
    .locals 11

    const/16 v0, 0xe

    const/16 v1, 0x2b

    const/16 v2, 0x1f

    const/16 v3, 0x39

    const/16 v4, 0x38

    const/16 v5, 0x15

    const/16 v6, 0x12

    const/16 v7, 0xb

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p0, :cond_0

    .line 953
    sget-object p0, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v10, "smile02_vk"

    aput-object v10, p0, v9

    const-string v9, "smile148_vk"

    .line 954
    aput-object v9, p0, v8

    const-string v8, "smile05_vk"

    .line 955
    aput-object v8, p0, v7

    const-string v7, "smile09_vk"

    .line 956
    aput-object v7, p0, v6

    const-string v6, "smile12_vk"

    .line 957
    aput-object v6, p0, v5

    const-string v5, "smile10_vk"

    .line 958
    aput-object v5, p0, v4

    const-string v4, "smile156_vk"

    .line 959
    aput-object v4, p0, v3

    const-string v3, "smile15_vk"

    .line 960
    aput-object v3, p0, v2

    const-string v2, "smile22_vk"

    .line 961
    aput-object v2, p0, v1

    const-string v1, "smile23_vk"

    .line 962
    aput-object v1, p0, v0

    goto :goto_0

    .line 965
    :cond_0
    sget-object p0, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v10, "smile02"

    aput-object v10, p0, v9

    const-string v9, "smile148"

    .line 966
    aput-object v9, p0, v8

    const-string v8, "smile05"

    .line 967
    aput-object v8, p0, v7

    const-string v7, "smile09"

    .line 968
    aput-object v7, p0, v6

    const-string v6, "smile12"

    .line 969
    aput-object v6, p0, v5

    const-string v5, "smile10"

    .line 970
    aput-object v5, p0, v4

    const-string v4, "smile156"

    .line 971
    aput-object v4, p0, v3

    const-string v3, "smile15"

    .line 972
    aput-object v3, p0, v2

    const-string v2, "smile22"

    .line 973
    aput-object v2, p0, v1

    const-string v1, "smile23"

    .line 974
    aput-object v1, p0, v0

    :goto_0
    return-void
.end method

.method public static sendBackspace(Landroid/widget/EditText;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 982
    :try_start_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 984
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 985
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static setRecentSmileAndSave(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1013
    :try_start_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1014
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 1016
    :cond_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1018
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1020
    sget-object p1, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_1

    .line 1021
    sget-object p1, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    const-string p1, ""

    .line 1023
    :goto_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1026
    sget-object v0, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x1d

    if-ge v1, v0, :cond_2

    if-ge v1, v2, :cond_2

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-lt v1, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1037
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "recent_smiles_codes"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 1039
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1040
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

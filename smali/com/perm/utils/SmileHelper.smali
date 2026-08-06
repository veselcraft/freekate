.class public Lcom/perm/utils/SmileHelper;
.super Ljava/lang/Object;
.source "SmileHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/SmileHelper$ResCodePair;
    }
.end annotation


# static fields
.field private static beginnings:[C

.field public static blind:Ljava/lang/Boolean;

.field static final cache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static final codes:[Ljava/lang/String;

.field private static is_riva:Ljava/lang/Boolean;

.field public static pages:[I

.field public static prefix:Ljava/lang/String;

.field private static recent_smiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final resources:[Ljava/lang/String;

.field static size:I

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v8, 0x36f

    const/4 v7, 0x0

    .line 30
    const/4 v6, 0x5

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    sput-object v6, Lcom/perm/utils/SmileHelper;->pages:[I

    .line 31
    new-array v6, v8, [Ljava/lang/String;

    sput-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    .line 32
    new-array v6, v8, [Ljava/lang/String;

    sput-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    .line 33
    new-array v6, v8, [Ljava/lang/String;

    sput-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    .line 41
    sget-object v6, Lcom/perm/utils/SmileHelper;->pages:[I

    const/4 v8, 0x4

    sget-object v9, Lcom/perm/utils/SmileHelper;->pages:[I

    aget v9, v9, v7

    rsub-int v9, v9, 0x36f

    sget-object v10, Lcom/perm/utils/SmileHelper;->pages:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    sget-object v10, Lcom/perm/utils/SmileHelper;->pages:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    sub-int/2addr v9, v10

    sget-object v10, Lcom/perm/utils/SmileHelper;->pages:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aput v9, v6, v8

    .line 43
    const/4 v2, 0x0

    .line 48
    .local v2, "i":I
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile135"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u0435\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 49
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude03"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043e\u0441\u0445\u0438\u0449\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 50
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude00"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile149"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u0435\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 51
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441 \u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u043c\u0438\u0441\u044f \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 52
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u263a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile148"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u043b\u044b\u0431\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 53
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude09"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile03"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0434\u043c\u0438\u0433\u0438\u0432\u0430\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 54
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043b\u044e\u0431\u043b\u0451\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 55
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile139"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043e\u0437\u0434\u0443\u0448\u043d\u044b\u0439 \u043f\u043e\u0446\u0435\u043b\u0443\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 56
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0446\u0435\u043b\u0443\u0439 \u0441 \u0437\u0430\u043a\u0440\u044b\u0442\u044b\u043c\u0438 \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 57
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f617"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0446\u0435\u043b\u0443\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 58
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0446\u0435\u043b\u0443\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 59
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0434\u043c\u0438\u0433\u0438\u0432\u0430\u0435\u0442 \u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 60
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile137"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u0435\u0451\u0442\u0441\u044f \u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 61
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile151"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441 \u0432\u044b\u0441\u0443\u043d\u0443\u0442\u044b\u043c \u044f\u0437\u044b\u043a\u043e\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 62
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0440\u0430\u0441\u043d\u0435\u044e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 63
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0441\u043c\u0435\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 64
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u0430\u0434\u0443\u043c\u0447\u0438\u0432\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 65
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0431\u043b\u0435\u0433\u0447\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 66
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile09"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0435\u0447\u0430\u043b\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 67
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile159"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0437\u043e\u0447\u0430\u0440\u043e\u0432\u0430\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 68
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile154"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0430\u0441\u0442\u043e\u0439\u0447\u0438\u0432\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 69
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043b\u0451\u0437\u044b \u043d\u0430 \u0433\u043b\u0430\u0437\u0430\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 70
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile136"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043b\u0451\u0437\u044b \u0440\u0430\u0434\u043e\u0441\u0442\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 71
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0440\u043e\u043c\u043a\u0438\u0439 \u043f\u043b\u0430\u0447"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 72
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile143"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043e\u043d\u043d\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 73
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile150"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0437\u043e\u0447\u0430\u0440\u043e\u0432\u0430\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 74
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile21"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u043e\u043b\u043e\u0434\u043d\u044b\u0439 \u043f\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 75
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile157"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0434\u043e\u0441\u0442\u044c \u0432 \u0445\u043e\u043b\u043e\u0434\u043d\u043e\u043c \u043f\u043e\u0442\u0443"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 76
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0440\u0443\u0441\u0442\u044c \u0432 \u0445\u043e\u043b\u043e\u0434\u043d\u043e\u043c \u043f\u043e\u0442\u0443"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 77
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude29"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0441\u0442\u0430\u043b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 78
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile144"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0447\u0435\u043d\u044c \u0443\u0441\u0442\u0430\u043b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 79
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude28"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0438\u0441\u043f\u0443\u0433"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 80
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile163"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0440\u0438\u0447\u0438\u0442 \u043e\u0442 \u0441\u0442\u0440\u0430\u0445\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 81
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043b\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 82
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude21"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0447\u0435\u043d\u044c \u0437\u043b\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 83
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile153"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0442\u0440\u0438\u0443\u043c\u0444"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 84
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude16"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile152"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u0443\u0449\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 85
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u0435\u0445 \u0441 \u0437\u0430\u0436\u043c\u0443\u0440\u0435\u043d\u043d\u044b\u043c\u0438 \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 86
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u043b\u044b\u0431\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 87
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u043b\u0435\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 88
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0440\u0443\u0442\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 89
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile138"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043e\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 90
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile134"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0434\u0438\u0432\u043b\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 91
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0434\u0438\u0432\u043b\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 92
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude1f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile140"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0431\u0435\u0441\u043f\u043e\u043a\u043e\u0435\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 93
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile133"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u043f\u0435\u0447\u0430\u043b\u0435\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 94
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile155"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0430\u0434\u0430\u044e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 95
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u043e\u0431\u0440\u044b\u0439 \u0447\u0435\u0440\u0442\u0451\u043d\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 96
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile145"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043b\u043e\u0439 \u0447\u0435\u0440\u0442\u0451\u043d\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 97
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile158"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0435\u0434\u043e\u0443\u043c\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 98
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile141"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0441\u043c\u0435\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 99
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile16"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0435\u0439\u0442\u0440\u0430\u043b\u044c\u043d\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 100
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile131"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0435\u0434\u043e\u0432\u043e\u043b\u0435\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 101
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile132"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0435\u0434\u043e\u0443\u043c\u0435\u043d\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 102
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude36"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile142"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u043e\u0442 \u043d\u0430 \u0437\u0430\u043c\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 103
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0432\u044f\u0442\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 104
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude0f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0445\u043c\u044b\u043b\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 105
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile156"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0435\u0437 \u044d\u043c\u043e\u0446\u0438\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 107
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83dde42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u043b\u044b\u0431\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 108
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0431\u043d\u0438\u043c\u0430\u044e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 109
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0443\u043c\u0430\u044e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 110
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83dde44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0440\u0430\u0449\u0430\u044e \u0433\u043b\u0430\u0437\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 111
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u043e\u0442 \u043d\u0430 \u0437\u0430\u043c\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 112
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u0442\u0430\u043d\u0438\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 113
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2639"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2639"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u043c\u0443\u0440\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 114
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude41"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83dde41"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043b\u0435\u0433\u043a\u0430 \u0433\u0440\u0443\u0441\u0442\u043d\u044b\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 115
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83dde43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043d\u0438\u0437 \u0433\u043e\u043b\u043e\u0432\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 116
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441 \u0433\u0440\u0430\u0434\u0443\u0441\u043d\u0438\u043a\u043e\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 117
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0435\u0440\u0435\u0432\u044f\u0437\u0430\u043d\u043d\u043e\u0435 \u043b\u0438\u0446\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 118
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0435\u043d\u044c\u0433\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 119
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u044b\u0440\u043e\u0441 \u043d\u043e\u0441"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 120
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043c\u043e\u0440\u043a\u0430\u044e\u0441\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 121
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u041a\u0430\u0442\u0430\u044e\u0441\u044c \u043f\u043e \u043f\u043e\u043b\u0443 \u0441\u043e \u0441\u043c\u0435\u0445\u0443"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 122
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0443\u0441\u043a\u0430\u044e \u0441\u043b\u044e\u043d\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 123
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0442\u043e\u0448\u043d\u0438\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 124
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0444\u0435\u0439\u0441\u043f\u0430\u043b\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 125
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0436\u0438\u043c\u0430\u044e \u043f\u043b\u0435\u0447\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 126
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2620"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2620"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0447\u0435\u0440\u0435\u043f \u0438 \u043a\u043e\u0441\u0442\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 128
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc72"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc72"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 129
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc73"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc73"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 130
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 131
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc77"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f477"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 132
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc82"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc82"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 133
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc76"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f476"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0435\u0431\u0451\u043d\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 134
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc66"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc66"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 135
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc67"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc67"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0435\u0432\u043e\u0447\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 136
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc68"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc68"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 137
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc69"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc69"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0436\u0435\u043d\u0449\u0438\u043d\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 138
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc74"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc74"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0435\u0434\u0443\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 139
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc75"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f475"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0430\u0431\u0443\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 140
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc71"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc71"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0447\u0435\u043b\u043e\u0432\u0435\u043a \u0441\u043e \u0441\u0432\u0435\u0442\u043b\u044b\u043c\u0438 \u0432\u043e\u043b\u043e\u0441\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 141
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f47c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 142
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc78"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f478"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 143
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 144
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u043b\u044b\u0431\u0430\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 145
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043b\u044e\u0431\u043b\u0451\u043d\u043d\u044b\u0439 \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 146
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0446\u0435\u043b\u0443\u044e\u0449\u0438\u0439 \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 147
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0445\u043c\u044b\u043b\u044f\u044e\u0449\u0438\u0439\u0441\u044f \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 148
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude40"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde40"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0438\u0441\u043f\u0443\u0433\u0430\u043d\u043d\u044b\u0439 \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 149
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043b\u0430\u0447\u0443\u0449\u0438\u0439 \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 150
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u043e\u0442 \u0441\u043e \u0441\u043b\u0435\u0437\u0430\u043c\u0438 \u0440\u0430\u0434\u043e\u0441\u0442\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 151
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude3e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde3e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043b\u043e\u0439 \u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 152
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc79"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile147"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u042f\u043f\u043e\u043d\u0441\u043a\u0438\u0439 \u041e\u0433\u0440\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 153
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile165"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 154
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude48"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde48"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0433\u043b\u0430\u0437\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 155
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude49"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde49"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0443\u0448\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 156
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u041e\u0431\u0435\u0437\u044c\u044f\u043d\u0430 \u0437\u0430\u043a\u0440\u044b\u043b\u0430 \u0440\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 157
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc80"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f480"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0447\u0435\u0440\u0435\u043f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 158
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile146"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0440\u0438\u0448\u0435\u043b\u0435\u0446"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 159
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile161"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0430\u043a\u0430\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 160
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0433\u043e\u043d\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 161
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2728"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2728"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u0432\u0451\u0437\u0434\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 162
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0432\u0435\u0440\u043a\u0430\u044e\u0449\u0430\u044f \u0437\u0432\u0435\u0437\u0434\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 163
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4ab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u0434\u0430\u044e\u0449\u0430\u044f \u0437\u0432\u0435\u0437\u0434\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 164
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddca5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0437\u0440\u044b\u0432"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 165
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4a2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 166
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile164"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0430\u043f\u043b\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 167
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddca7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0430\u043f\u043b\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 168
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4a4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 169
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddca8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u044b\u043b\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 170
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile116"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0445\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 171
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc40"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile115"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u043b\u0430\u0437\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 172
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile117"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u043e\u0441"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 173
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc45"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc45"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u044f\u0437\u044b\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 174
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0443\u0431\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 175
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile28"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u043b\u044c\u0448\u043e\u0439 \u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 176
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile29"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u043b\u044c\u0448\u043e\u0439 \u043f\u0430\u043b\u0435\u0446 \u0432\u043d\u0438\u0437"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 177
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u043a\u0435\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 178
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile169"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0443\u043b\u0430\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 179
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u270a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile270a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0436\u0430\u0442\u0430\u044f \u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 180
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u270c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043d\u0430\u043a \u043f\u043e\u0431\u0435\u0434\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 181
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc4b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u0430\u0448\u0435\u0442 \u0440\u0443\u043a\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 182
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u270b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile170"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 183
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0430\u0434\u043e\u043d\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 184
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc46"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile118"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 185
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc47"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile119"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043d\u0438\u0437"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 186
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc49"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f449"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043f\u0440\u0430\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 187
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc48"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile120"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u043b\u0435\u0446 \u0432\u043b\u0435\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 188
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde4c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u041f\u043e\u0434\u043d\u044f\u043b \u0440\u0443\u043a\u0438 \u043d\u0430\u0434 \u0441\u043e\u0431\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 189
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile171"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0443\u0434\u0430\u0440 \u0432 \u043b\u0430\u0434\u043e\u0448\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 190
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u261d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u043b\u0435\u0446 \u0432\u0432\u0435\u0440\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 191
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc4f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile168"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u043b\u043e\u043f\u0430\u044e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 192
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcaa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile125"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0438\u0446\u0435\u043f\u0441"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 193
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd95"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd95"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 194
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83edd18"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 195
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0435\u0440\u0435\u043a\u0440\u0435\u0449\u0435\u043d\u043d\u044b\u0435 \u043f\u0430\u043b\u044c\u0446\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 196
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0437\u0432\u043e\u043d\u0438 \u043c\u043d\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 197
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd96"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83ddd96"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0443\u043b\u043a\u0430\u043d\u0441\u043a\u043e\u0435 \u043f\u0440\u0438\u0432\u0435\u0442\u0441\u0442\u0432\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 198
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0443\u043a\u043e\u043f\u043e\u0436\u0430\u0442\u0438\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 199
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u270d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_270d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0438\u0448\u0443\u0449\u0430\u044f \u0440\u0443\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 200
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83ddd90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0441\u0442\u043e\u043f\u044b\u0440\u0435\u043d\u043d\u0430\u044f \u043b\u0430\u0434\u043e\u043d\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 201
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0443\u043b\u0430\u043a \u0432\u043b\u0435\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 202
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0435\u043b\u0444\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 203
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddeb6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 204
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0435\u0433\u0443"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 205
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc83"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc83"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 206
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 207
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 208
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 209
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 210
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc8f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 211
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc91"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc91"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 212
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc6f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc6f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 213
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude46"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde46"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 214
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude45"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde45"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 215
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc81"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc81"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 216
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde4b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 217
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc86"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc86"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 218
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc87"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc87"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 219
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc85"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc85"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 220
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc70"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc70"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 221
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde4e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 222
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude4d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f64d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 223
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude47"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde47"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 224
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfa9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 225
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc51"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile121"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 226
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc52"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc52"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 227
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc5f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 228
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc5e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 229
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc61"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc61"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 230
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc60"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile122"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 231
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc62"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc62"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 232
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc55"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc55"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 233
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc54"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc54"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 234
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc5a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 235
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc57"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc57"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 236
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfbd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfbd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0435\u0433\u043e\u0432\u0430\u044f \u0444\u0443\u0442\u0431\u043e\u043b\u043a\u0430 \u0441 \u043b\u0435\u043d\u0442\u043e\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 237
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc56"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc56"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 238
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc58"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc58"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 239
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc59"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc59"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 240
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcbc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcbc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 241
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile110"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 242
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc5d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 243
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc5b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc5b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 244
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc53"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc53"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0447\u043a\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 245
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf80"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf80"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0430\u043d\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 246
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f302"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 247
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc84"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc84"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 248
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 249
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc99"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc99"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 250
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 251
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 252
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udda4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83ddda4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0447\u0451\u0440\u043d\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 253
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2764"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 254
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc94"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile58"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0437\u0431\u0438\u0442\u043e\u0435 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 255
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc97"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc97"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 256
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc93"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc93"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 257
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc95"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc95"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 258
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc96"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc96"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 259
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 260
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc98"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc98"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u0430 \u043f\u0440\u043e\u043d\u0437\u0430\u0435\u0442 \u0441\u0435\u0440\u0434\u0446\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 261
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2763"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2763"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0435\u0440\u0434\u0446\u0435 \u043a\u0430\u043a \u0432\u043e\u0441\u043a\u043b\u0438\u0446\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 262
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc8c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 263
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile160"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043b\u0435\u0434 \u043e\u0442 \u043f\u043e\u0446\u0435\u043b\u0443\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 264
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc8d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 265
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc8e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 266
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc64"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f464"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 267
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc65"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f465"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 268
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcac"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile126"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 269
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc63"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc63"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 270
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcad"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile59"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 273
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc36"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile60"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0449\u0435\u043d\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 274
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile107"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 275
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile61"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 276
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile106"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u044b\u0448\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 277
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u043e\u043c\u044f\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 278
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u0430\u044f\u0446"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 279
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u044f\u0433\u0443\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 280
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile109"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0438\u0446\u043e \u0442\u0438\u0433\u0440\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 281
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc28"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile166"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 282
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc3b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile53"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0438\u0446\u043e \u043c\u0435\u0434\u0432\u0435\u0434\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 283
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile62"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u0440\u044e\u0448\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 284
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc3d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile108"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 285
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile51"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u043e\u0440\u043e\u0432\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 286
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc17"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 287
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc35"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 288
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc12"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 289
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc34"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 290
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile63"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 291
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile57"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 292
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc3c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile54"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0438\u0446\u043e \u043f\u0430\u043d\u0434\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 293
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc27"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 294
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc26"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 295
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile114"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u043e\u043b\u043e\u0432\u0430 \u0446\u044b\u043f\u043b\u0451\u043d\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 296
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc25"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0446\u044b\u043f\u043b\u0451\u043d\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 297
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile113"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0446\u044b\u043f\u043b\u0451\u043d\u043e\u043a \u0432 \u0441\u043a\u043e\u0440\u043b\u0443\u043f\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 298
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile112"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0443\u0440\u0438\u0446\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 299
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc0d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043c\u0435\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 300
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc22"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 301
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile101"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0443\u0441\u0435\u043d\u0438\u0446\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 302
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile102"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0447\u0435\u043b\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 303
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile49"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 304
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u0436\u044c\u044f \u043a\u043e\u0440\u043e\u0432\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 305
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile100"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 306
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc19"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 307
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc1a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 308
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0442\u0440\u043e\u043f\u0438\u0447\u0435\u0441\u043a\u0430\u044f \u0440\u044b\u0431\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 309
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc1f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile103"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 310
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile105"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0435\u043b\u044c\u0444\u0438\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 311
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc33"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 312
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc0b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 313
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc04"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 314
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile48"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0430\u0440\u0430\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 315
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc00"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile99"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 316
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc03"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc03"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 317
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile55"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 318
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc07"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 319
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc09"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc09"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 320
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile47"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 321
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc10"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 322
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile56"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0435\u0442\u0443\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 323
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc15"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 324
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc16"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc16"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 325
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc01"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 326
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc02"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 327
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc32"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 328
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc21"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc21"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 329
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc0a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc0a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 330
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile50"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 331
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc2a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile104"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 332
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc06"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 333
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u043e\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 334
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc29"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc29"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 335
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd84"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83edd84"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 336
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83ddd4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u043e\u043b\u0443\u0431\u044c \u043c\u0438\u0440\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 337
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc3e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc3e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043b\u0435\u0434\u044b \u043e\u0442 \u043b\u0430\u043f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 338
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0443\u043a\u0435\u0442 \u0446\u0432\u0435\u0442\u043e\u0432"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 339
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile79"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 340
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile78"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0442\u044e\u043b\u044c\u043f\u0430\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 341
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf40"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf40"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 342
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u043e\u0437\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 343
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile69"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 344
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile68"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0446\u0432\u0435\u0442\u043e\u043a \u0433\u0438\u0431\u0438\u0441\u043a\u0443\u0441\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 345
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf41"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf41"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 346
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0438\u0441\u0442\u044c\u044f \u043d\u0430 \u0432\u0435\u0442\u0440\u0443"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 347
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0430\u0434\u0430\u044e\u0449\u0438\u0435 \u043b\u0438\u0441\u0442\u044c\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 348
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf3f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 349
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf3e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 350
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf44"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0440\u0438\u0431"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 351
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf35"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 352
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf34"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 353
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf32"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 354
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf33"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 355
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf30"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 356
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u0430\u0441\u0441\u0430\u0434\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 357
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile70"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 358
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f310"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 359
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043e\u043b\u043d\u0446\u0435 \u0441 \u043b\u0438\u0446\u043e\u043c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 360
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf1d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 361
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f31a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 362
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f311"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 363
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f312"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 364
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f313"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 365
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f314"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 366
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf15"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f315"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 367
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf16"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f316"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 368
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f317"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 369
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f318"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 370
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f31c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 371
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f31b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 372
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f319"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 373
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 374
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 375
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 376
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 377
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 378
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f320"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 379
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b50"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 380
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2600"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile67"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043e\u043b\u043d\u0446\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 381
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26c5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043e\u043b\u043d\u0446\u0435 \u0437\u0430 \u043e\u0431\u043b\u0430\u043a\u0430\u043c\u0438"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 382
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2601"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2601"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u0431\u043b\u0430\u043a\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 383
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26a1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26a1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u043e\u043b\u043d\u0438\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 384
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2614"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2614"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0437\u043e\u043d\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 385
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2744"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile162"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043d\u0435\u0436\u0438\u043d\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 386
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26c4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile66"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043d\u0435\u0433\u043e\u0432\u0438\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 387
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf00"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f300"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 388
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f301"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 389
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f308"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 390
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf0a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f30a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 393
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 394
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 395
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u044f\u043f\u043e\u043d\u0441\u043a\u0438\u0435 \u043a\u0443\u043a\u043b\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 396
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf92"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf92"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 397
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf93"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf93"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 398
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 399
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf86"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f386"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 400
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf87"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f387"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 401
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf90"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 402
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf91"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f391"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 403
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf83"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile90"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 404
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile111"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 405
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf85"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf85"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0434\u0435\u0434 \u043c\u043e\u0440\u043e\u0437"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 406
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf84"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile44"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 407
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf81"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u043e\u0434\u0430\u0440\u043e\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 408
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 409
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf89"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf89"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0445\u043b\u043e\u043f\u0443\u0448\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 410
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 411
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf88"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf88"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043e\u0437\u0434\u0443\u0448\u043d\u044b\u0439 \u0448\u0430\u0440\u0438\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 412
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf8c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf8c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 413
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd2e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 414
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3a5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 415
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcf7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 416
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcf9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 417
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcfc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcfc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 418
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcbf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcbf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 419
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 420
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcbd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcbd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 421
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcbe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcbe"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 422
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcbb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcbb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 423
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcf1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 424
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u260e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile260e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 425
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcde"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4de"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 426
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcdf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcdf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 427
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddce0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 428
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddce1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 429
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcfa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcfa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 430
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcfb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcfb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 431
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f50a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 432
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd09"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f509"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 433
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd08"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f508"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 434
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f507"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 435
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd14"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd14"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 436
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddce2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0440\u043e\u043c\u043a\u043e\u0433\u043e\u0432\u043e\u0440\u0438\u0442\u0435\u043b\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 437
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 438
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23f3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile64"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 439
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u231b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_231b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 440
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23f0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile23f0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 441
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u231a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_231a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 442
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd13"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f513"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 443
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd12"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f512"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 444
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f50f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 445
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd10"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f510"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 446
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd11"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd11"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 447
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd0e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 448
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile123"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 449
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd26"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd26"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 450
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd06"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 451
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f505"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 452
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f50c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 453
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f50b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 454
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd0d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f50d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 455
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udec0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddec0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 456
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udebf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddebf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 457
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udebd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddebd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 458
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd27"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd27"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 459
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd29"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd29"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 460
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd28"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd28"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 461
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeaa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddeaa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 462
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeac"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddeac"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 463
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile124"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 464
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd2b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0438\u0441\u0442\u043e\u043b\u0435\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 465
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd2a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 466
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc8a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc8a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 467
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc89"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc89"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 468
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 469
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 470
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 471
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 472
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 473
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 474
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcb8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 475
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4f2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 476
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 477
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 478
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 479
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2709"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2709"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 480
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 481
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 482
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcef"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcef"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 483
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udceb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4eb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 484
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcea"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4ea"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 485
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcec"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4ec"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 486
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udced"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddced"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 487
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcee"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcee"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 488
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udce6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4e6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 489
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcdd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcdd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 490
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 491
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4c3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 492
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 493
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcca"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcca"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 494
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 495
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 496
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcdc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcdc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 497
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udccb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddccb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 498
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 499
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4c6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 500
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcc7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 501
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4c1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 502
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcc2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4c2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 503
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2702"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2702"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 504
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udccc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddccc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 505
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcce"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcce"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 506
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2712"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2712"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 507
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u270f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile270f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 508
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udccf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4cf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 509
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 510
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 511
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 512
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 513
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 514
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 515
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 516
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 517
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcda"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcda"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 518
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcd6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcd6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 519
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd16"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd16"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 520
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcdb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4db"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 521
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd2c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 522
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd2d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 523
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcf0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 524
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfa8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 525
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfac"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfac"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 526
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfa4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u0438\u043a\u0440\u043e\u0444\u043e\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 527
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfa7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 528
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfbc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3bc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u043e\u0442\u043d\u044b\u0439 \u0440\u044f\u0434"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 529
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3b5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u0430\u044f \u043d\u043e\u0442\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 530
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3b6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043d\u0435\u0441\u043a\u043e\u043b\u044c\u043a\u043e \u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u044b\u0445 \u043d\u043e\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 531
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfb9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u0430\u044f \u043a\u043b\u0430\u0432\u0438\u0430\u0442\u0443\u0440\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 532
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfbb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfbb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u043a\u0440\u0438\u043f\u043a\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 533
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfba"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfba"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043c\u0443\u0437\u044b\u043a\u0430\u043b\u044c\u043d\u044b\u0439 \u0438\u043d\u0441\u0442\u0440\u0443\u043c\u0435\u043d\u0442 \u0442\u0440\u0443\u0431\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 534
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile94"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0430\u043a\u0441\u043e\u0444\u043e\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 535
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile95"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0438\u0442\u0430\u0440\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 536
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc7e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f47e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 537
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfae"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ae"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 538
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udccf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f0cf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 539
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfb4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 540
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udc04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f004"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 541
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile93"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 542
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfaf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfaf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 543
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 544
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile97"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 545
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26bd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile33"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 546
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26be"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile65"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 547
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfbe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile96"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 548
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile92"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 549
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 550
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfb3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 551
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26f3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26f3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 552
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddeb5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 553
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddeb4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 554
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile45"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 555
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 556
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile46"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 557
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfbf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfbf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 558
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 559
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfca"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfca"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 560
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfc4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfc4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 561
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfa3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 562
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2615"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2615"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0440\u0443\u0436\u043a\u0430 \u043a\u043e\u0444\u0444\u0435"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 563
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf75"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf75"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 564
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf76"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf76"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 565
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf7c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf7c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 566
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf7a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile37"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 567
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf7b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile38"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 568
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83e\udd42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83edd42"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u043e\u043a\u0430\u043b\u044b \u0448\u0430\u043c\u043f\u0430\u043d\u0441\u043a\u043e\u0433\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 569
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf78"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf78"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 570
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf79"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf79"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 571
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf77"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf77"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 572
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf74"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf74"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0438\u043b\u043a\u0430 \u0438 \u043d\u043e\u0436"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 573
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf55"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile86"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 574
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf54"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile85"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 575
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 576
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf57"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile88"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 577
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf56"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile87"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 578
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 579
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 580
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf64"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf64"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 581
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf71"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf71"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 582
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf63"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf63"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 583
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf65"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf65"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 584
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf59"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f359"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 585
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf58"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f358"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 586
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 587
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 588
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf72"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf72"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 589
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf62"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf62"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 590
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf61"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf61"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 591
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf73"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf73"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 592
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf5e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf5e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 593
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf69"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile89"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 594
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf6e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0443\u0434\u0434\u0438\u043d\u0433"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 595
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf66"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf66"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 596
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf68"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf68"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 597
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf67"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf67"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 598
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf82"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile43"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043f\u0440\u0430\u0437\u0434\u043d\u0438\u0447\u043d\u044b\u0439 \u0442\u043e\u0440\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 599
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf70"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf70"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 600
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf6a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 601
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf6b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 602
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf6c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 603
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile77"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 604
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_d83cdf2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0448\u0430\u0443\u0440\u043c\u0430"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 605
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf6f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf6f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 606
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile75"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 607
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile76"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 608
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile72"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 609
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile73"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043b\u0438\u043c\u043e\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 610
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf52"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile41"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0438\u0448\u043d\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 611
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf47"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf47"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u0438\u043d\u043e\u0433\u0440\u0430\u0434"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 612
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf49"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile81"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 613
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf53"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile84"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 614
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf51"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile83"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 615
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf48"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf48"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 616
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile36"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 617
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile82"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 618
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf4d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile74"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 619
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf60"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdf60"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 620
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf46"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile80"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 621
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf45"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile40"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 622
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf3d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile71"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 623
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26b0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26b0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0433\u0440\u043e\u0431"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 626
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 627
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 628
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfeb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3eb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 629
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 630
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 631
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 632
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile98"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 633
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfea"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ea"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 634
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 635
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 636
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc92"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc92"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 637
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26ea"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26ea"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 638
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfec"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ec"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 639
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 640
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f307"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 641
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f306"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 642
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfef"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ef"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 643
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udff0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3f0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 644
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26fa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26fa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 645
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfed"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ed"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 646
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\uddfc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f5fc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 647
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\uddfe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f5fe"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 648
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\uddfb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f5fb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 649
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f304"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 650
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f305"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 651
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf03"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f303"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 652
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\uddfd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f5fd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0430\u0442\u0443\u044f \u0441\u0432\u043e\u0431\u043e\u0434\u044b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 653
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udf09"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f309"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 654
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3a0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 655
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3a1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 656
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26f2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26f2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 657
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3a2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 658
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6a2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 659
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26f5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26f5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 660
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 661
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 662
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2693"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2693"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 663
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude80"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde80"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 664
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2708"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile2708"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 665
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcba"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddcba"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 666
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude81"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde81"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 667
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude82"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde82"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 668
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde8a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 669
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude89"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f689"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 670
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 671
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude86"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde86"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 672
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude84"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde84"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 673
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude85"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde85"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 674
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude88"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde88"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 675
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude87"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde87"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 676
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 677
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f68b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 678
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude83"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde83"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 679
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde8e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 680
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde8c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 681
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde8d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 682
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude99"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde99"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 683
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude98"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde98"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 684
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude97"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde97"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 685
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude95"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde95"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 686
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude96"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde96"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 687
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 688
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 689
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 690
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude93"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde93"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 691
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude94"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde94"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 692
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude92"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde92"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 693
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude91"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde91"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 694
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude90"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde90"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 695
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 696
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 697
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 698
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 699
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude9c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde9c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 700
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc88"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc88"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 701
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\ude8f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dde8f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 702
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfab"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 703
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6a6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 704
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6a5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 705
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26a0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26a0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 706
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddea7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 707
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd30"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f530"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 708
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26fd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26fd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 709
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfee"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3ee"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 710
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfb0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfb0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 711
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2668"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2668"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 712
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\uddff"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83dddff"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 713
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfaa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile91"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 714
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfad"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdfad"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 715
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udccd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddccd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 716
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udea9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6a9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 717
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddef\ud83c\uddf5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddefd83cddf5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 718
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddf0d83cddf7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 719
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udde9\ud83c\uddea"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdde9d83cddea"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 720
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udde8\ud83c\uddf3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cdde8d83cddf3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 721
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddfad83cddf8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 722
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddebd83cddf7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 723
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddea\ud83c\uddf8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddead83cddf8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 724
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddee\ud83c\uddf9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddeed83cddf9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 725
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddf7d83cddfa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0440\u043e\u0441\u0441\u0438\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 726
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddec\ud83c\udde7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83cddecd83cdde7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 727
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddfa\ud83c\udde6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emojid83cddfad83cdde6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 728
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udde7\ud83c\uddfe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emojid83cdde7d83cddfe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0431\u0435\u043b\u043e\u0440\u0443\u0441\u0441\u0438\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 729
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddf0\ud83c\uddff"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emojid83cddf0d83cddff"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u0430\u0437\u0430\u0445\u0441\u0442\u0430\u043d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 730
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddee\ud83c\uddf1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emojid83cddeed83cddf1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0438\u0437\u0440\u0430\u0438\u043b\u044c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 731
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\uddf9\ud83c\uddf7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emojid83cddf9d83cddf7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0442\u0443\u0440\u0446\u0438\u044f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 734
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "1\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0031"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 735
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "2\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0032"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 736
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "3\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0033"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 737
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "4\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0034"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 738
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "5\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0035"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 739
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "6\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0036"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 740
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "7\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0037"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 741
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "8\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0038"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 742
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "9\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0039"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 743
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "0\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0030"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 744
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f51f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 745
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd22"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f522"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 746
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "#\u20e3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_0023"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 747
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd23"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f523"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 748
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b06"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u0432\u0435\u0440\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 749
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b07"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043d\u0438\u0437"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 750
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b05"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043b\u0435\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 751
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u27a1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_27a1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043f\u0440\u0430\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 752
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd20"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f520"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 753
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd21"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f521"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 754
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd24"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f524"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 755
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2197"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2197"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 756
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2196"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2196"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 757
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2198"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2198"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 758
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2199"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2199"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 759
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2194"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2194"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 760
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2195"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2195"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 761
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd04"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f504"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 763
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25c0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25c0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043b\u0435\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 764
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25b6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25b6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043f\u0440\u0430\u0432\u043e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 765
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd3c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f53c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u0432\u0435\u0440\u0445"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 766
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd3d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f53d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0441\u0442\u0440\u0435\u043b\u043a\u0430 \u0432\u043d\u0438\u0437"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 767
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u21a9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_21a9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 768
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u21aa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_21aa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 769
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2139"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2139"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 770
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23ea"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_23ea"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 771
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23e9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_23e9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 772
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23eb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_23eb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 773
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u23ec"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_23ec"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 774
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2935"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2935"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 775
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2934"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2934"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 776
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd97"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f197"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043e\u043a\u0435\u0439"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 777
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd00"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f500"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 778
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f501"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 779
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f502"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 780
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd95"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f195"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 781
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd99"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f199"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 782
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd92"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f192"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 783
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd93"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f193"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 784
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd96"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f196"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 785
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4f6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 786
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfa6"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3a6"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 787
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude01"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f201"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 788
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f22f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 789
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f233"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 790
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f235"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 792
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f232"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 793
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f234"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 794
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f250"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 795
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f239"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 796
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f23a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 797
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude36"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f236"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 798
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude1a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f21a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 799
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udebb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6bb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 800
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 801
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeba"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6ba"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 802
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udebc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6bc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 803
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udebe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6be"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 804
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 805
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeae"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6ae"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 806
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd7f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f17f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 807
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u267f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_267f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 808
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udead"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6ad"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 809
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f237"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 810
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f238"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 811
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude02"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f202"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 812
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u24c2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_24c2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 813
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\ude51"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f251"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 814
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u3299"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_3299"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 815
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u3297"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_3297"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 816
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd91"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f191"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 817
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd98"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f198"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 818
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd94"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f194"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 820
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6ab"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 821
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile167"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 822
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf5"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4f5"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 823
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeaf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6af"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 824
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 825
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 826
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 827
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udeb8"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f6b8"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 828
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26d4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile26d4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 829
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2733"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2733"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 830
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2747"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2747"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 831
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u274e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_274e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 832
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2705"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2705"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 833
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2734"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2734"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 834
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udc9f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddc9f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 835
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd9a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f19a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 836
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf3"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4f3"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 837
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcf4"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4f4"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 838
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd70"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f170"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 839
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd71"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f171"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 840
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd8e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f18e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 841
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udd7e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f17e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 842
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udca0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4a0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 843
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u27bf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_27bf"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 844
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u267b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smile267b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 845
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2648"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2648"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 846
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2649"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2649"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 847
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 849
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 850
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 851
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 852
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 853
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u264f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_264f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 854
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2650"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2650"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 855
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2651"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2651"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 856
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2652"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2652"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 857
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2653"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2653"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 858
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26ce"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26ce"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 859
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd2f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f52f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 860
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83c\udfe7"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f3e7"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 861
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4b9"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 862
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb2"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4b2"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 863
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcb1"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4b1"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 864
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u00a9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_00a9"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u043a\u043e\u043f\u0438\u0440\u0430\u0439\u0442"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 865
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u00ae"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_00ae"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 866
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2122"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2122"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 867
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u303d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_303d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 868
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u3030"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_3030"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 869
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f51d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 870
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f51a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 871
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd19"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f519"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 872
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f51b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 873
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd1c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f51c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 874
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u274c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_274c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 875
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b55"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b55"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 876
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2757"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2757"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043e\u0441\u043a\u043b\u0438\u0446\u0430\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 878
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2753"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2753"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    const-string v8, "\u0432\u043e\u043f\u0440\u043e\u0441\u0438\u0442\u0435\u043b\u044c\u043d\u044b\u0439 \u0437\u043d\u0430\u043a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 879
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2755"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2755"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 880
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2754"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2754"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 881
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd03"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f503"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 882
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 883
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd67"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f567"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 884
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd50"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f550"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 885
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 886
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd51"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f551"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 887
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5d"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55d"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 888
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd52"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f552"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 889
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5e"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55e"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 890
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd53"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f553"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 891
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5f"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55f"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 892
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd54"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f554"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 893
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd60"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f560"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 894
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd55"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f555"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 895
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd56"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f556"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 896
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd57"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f557"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 897
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd58"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f558"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 898
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd59"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f559"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 899
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd5a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f55a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 900
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd61"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f561"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 901
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd62"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f562"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 902
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd63"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f563"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 903
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd64"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f564"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 904
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd65"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f565"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 905
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd66"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f566"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 907
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2716"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2716"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 908
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2795"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2795"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 909
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2796"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2796"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 910
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2797"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2797"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 911
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2660"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2660"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 912
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2665"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2665"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 913
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2663"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2663"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 914
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2666"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2666"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 915
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcae"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4ae"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 916
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udcaf"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f4af"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 917
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2714"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2714"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 918
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2611"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2611"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 919
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd18"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f518"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 920
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd17"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f517"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 921
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u27b0"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_27b0"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 922
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd31"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "smiled83ddd31"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 923
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd32"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f532"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 924
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd33"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f533"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 925
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25fc"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25fc"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 926
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25fb"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25fb"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 927
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25fe"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25fe"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 928
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25fd"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25fd"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 929
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25aa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25aa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 930
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u25ab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_25ab"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 931
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd3a"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f53a"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 932
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b1c"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b1c"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 933
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u2b1b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_2b1b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 934
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26ab"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26ab"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 936
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\u26aa"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_26aa"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 937
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd34"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f534"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 938
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd35"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f535"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 939
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd3b"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f53b"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 940
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd36"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f536"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 941
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd37"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f537"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 942
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd38"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f538"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 943
    sget-object v6, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    const-string v8, "\ud83d\udd39"

    aput-object v8, v6, v2

    sget-object v6, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    const-string v8, "emoji_1f539"

    aput-object v8, v6, v2

    add-int/lit8 v2, v2, 0x1

    .line 946
    new-instance v0, Ljava/util/HashSet;

    const/16 v6, 0x96

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 947
    .local v0, "beginnings_set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    sget-object v8, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_0

    aget-object v5, v8, v6

    .line 948
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 949
    .end local v5    # "key":Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [C

    sput-object v6, Lcom/perm/utils/SmileHelper;->beginnings:[C

    .line 950
    const/4 v3, 0x0

    .line 951
    .local v3, "j":I
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Character;

    invoke-virtual {v6}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 952
    .local v1, "ch":C
    sget-object v6, Lcom/perm/utils/SmileHelper;->beginnings:[C

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aput-char v1, v6, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_1

    .line 954
    .end local v1    # "ch":C
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sput v6, Lcom/perm/utils/SmileHelper;->size:I

    .line 956
    sget v6, Lcom/perm/utils/SmileHelper;->size:I

    const/16 v7, 0x12

    if-le v6, v7, :cond_2

    .line 960
    sget v6, Lcom/perm/utils/SmileHelper;->size:I

    int-to-double v6, v6

    const-wide v8, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sput v6, Lcom/perm/utils/SmileHelper;->size:I

    .line 1019
    :goto_2
    const/4 v6, 0x0

    sput-object v6, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    .line 1088
    new-instance v6, Landroid/support/v4/util/LruCache;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v6, Lcom/perm/utils/SmileHelper;->cache:Landroid/support/v4/util/LruCache;

    .line 1101
    const-string v6, "\u0441\u043c\u0430\u0439\u043b"

    sput-object v6, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    return-void

    .line 964
    :cond_2
    sget v6, Lcom/perm/utils/SmileHelper;->size:I

    int-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    sput v6, Lcom/perm/utils/SmileHelper;->size:I

    goto :goto_2

    .line 30
    :array_0
    .array-data 4
        0xdd
        0x76
        0xe7
        0x6a
        -0x1
    .end array-data
.end method

.method private static checkIfSmilesExist(Ljava/lang/String;)Z
    .locals 7
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1013
    sget-object v3, Lcom/perm/utils/SmileHelper;->beginnings:[C

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-char v0, v3, v2

    .line 1014
    .local v0, "ch":C
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 1015
    const/4 v1, 0x1

    .line 1016
    .end local v0    # "ch":C
    :cond_0
    return v1

    .line 1013
    .restart local v0    # "ch":C
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getRecentPairs(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/utils/SmileHelper$ResCodePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    .local v5, "recent_pairs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/utils/SmileHelper$ResCodePair;>;"
    :try_start_0
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1185
    .local v3, "items_codes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1186
    .local v0, "code":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v7, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v2, v7, :cond_0

    .line 1187
    sget-object v7, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1188
    new-instance v4, Lcom/perm/utils/SmileHelper$ResCodePair;

    invoke-direct {v4}, Lcom/perm/utils/SmileHelper$ResCodePair;-><init>()V

    .line 1189
    .local v4, "pair":Lcom/perm/utils/SmileHelper$ResCodePair;
    iput-object v0, v4, Lcom/perm/utils/SmileHelper$ResCodePair;->code:Ljava/lang/String;

    .line 1190
    sget-object v7, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v7, v7, v2

    iput-object v7, v4, Lcom/perm/utils/SmileHelper$ResCodePair;->res:Ljava/lang/String;

    .line 1191
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1196
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "items_codes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "pair":Lcom/perm/utils/SmileHelper$ResCodePair;
    :catch_0
    move-exception v1

    .line 1197
    .local v1, "ex":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1198
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1200
    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_1
    return-object v5

    .line 1186
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "items_codes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    sget-object v4, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 1129
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    .line 1132
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "recent_smiles_codes"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1133
    .local v3, "recent_str":Ljava/lang/String;
    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1134
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "recent_codes":[Ljava/lang/String;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1136
    .local v1, "recent_code":Ljava/lang/String;
    sget-object v6, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1138
    .end local v1    # "recent_code":Ljava/lang/String;
    .end local v2    # "recent_codes":[Ljava/lang/String;
    .end local v3    # "recent_str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1140
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1143
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    sget-object v4, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    return-object v4
.end method

.method public static getReplaceString(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 1103
    const-string v0, "xxxx"

    .line 1104
    .local v0, "replace":Ljava/lang/String;
    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1105
    sget-object v0, Lcom/perm/utils/SmileHelper;->prefix:Ljava/lang/String;

    .line 1106
    sget-object v1, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    aget-object v1, v1, p0

    if-eqz v1, :cond_0

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/perm/utils/SmileHelper;->strings:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    :cond_0
    return-object v0
.end method

.method public static getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 1000
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Lcom/perm/utils/SmileHelper;->checkIfSmilesExist(Ljava/lang/String;)Z

    move-result v0

    .line 1004
    .local v0, "found":Z
    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-object p1

    .line 1007
    :cond_0
    const/4 v1, 0x1

    .line 1008
    .local v1, "safe":Z
    invoke-static {p0, v2, p1, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    goto :goto_0
.end method

.method public static getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 987
    invoke-static {p1}, Lcom/perm/utils/SmileHelper;->checkIfSmilesExist(Ljava/lang/String;)Z

    move-result v1

    .line 988
    .local v1, "found":Z
    if-nez v1, :cond_0

    .line 994
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 991
    .restart local p1    # "text":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 992
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x1

    .line 993
    .local v2, "safe":Z
    invoke-static {p0, p1, v0, v2}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    move-object p1, v0

    .line 994
    goto :goto_0
.end method

.method private static initBlind(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1093
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1094
    .local v0, "am":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 1097
    .local v1, "isAccessibilityEnabled":Z
    const-string v2, "Kate.SmileHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAccessibilityEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    return v1
.end method

.method public static insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "builder"    # Landroid/text/Editable;
    .param p3, "make_safe"    # Z

    .prologue
    .line 1027
    :try_start_0
    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 1028
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->initBlind(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    .line 1034
    :cond_0
    invoke-static {}, Lcom/perm/utils/SmileHelper;->isRiva()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ne v1, v3, :cond_1

    .line 1035
    const/16 p3, 0x0

    .line 1039
    :cond_1
    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v1, v3, :cond_2

    .line 1040
    const/16 p3, 0x0

    .line 1042
    :cond_2
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v1, 0x36f

    if-ge v10, v1, :cond_8

    .line 1043
    sget-object v1, Lcom/perm/utils/SmileHelper;->codes:[Ljava/lang/String;

    aget-object v12, v1, v10

    .line 1044
    .local v12, "key":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1045
    .local v2, "index":I
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v1, -0x1

    if-eq v2, v1, :cond_7

    .line 1047
    invoke-static {v10}, Lcom/perm/utils/SmileHelper;->getReplaceString(I)Ljava/lang/String;

    move-result-object v4

    .line 1051
    .local v4, "replace":Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 1053
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    add-int v3, v2, v1

    const/4 v5, 0x0

    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    :goto_2
    move-object/from16 v1, p2

    invoke-interface/range {v1 .. v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 1057
    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1058
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1062
    :cond_3
    sget-object v1, Lcom/perm/utils/SmileHelper;->cache:Landroid/support/v4/util/LruCache;

    sget-object v3, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v1, v3}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1063
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    .line 1064
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v5, v5, v10

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 1065
    .local v11, "is":Ljava/io/InputStream;
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1066
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 1067
    sget-object v1, Lcom/perm/utils/SmileHelper;->cache:Landroid/support/v4/util/LruCache;

    sget-object v3, Lcom/perm/utils/SmileHelper;->resources:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v1, v3, v7}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .end local v11    # "is":Ljava/io/InputStream;
    :cond_4
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v8, v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1072
    .local v8, "dr":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    const/4 v3, 0x0

    sget v5, Lcom/perm/utils/SmileHelper;->size:I

    sget v6, Lcom/perm/utils/SmileHelper;->size:I

    invoke-virtual {v8, v1, v3, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 1073
    new-instance v14, Landroid/text/style/ImageSpan;

    invoke-direct {v14, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 1075
    .local v14, "span":Landroid/text/style/ImageSpan;
    if-eqz p3, :cond_6

    sget-object v1, Lcom/perm/utils/SmileHelper;->blind:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    .line 1076
    .local v13, "replace_length":I
    :goto_3
    add-int v1, v2, v13

    const/16 v3, 0x21

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v2, v1, v3}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 1077
    add-int/2addr v2, v13

    .line 1078
    goto/16 :goto_1

    .line 1053
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "replace_length":I
    .end local v14    # "span":Landroid/text/style/ImageSpan;
    :cond_5
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v6

    goto/16 :goto_2

    .line 1075
    .restart local v7    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v14    # "span":Landroid/text/style/ImageSpan;
    :cond_6
    invoke-virtual {v12}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    goto :goto_3

    .line 1042
    .end local v4    # "replace":Ljava/lang/String;
    .end local v7    # "bmp":Landroid/graphics/Bitmap;
    .end local v8    # "dr":Landroid/graphics/drawable/BitmapDrawable;
    .end local v14    # "span":Landroid/text/style/ImageSpan;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1080
    .end local v2    # "index":I
    .end local v10    # "i":I
    .end local v12    # "key":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1081
    .local v9, "ex":Ljava/lang/Throwable;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1082
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1084
    .end local v9    # "ex":Ljava/lang/Throwable;
    :cond_8
    return-void
.end method

.method private static isRiva()Z
    .locals 2

    .prologue
    .line 1205
    sget-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 1206
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S500C"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    .line 1207
    :cond_0
    sget-object v0, Lcom/perm/utils/SmileHelper;->is_riva:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static sendBackspace(Landroid/widget/EditText;)V
    .locals 4
    .param p0, "et"    # Landroid/widget/EditText;

    .prologue
    .line 1115
    if-eqz p0, :cond_0

    .line 1116
    :try_start_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1119
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setRecentSmileAndSave(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recent_code"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x1e

    const/16 v6, 0x1d

    .line 1148
    :try_start_0
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 1149
    invoke-static {p0}, Lcom/perm/utils/SmileHelper;->getRecentSmiles(Landroid/content/Context;)Ljava/util/ArrayList;

    .line 1152
    :cond_0
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1153
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    :cond_1
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1157
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2

    .line 1158
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    const/16 v4, 0x1e

    sget-object v5, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1159
    :cond_2
    const-string v2, ""

    .line 1160
    .local v2, "recent_str":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1163
    sget-object v3, Lcom/perm/utils/SmileHelper;->recent_smiles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_3

    if-ge v1, v6, :cond_3

    .line 1164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1167
    :cond_3
    if-lt v1, v6, :cond_5

    .line 1174
    :cond_4
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "recent_smiles_codes"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v1    # "i":I
    .end local v2    # "recent_str":Ljava/lang/String;
    :goto_1
    return-void

    .line 1160
    .restart local v1    # "i":I
    .restart local v2    # "recent_str":Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1175
    .end local v1    # "i":I
    .end local v2    # "recent_str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1176
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1177
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

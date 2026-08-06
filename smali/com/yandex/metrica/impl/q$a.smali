.class public final enum Lcom/yandex/metrica/impl/q$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/q$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/yandex/metrica/impl/q$a;

.field public static final enum B:Lcom/yandex/metrica/impl/q$a;

.field static final C:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/q$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic F:[Lcom/yandex/metrica/impl/q$a;

.field public static final enum a:Lcom/yandex/metrica/impl/q$a;

.field public static final enum b:Lcom/yandex/metrica/impl/q$a;

.field public static final enum c:Lcom/yandex/metrica/impl/q$a;

.field public static final enum d:Lcom/yandex/metrica/impl/q$a;

.field public static final enum e:Lcom/yandex/metrica/impl/q$a;

.field public static final enum f:Lcom/yandex/metrica/impl/q$a;

.field public static final enum g:Lcom/yandex/metrica/impl/q$a;

.field public static final enum h:Lcom/yandex/metrica/impl/q$a;

.field public static final enum i:Lcom/yandex/metrica/impl/q$a;

.field public static final enum j:Lcom/yandex/metrica/impl/q$a;

.field public static final enum k:Lcom/yandex/metrica/impl/q$a;

.field public static final enum l:Lcom/yandex/metrica/impl/q$a;

.field public static final enum m:Lcom/yandex/metrica/impl/q$a;

.field public static final enum n:Lcom/yandex/metrica/impl/q$a;

.field public static final enum o:Lcom/yandex/metrica/impl/q$a;

.field public static final enum p:Lcom/yandex/metrica/impl/q$a;

.field public static final enum q:Lcom/yandex/metrica/impl/q$a;

.field public static final enum r:Lcom/yandex/metrica/impl/q$a;

.field public static final enum s:Lcom/yandex/metrica/impl/q$a;

.field public static final enum t:Lcom/yandex/metrica/impl/q$a;

.field public static final enum u:Lcom/yandex/metrica/impl/q$a;

.field public static final enum v:Lcom/yandex/metrica/impl/q$a;

.field public static final enum w:Lcom/yandex/metrica/impl/q$a;

.field public static final enum x:Lcom/yandex/metrica/impl/q$a;

.field public static final enum y:Lcom/yandex/metrica/impl/q$a;

.field public static final enum z:Lcom/yandex/metrica/impl/q$a;


# instance fields
.field private final D:I

.field private final E:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 28
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_UNDEFINED"

    const/4 v3, -0x1

    const-string v4, "Unrecognized action"

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    .line 30
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_INIT"

    const-string v3, "First initialization event"

    invoke-direct {v1, v2, v6, v0, v3}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->b:Lcom/yandex/metrica/impl/q$a;

    .line 31
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_REGULAR"

    const-string v3, "Regular event"

    invoke-direct {v1, v2, v7, v6, v3}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->c:Lcom/yandex/metrica/impl/q$a;

    .line 32
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_ACTIVITY_START_DEPRECATED"

    const-string v3, "Start of interaction with UI"

    invoke-direct {v1, v2, v8, v7, v3}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->d:Lcom/yandex/metrica/impl/q$a;

    .line 34
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_ACTIVITY_END"

    const-string v3, "End of interaction with UI"

    invoke-direct {v1, v2, v9, v8, v3}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->e:Lcom/yandex/metrica/impl/q$a;

    .line 35
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_EXCEPTION_UNHANDLED_DEPRECATED"

    const/4 v3, 0x5

    const-string v4, "Deprecated crash of App"

    invoke-direct {v1, v2, v3, v9, v4}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->f:Lcom/yandex/metrica/impl/q$a;

    .line 37
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_EXCEPTION_USER"

    const/4 v3, 0x6

    const/4 v4, 0x5

    const-string v5, "Error from developer"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->g:Lcom/yandex/metrica/impl/q$a;

    .line 38
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_REFERRER_DEPRECATED"

    const/4 v3, 0x7

    const/4 v4, 0x6

    const-string v5, "Deprecated sending referrer"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    .line 40
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_ALIVE"

    const/16 v3, 0x8

    const/4 v4, 0x7

    const-string v5, "App is still alive"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    .line 41
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS"

    const/16 v3, 0x9

    const/16 v4, 0x8

    const-string v5, "Update collect apps"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    .line 43
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_SET_USER_INFO"

    const/16 v3, 0xa

    const/16 v4, 0x9

    const-string v5, "User info"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->k:Lcom/yandex/metrica/impl/q$a;

    .line 44
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_REPORT_USER_INFO"

    const/16 v3, 0xb

    const/16 v4, 0xa

    const-string v5, "Report user info"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->l:Lcom/yandex/metrica/impl/q$a;

    .line 46
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_PURGE_BUFFER"

    const/16 v3, 0xc

    const/16 v4, 0x100

    const-string v5, "Forcible buffer clearing"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->m:Lcom/yandex/metrica/impl/q$a;

    .line 47
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_SESSION_START_MANUALLY"

    const/16 v3, 0xd

    const/16 v4, 0x200

    const-string v5, "Manual start of session"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->n:Lcom/yandex/metrica/impl/q$a;

    .line 48
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_NATIVE_CRASH"

    const/16 v3, 0xe

    const/16 v4, 0x300

    const-string v5, "Native crash of App"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->o:Lcom/yandex/metrica/impl/q$a;

    .line 49
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_INIT_BACKGROUND"

    const/16 v3, 0xf

    const/16 v4, 0x500

    const-string v5, "First initialization event in background mode"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->p:Lcom/yandex/metrica/impl/q$a;

    .line 51
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_STARTUP"

    const/16 v3, 0x10

    const/16 v4, 0x600

    const-string v5, "Sending the startup due to lack of data"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    .line 52
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_IDENTITY"

    const/16 v3, 0x11

    const/16 v4, 0x700

    const-string v5, "System identification"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->r:Lcom/yandex/metrica/impl/q$a;

    .line 53
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_STATBOX"

    const/16 v3, 0x12

    const/16 v4, 0x900

    const-string v5, "Event with statistical data"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->s:Lcom/yandex/metrica/impl/q$a;

    .line 54
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_REFERRER_RECEIVED"

    const/16 v3, 0x13

    const/16 v4, 0x1000

    const-string v5, "Referrer received"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    .line 55
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_MIGRATE_EVENT_FORMAT_DEPRECATED"

    const/16 v3, 0x14

    const/16 v4, 0x1100

    const-string v5, "Migrate event format"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->u:Lcom/yandex/metrica/impl/q$a;

    .line 57
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_MIGRATE_TO_UUID_API_KEY_DEPRECATED"

    const/16 v3, 0x15

    const/16 v4, 0x1200

    const-string v5, "Migrate to uuid api key"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->v:Lcom/yandex/metrica/impl/q$a;

    .line 59
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_APP_ENVIRONMENT_UPDATED"

    const/16 v3, 0x16

    const/16 v4, 0x1500

    const-string v5, "App Environment Updated"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    .line 60
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_APP_ENVIRONMENT_CLEARED"

    const/16 v3, 0x17

    const/16 v4, 0x1600

    const-string v5, "App Environment Cleared"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    .line 61
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_EXCEPTION_UNHANDLED"

    const/16 v3, 0x18

    const/16 v4, 0x1700

    const-string v5, "Crash of App"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->y:Lcom/yandex/metrica/impl/q$a;

    .line 62
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_ACTIVATION"

    const/16 v3, 0x19

    const/16 v4, 0x1800

    const-string v5, "Activation of metrica"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    .line 63
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_FIRST_ACTIVATION"

    const/16 v3, 0x1a

    const/16 v4, 0x1801

    const-string v5, "First activation of metrica"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->A:Lcom/yandex/metrica/impl/q$a;

    .line 64
    new-instance v1, Lcom/yandex/metrica/impl/q$a;

    const-string v2, "EVENT_TYPE_ACTIVITY_START"

    const/16 v3, 0x1b

    const/16 v4, 0x1900

    const-string v5, "Start of interaction with UI"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/yandex/metrica/impl/q$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->B:Lcom/yandex/metrica/impl/q$a;

    .line 26
    const/16 v1, 0x1c

    new-array v1, v1, [Lcom/yandex/metrica/impl/q$a;

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v0

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->b:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v6

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->c:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v7

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->d:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v8

    sget-object v2, Lcom/yandex/metrica/impl/q$a;->e:Lcom/yandex/metrica/impl/q$a;

    aput-object v2, v1, v9

    const/4 v2, 0x5

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->f:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->g:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->h:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->i:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x9

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->j:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xa

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->k:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xb

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->l:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xc

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->m:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xd

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->n:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xe

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->o:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0xf

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->p:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x10

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->q:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x11

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->r:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->s:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x13

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->t:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x14

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->u:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x15

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->v:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->w:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x17

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->x:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x18

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->y:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x19

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->z:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->A:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    sget-object v3, Lcom/yandex/metrica/impl/q$a;->B:Lcom/yandex/metrica/impl/q$a;

    aput-object v3, v1, v2

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->F:[Lcom/yandex/metrica/impl/q$a;

    .line 69
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/yandex/metrica/impl/q$a;->C:Landroid/util/SparseArray;

    .line 71
    invoke-static {}, Lcom/yandex/metrica/impl/q$a;->values()[Lcom/yandex/metrica/impl/q$a;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 72
    sget-object v4, Lcom/yandex/metrica/impl/q$a;->C:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/q$a;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput p3, p0, Lcom/yandex/metrica/impl/q$a;->D:I

    .line 82
    iput-object p4, p0, Lcom/yandex/metrica/impl/q$a;->E:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/q$a;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/q$a;

    .line 99
    if-nez v0, :cond_0

    sget-object v0, Lcom/yandex/metrica/impl/q$a;->a:Lcom/yandex/metrica/impl/q$a;

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/q$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/yandex/metrica/impl/q$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/q$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/q$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/q$a;->F:[Lcom/yandex/metrica/impl/q$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/q$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/q$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/yandex/metrica/impl/q$a;->D:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/q$a;->E:Ljava/lang/String;

    return-object v0
.end method

.class public final enum Lcom/yandex/metrica/impl/utils/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/utils/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/utils/i$a;

.field public static final enum b:Lcom/yandex/metrica/impl/utils/i$a;

.field public static final enum c:Lcom/yandex/metrica/impl/utils/i$a;

.field public static final enum d:Lcom/yandex/metrica/impl/utils/i$a;

.field private static final synthetic f:[Lcom/yandex/metrica/impl/utils/i$a;


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/yandex/metrica/impl/utils/i$a;

    const-string v1, "LOGIN"

    const-string v2, "login"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/metrica/impl/utils/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/i$a;->a:Lcom/yandex/metrica/impl/utils/i$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/i$a;

    const-string v1, "LOGOUT"

    const-string v2, "logout"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/metrica/impl/utils/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/i$a;->b:Lcom/yandex/metrica/impl/utils/i$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/i$a;

    const-string v1, "SWITCH"

    const-string v2, "switch"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/metrica/impl/utils/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/i$a;->c:Lcom/yandex/metrica/impl/utils/i$a;

    new-instance v0, Lcom/yandex/metrica/impl/utils/i$a;

    const-string v1, "UPDATE"

    const-string v2, "update"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/metrica/impl/utils/i$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/utils/i$a;->d:Lcom/yandex/metrica/impl/utils/i$a;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/metrica/impl/utils/i$a;

    sget-object v1, Lcom/yandex/metrica/impl/utils/i$a;->a:Lcom/yandex/metrica/impl/utils/i$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/utils/i$a;->b:Lcom/yandex/metrica/impl/utils/i$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/metrica/impl/utils/i$a;->c:Lcom/yandex/metrica/impl/utils/i$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/metrica/impl/utils/i$a;->d:Lcom/yandex/metrica/impl/utils/i$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yandex/metrica/impl/utils/i$a;->f:[Lcom/yandex/metrica/impl/utils/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/yandex/metrica/impl/utils/i$a;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/utils/i$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/yandex/metrica/impl/utils/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/utils/i$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/utils/i$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yandex/metrica/impl/utils/i$a;->f:[Lcom/yandex/metrica/impl/utils/i$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/utils/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/utils/i$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yandex/metrica/impl/utils/i$a;->e:Ljava/lang/String;

    return-object v0
.end method

.class final enum Lcom/yandex/metrica/impl/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/e$a;

.field public static final enum b:Lcom/yandex/metrica/impl/e$a;

.field public static final enum c:Lcom/yandex/metrica/impl/e$a;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "VALUE"

    invoke-direct {v0, v1, v3}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    new-instance v0, Lcom/yandex/metrica/impl/e$a;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1, v4}, Lcom/yandex/metrica/impl/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/e$a;

    sget-object v1, Lcom/yandex/metrica/impl/e$a;->a:Lcom/yandex/metrica/impl/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/e$a;->b:Lcom/yandex/metrica/impl/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/e$a;->c:Lcom/yandex/metrica/impl/e$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/e$a;->d:[Lcom/yandex/metrica/impl/e$a;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/e$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/yandex/metrica/impl/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/e$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/e$a;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/yandex/metrica/impl/e$a;->d:[Lcom/yandex/metrica/impl/e$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/e$a;

    return-object v0
.end method

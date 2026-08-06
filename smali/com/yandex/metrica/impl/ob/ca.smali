.class public final enum Lcom/yandex/metrica/impl/ob/ca;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/ob/ca;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/ca;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/ca;

.field public static final enum c:Lcom/yandex/metrica/impl/ob/ca;

.field private static final synthetic e:[Lcom/yandex/metrica/impl/ob/ca;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/yandex/metrica/impl/ob/ca;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ca;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ca;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3, v3}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/ca;

    new-instance v0, Lcom/yandex/metrica/impl/ob/ca;

    const-string v1, "PARSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/yandex/metrica/impl/ob/ca;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/ca;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/ca;

    sget-object v1, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ca;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/ca;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/ca;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/metrica/impl/ob/ca;->e:[Lcom/yandex/metrica/impl/ob/ca;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/yandex/metrica/impl/ob/ca;->d:I

    .line 24
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/impl/ob/ca;
    .locals 2

    .prologue
    .line 36
    const-string v0, "startup_error_key_code"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->a:Lcom/yandex/metrica/impl/ob/ca;

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->b:Lcom/yandex/metrica/impl/ob/ca;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->c:Lcom/yandex/metrica/impl/ob/ca;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/ca;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/yandex/metrica/impl/ob/ca;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/ca;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/ca;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yandex/metrica/impl/ob/ca;->e:[Lcom/yandex/metrica/impl/ob/ca;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/ca;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/ca;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/yandex/metrica/impl/ob/ca;->d:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 31
    const-string v0, "startup_error_key_code"

    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/ca;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 32
    return-object p1
.end method

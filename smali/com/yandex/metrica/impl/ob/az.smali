.class public final enum Lcom/yandex/metrica/impl/ob/az;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/impl/ob/az;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/impl/ob/az;

.field public static final enum b:Lcom/yandex/metrica/impl/ob/az;

.field private static final synthetic d:[Lcom/yandex/metrica/impl/ob/az;


# instance fields
.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/yandex/metrica/impl/ob/az;

    const-string v1, "FOREGROUND"

    invoke-direct {v0, v1, v2, v2}, Lcom/yandex/metrica/impl/ob/az;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    new-instance v0, Lcom/yandex/metrica/impl/ob/az;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v3, v3}, Lcom/yandex/metrica/impl/ob/az;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/metrica/impl/ob/az;

    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    aput-object v1, v0, v3

    sput-object v0, Lcom/yandex/metrica/impl/ob/az;->d:[Lcom/yandex/metrica/impl/ob/az;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/yandex/metrica/impl/ob/az;->c:I

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/ob/az;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    .line 28
    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 38
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    sget-object v0, Lcom/yandex/metrica/impl/ob/az;->a:Lcom/yandex/metrica/impl/ob/az;

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/yandex/metrica/impl/ob/az;->b:Lcom/yandex/metrica/impl/ob/az;

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/az;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/yandex/metrica/impl/ob/az;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ob/az;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/impl/ob/az;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yandex/metrica/impl/ob/az;->d:[Lcom/yandex/metrica/impl/ob/az;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/ob/az;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/ob/az;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/yandex/metrica/impl/ob/az;->c:I

    return v0
.end method

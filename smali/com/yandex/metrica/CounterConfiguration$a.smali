.class public final enum Lcom/yandex/metrica/CounterConfiguration$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/CounterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/metrica/CounterConfiguration$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/metrica/CounterConfiguration$a;

.field public static final enum b:Lcom/yandex/metrica/CounterConfiguration$a;

.field public static final enum c:Lcom/yandex/metrica/CounterConfiguration$a;

.field private static final synthetic e:[Lcom/yandex/metrica/CounterConfiguration$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "UNDEFINED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v4, v3}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$a;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v5, v4}, Lcom/yandex/metrica/CounterConfiguration$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/metrica/CounterConfiguration$a;

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->e:[Lcom/yandex/metrica/CounterConfiguration$a;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    .line 53
    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 1

    .prologue
    .line 56
    packed-switch p0, :pswitch_data_0

    .line 61
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    goto :goto_0

    .line 58
    :pswitch_1
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    goto :goto_0

    .line 59
    :pswitch_2
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0
.end method

.method public static values()[Lcom/yandex/metrica/CounterConfiguration$a;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/yandex/metrica/CounterConfiguration$a;->e:[Lcom/yandex/metrica/CounterConfiguration$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/CounterConfiguration$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/CounterConfiguration$a;

    return-object v0
.end method

.class final Lcom/yandex/metrica/impl/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ba$a;
    }
.end annotation


# static fields
.field static final a:Lcom/yandex/metrica/impl/ba$a;

.field static final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/yandex/metrica/impl/ba$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 34
    new-instance v0, Lcom/yandex/metrica/impl/ba$a;

    const-string v1, "241"

    invoke-static {}, Lcom/yandex/metrica/impl/bc;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/ba;->a:Lcom/yandex/metrica/impl/ba$a;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 42
    sput-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x1

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "100"

    const-string v4, "1.00"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x2

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "110"

    const-string v4, "1.10"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "111"

    const-string v4, "1.11"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "120"

    const-string v4, "1.20"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x5

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "121"

    const-string v4, "1.21"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x6

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "122"

    const-string v4, "1.22"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/4 v1, 0x7

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "123"

    const-string v4, "1.23"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x8

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "124"

    const-string v4, "1.24"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x9

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "126"

    const-string v4, "1.26"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xa

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "127"

    const-string v4, "1.27"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xb

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "140"

    const-string v4, "1.40"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xc

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "141"

    const-string v4, "1.41"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xd

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "142"

    const-string v4, "1.42"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xe

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "150"

    const-string v4, "1.50"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0xf

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "151"

    const-string v4, "1.51"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x10

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "160"

    const-string v4, "1.60"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x11

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "161"

    const-string v4, "1.61"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x12

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "162"

    const-string v4, "1.62"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 60
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x13

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "163"

    const-string v4, "1.63"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x14

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "164"

    const-string v4, "1.64"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x15

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "165"

    const-string v4, "1.65"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x16

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "166"

    const-string v4, "1.66"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x17

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "167"

    const-string v4, "1.67"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 65
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x18

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "168"

    const-string v4, "1.68"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x19

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "169"

    const-string v4, "1.69"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1a

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "170"

    const-string v4, "1.70"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 68
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1b

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "171"

    const-string v4, "1.71"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 69
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1c

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "172"

    const-string v4, "1.72"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 70
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1d

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "180"

    const-string v4, "1.80"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 71
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1e

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "181"

    const-string v4, "1.81"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x1f

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "182"

    const-string v4, "1.82"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x20

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "200"

    const-string v4, "2.00"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 74
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x21

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "210"

    const-string v4, "2.10"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 75
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x22

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "211"

    const-string v4, "2.11"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x23

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "220"

    const-string v4, "2.20"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 77
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x24

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "221"

    const-string v4, "2.21"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x25

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "222"

    const-string v4, "2.22"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x26

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "223"

    const-string v4, "2.23"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 80
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x27

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "230"

    const-string v4, "2.30"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x28

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "231"

    const-string v4, "2.31"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x29

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "232"

    const-string v4, "2.32"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "233"

    const-string v4, "2.33"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 84
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "240"

    const-string v4, "2.40"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    new-instance v2, Lcom/yandex/metrica/impl/ba$a;

    const-string v3, "241"

    const-string v4, "2.41"

    invoke-direct {v2, v3, v4}, Lcom/yandex/metrica/impl/ba$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    return-void
.end method

.method static a(I)Lcom/yandex/metrica/impl/ba$a;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/yandex/metrica/impl/ba;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/metrica/impl/ba$a;

    .line 90
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yandex/metrica/impl/ba;->a:Lcom/yandex/metrica/impl/ba$a;

    goto :goto_0
.end method

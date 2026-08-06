.class Lcom/yandex/metrica/impl/ob/cx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/impl/ob/cv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/cx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/yandex/metrica/impl/ob/cy;

.field private final c:Lcom/yandex/metrica/impl/ob/cy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LNFe+yc4/NZbJVynpxAeAd+brU3EPwGbtwF6VeUjI/Y="

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PL1/TTDEe9Cm2lb2X0tixyQC7zaPREm/V0IHJscTCmw="

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "+B0DgmKB5hWEuHib00m2jvCJWBlOYI0NGTMmVjaVrJA="

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "dy/Myn0WRtYGKBNP8ubn9boJWJi+WWmLzp0V+W9pqfM="

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "OB84k4abNNzWpMVBdhI+TSgQmCqTKdPPQrwq6j4YdMU="

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AZQG1XXPKFo8LYu/gTPgz65IOcmcwYFb3yREhyWefNI="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "iZEDYF5LpvyxpOX9+x3+qDBXhdByZOUFatBA3JgW7sY="

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "IQBnNBEiFuhj+8x6X8XLgh01V9Ic5/V3IRQLNFFc7v4="

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "LvRiGEjRqfzurezaWuj8Wie2gyHMrW5Q06LspMnox7A="

    aput-object v2, v0, v1

    sput-object v0, Lcom/yandex/metrica/impl/ob/cx$a;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/yandex/metrica/impl/ob/db;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/ob/ck;

    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/db;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lib"

    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/impl/ob/ck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/yandex/metrica/impl/ob/cy;

    const-string v2, "LIB-BLACK"

    invoke-direct {v1, v0, v2}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cx$a;->b:Lcom/yandex/metrica/impl/ob/cy;

    .line 75
    new-instance v1, Lcom/yandex/metrica/impl/ob/cy;

    const-string v2, "LIB-TRUST"

    sget-object v3, Lcom/yandex/metrica/impl/ob/cx$a;->a:[Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/yandex/metrica/impl/ob/cy;-><init>(Lcom/yandex/metrica/impl/ob/cs;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yandex/metrica/impl/ob/cx$a;->c:Lcom/yandex/metrica/impl/ob/cy;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/ob/db;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/ob/cx$a;-><init>(Lcom/yandex/metrica/impl/ob/db;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cx$a;->b:Lcom/yandex/metrica/impl/ob/cy;

    return-object v0
.end method

.method public b()Lcom/yandex/metrica/impl/ob/cy;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "white list isn\'t supported in shared container"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lcom/yandex/metrica/impl/ob/cy;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/cx$a;->c:Lcom/yandex/metrica/impl/ob/cy;

    return-object v0
.end method

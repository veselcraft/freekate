.class public final Lcom/yandex/metrica/c$a$f$b;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$f$b$a;
    }
.end annotation


# instance fields
.field public b:Lcom/yandex/metrica/c$b;

.field public c:Ljava/lang/String;

.field public d:Lcom/yandex/metrica/c$a$f$b$a;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1003
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 1004
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f$b;->d()Lcom/yandex/metrica/c$a$f$b;

    .line 1005
    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/metrica/impl/ob/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    if-eqz v0, :cond_0

    .line 1020
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1022
    :cond_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILjava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    if-eqz v0, :cond_1

    .line 1024
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 1026
    :cond_1
    iget v0, p0, Lcom/yandex/metrica/c$a$f$b;->e:I

    if-eqz v0, :cond_2

    .line 1027
    const/4 v0, 0x5

    iget v1, p0, Lcom/yandex/metrica/c$a$f$b;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 1029
    :cond_2
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 1030
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 1034
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 1035
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    if-eqz v1, :cond_0

    .line 1036
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1039
    :cond_0
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$b;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1041
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    if-eqz v1, :cond_1

    .line 1042
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1045
    :cond_1
    iget v1, p0, Lcom/yandex/metrica/c$a$f$b;->e:I

    if-eqz v1, :cond_2

    .line 1046
    const/4 v1, 0x5

    iget v2, p0, Lcom/yandex/metrica/c$a$f$b;->e:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1049
    :cond_2
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$f$b;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1008
    iput-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->b:Lcom/yandex/metrica/c$b;

    .line 1009
    const-string v0, ""

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$b;->c:Ljava/lang/String;

    .line 1010
    iput-object v1, p0, Lcom/yandex/metrica/c$a$f$b;->d:Lcom/yandex/metrica/c$a$f$b$a;

    .line 1011
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a$f$b;->e:I

    .line 1012
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f$b;->a:I

    .line 1013
    return-object p0
.end method

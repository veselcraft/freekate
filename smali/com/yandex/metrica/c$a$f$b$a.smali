.class public final Lcom/yandex/metrica/c$a$f$b$a;
.super Lcom/yandex/metrica/impl/ob/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/c$a$f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/c$a$f$b$a$a;
    }
.end annotation


# instance fields
.field public b:I

.field public c:Lcom/yandex/metrica/c$a$f$b$a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/d;-><init>()V

    .line 897
    invoke-virtual {p0}, Lcom/yandex/metrica/c$a$f$b$a;->d()Lcom/yandex/metrica/c$a$f$b$a;

    .line 898
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
    .line 910
    const/4 v0, 0x1

    iget v1, p0, Lcom/yandex/metrica/c$a$f$b$a;->b:I

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(II)V

    .line 911
    iget-object v0, p0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;

    if-eqz v0, :cond_0

    .line 912
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;

    invoke-virtual {p1, v0, v1}, Lcom/yandex/metrica/impl/ob/b;->a(ILcom/yandex/metrica/impl/ob/d;)V

    .line 914
    :cond_0
    invoke-super {p0, p1}, Lcom/yandex/metrica/impl/ob/d;->a(Lcom/yandex/metrica/impl/ob/b;)V

    .line 915
    return-void
.end method

.method protected c()I
    .locals 3

    .prologue
    .line 919
    invoke-super {p0}, Lcom/yandex/metrica/impl/ob/d;->c()I

    move-result v0

    .line 920
    const/4 v1, 0x1

    iget v2, p0, Lcom/yandex/metrica/c$a$f$b$a;->b:I

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->d(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 922
    iget-object v1, p0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;

    invoke-static {v1, v2}, Lcom/yandex/metrica/impl/ob/b;->b(ILcom/yandex/metrica/impl/ob/d;)I

    move-result v1

    add-int/2addr v0, v1

    .line 926
    :cond_0
    return v0
.end method

.method public d()Lcom/yandex/metrica/c$a$f$b$a;
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    iput v0, p0, Lcom/yandex/metrica/c$a$f$b$a;->b:I

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yandex/metrica/c$a$f$b$a;->c:Lcom/yandex/metrica/c$a$f$b$a$a;

    .line 903
    const/4 v0, -0x1

    iput v0, p0, Lcom/yandex/metrica/c$a$f$b$a;->a:I

    .line 904
    return-object p0
.end method

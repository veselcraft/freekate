.class public Lcom/yandex/metrica/impl/utils/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/yandex/metrica/impl/utils/b$a;->a:I

    .line 29
    iput p2, p0, Lcom/yandex/metrica/impl/utils/b$a;->b:I

    .line 30
    iput p3, p0, Lcom/yandex/metrica/impl/utils/b$a;->c:I

    .line 31
    return-void
.end method

.method public static d()Lcom/yandex/metrica/impl/utils/b$a;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/utils/b$a;

    const/16 v1, 0x1e

    const/16 v2, 0x32

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/metrica/impl/utils/b$a;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/yandex/metrica/impl/utils/b$a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yandex/metrica/impl/utils/b$a;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/yandex/metrica/impl/utils/b$a;->c:I

    return v0
.end method

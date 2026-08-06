.class public abstract Lcom/yandex/metrica/impl/ob/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/i;


# direct methods
.method protected constructor <init>(Lcom/yandex/metrica/impl/ob/i;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/u;->a:Lcom/yandex/metrica/impl/ob/i;

    .line 24
    return-void
.end method


# virtual methods
.method protected a()Lcom/yandex/metrica/impl/ob/i;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/u;->a:Lcom/yandex/metrica/impl/ob/i;

    return-object v0
.end method

.method public abstract a(Lcom/yandex/metrica/impl/g;)Z
.end method

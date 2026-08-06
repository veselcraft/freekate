.class Lcom/yandex/metrica/impl/ad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/ad;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ad;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yandex/metrica/impl/ad$1;->a:Lcom/yandex/metrica/impl/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ad$1;->a:Lcom/yandex/metrica/impl/ad;

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ad;->g()V

    .line 101
    return-void
.end method

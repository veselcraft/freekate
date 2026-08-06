.class Lcom/yandex/metrica/impl/bk$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/metrica/impl/bk;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bk;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/bk;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk$2;->a:Lcom/yandex/metrica/impl/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$2;->a:Lcom/yandex/metrica/impl/bk;

    new-instance v1, Lcom/yandex/metrica/impl/bk$b;

    iget-object v2, p0, Lcom/yandex/metrica/impl/bk$2;->a:Lcom/yandex/metrica/impl/bk;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/yandex/metrica/impl/bk$b;-><init>(Lcom/yandex/metrica/impl/bk;B)V

    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/bk;->a(Lcom/yandex/metrica/impl/bk;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;

    .line 74
    return-void
.end method

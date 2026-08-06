.class Lcom/yandex/metrica/impl/bk$b;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/bk;


# direct methods
.method private constructor <init>(Lcom/yandex/metrica/impl/bk;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/yandex/metrica/impl/bk$b;->a:Lcom/yandex/metrica/impl/bk;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/metrica/impl/bk;B)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/yandex/metrica/impl/bk$b;-><init>(Lcom/yandex/metrica/impl/bk;)V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/impl/bk$b;->a:Lcom/yandex/metrica/impl/bk;

    invoke-static {v0, p1}, Lcom/yandex/metrica/impl/bk;->a(Lcom/yandex/metrica/impl/bk;Landroid/telephony/SignalStrength;)V

    .line 134
    return-void
.end method

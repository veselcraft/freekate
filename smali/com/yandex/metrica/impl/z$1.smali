.class Lcom/yandex/metrica/impl/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/metrica/impl/z;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/z;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yandex/metrica/impl/z$1;->a:Lcom/yandex/metrica/impl/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/yandex/metrica/impl/z$1;->a:Lcom/yandex/metrica/impl/z;

    invoke-virtual {v0, p1}, Lcom/yandex/metrica/impl/z;->a(Landroid/location/Location;)V

    .line 229
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 238
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 235
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 232
    return-void
.end method

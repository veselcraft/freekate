.class Lcom/flurry/sdk/dw$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/dw;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/dw;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {v0, p1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;Landroid/location/Location;)Landroid/location/Location;

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {p1}, Lcom/flurry/sdk/dw;->a(Lcom/flurry/sdk/dw;)I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1

    const/4 p1, 0x4

    .line 251
    invoke-static {}, Lcom/flurry/sdk/dw;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Max location reports reached, stopping"

    invoke-static {p1, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object p1, p0, Lcom/flurry/sdk/dw$a;->a:Lcom/flurry/sdk/dw;

    invoke-static {p1}, Lcom/flurry/sdk/dw;->b(Lcom/flurry/sdk/dw;)V

    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.class Lcom/flurry/sdk/en$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/en;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/en;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/en;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/flurry/sdk/en$a;->a:Lcom/flurry/sdk/en;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/flurry/sdk/en$a;->a:Lcom/flurry/sdk/en;

    invoke-static {v0, p1}, Lcom/flurry/sdk/en;->a(Lcom/flurry/sdk/en;Landroid/location/Location;)Landroid/location/Location;

    .line 222
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

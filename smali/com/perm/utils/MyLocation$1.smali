.class Lcom/perm/utils/MyLocation$1;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/MyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/MyLocation;


# direct methods
.method constructor <init>(Lcom/perm/utils/MyLocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/MyLocation;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/perm/utils/MyLocation$1;->this$0:Lcom/perm/utils/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/perm/utils/MyLocation$1;->this$0:Lcom/perm/utils/MyLocation;

    invoke-static {v0, p1}, Lcom/perm/utils/MyLocation;->access$000(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V

    .line 65
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 69
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

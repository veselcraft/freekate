.class Lcom/perm/utils/MyLocation$1;
.super Ljava/lang/Object;
.source "MyLocation.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic this$0:Lcom/perm/utils/MyLocation;


# direct methods
.method constructor <init>(Lcom/perm/utils/MyLocation;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/utils/MyLocation$1;->this$0:Lcom/perm/utils/MyLocation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/perm/utils/MyLocation$1;->this$0:Lcom/perm/utils/MyLocation;

    invoke-static {v0, p1}, Lcom/perm/utils/MyLocation;->access$000(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V

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

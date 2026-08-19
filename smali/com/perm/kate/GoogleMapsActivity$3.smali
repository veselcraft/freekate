.class Lcom/perm/kate/GoogleMapsActivity$3;
.super Ljava/lang/Object;
.source "GoogleMapsActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GoogleMapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GoogleMapsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GoogleMapsActivity;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/GoogleMapsActivity;->access$302(Lcom/perm/kate/GoogleMapsActivity;Z)Z

    .line 133
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 134
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v2, v3}, Lcom/perm/kate/GoogleMapsActivity;->access$002(Lcom/perm/kate/GoogleMapsActivity;D)D

    .line 135
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v2, v3}, Lcom/perm/kate/GoogleMapsActivity;->access$102(Lcom/perm/kate/GoogleMapsActivity;D)D

    .line 136
    iget-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {p1, v1}, Lcom/perm/kate/GoogleMapsActivity;->access$400(Lcom/perm/kate/GoogleMapsActivity;Z)V

    return-void
.end method

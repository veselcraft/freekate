.class public Lcom/perm/kate/GoogleMapsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GoogleMapsActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# static fields
.field public static CHOOSE_LOCATION:I = 0x5dd


# instance fields
.field private btn_choose_location:Landroid/widget/Button;

.field private choose_location_listener:Landroid/view/View$OnClickListener;

.field private geo_latitude:D

.field private geo_longitude:D

.field private has_location:Z

.field loc_res:Lcom/perm/utils/MyLocation$LocationResult;

.field private mMap:Lcom/google/android/gms/maps/GoogleMap;

.field private mapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

.field private onlyShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    .line 28
    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    .line 61
    new-instance v0, Lcom/perm/kate/GoogleMapsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GoogleMapsActivity$1;-><init>(Lcom/perm/kate/GoogleMapsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->choose_location_listener:Landroid/view/View$OnClickListener;

    .line 129
    new-instance v0, Lcom/perm/kate/GoogleMapsActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GoogleMapsActivity$3;-><init>(Lcom/perm/kate/GoogleMapsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->mapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GoogleMapsActivity;)D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    return-wide v0
.end method

.method static synthetic access$002(Lcom/perm/kate/GoogleMapsActivity;D)D
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    return-wide p1
.end method

.method static synthetic access$100(Lcom/perm/kate/GoogleMapsActivity;)D
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/perm/kate/GoogleMapsActivity;D)D
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/perm/kate/GoogleMapsActivity;Landroid/location/Location;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GoogleMapsActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$302(Lcom/perm/kate/GoogleMapsActivity;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/GoogleMapsActivity;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/GoogleMapsActivity;->showLocation(Z)V

    return-void
.end method

.method private getLocation()V
    .locals 2

    .line 76
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v1, Lcom/perm/kate/GoogleMapsActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/GoogleMapsActivity$2;-><init>(Lcom/perm/kate/GoogleMapsActivity;)V

    iput-object v1, p0, Lcom/perm/kate/GoogleMapsActivity;->loc_res:Lcom/perm/utils/MyLocation$LocationResult;

    .line 93
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    const v0, 0x7f0f04aa

    .line 94
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private moveCameraToLastKnownLocation()V
    .locals 6

    .line 122
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/perm/utils/MyLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 126
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    return-void
.end method

.method private showLocation(Z)V
    .locals 5

    .line 53
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    iget-wide v3, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 54
    new-instance v1, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 56
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    :cond_0
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    .line 101
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    .line 102
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    .line 103
    iget-object p1, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz p1, :cond_0

    .line 104
    invoke-direct {p0, v0}, Lcom/perm/kate/GoogleMapsActivity;->showLocation(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0092

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01a3

    .line 36
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const v0, 0x7f090223

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 38
    invoke-virtual {p1, p0}, Lcom/google/android/gms/maps/SupportMapFragment;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.only_show"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    const p1, 0x7f0901c8

    .line 40
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f09006e

    .line 41
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity;->btn_choose_location:Landroid/widget/Button;

    .line 42
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->choose_location_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-boolean p1, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    if-eqz p1, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.latitude"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.longitude"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    .line 47
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GoogleMapsActivity;->getLocation()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->loc_res:Lcom/perm/utils/MyLocation$LocationResult;

    .line 143
    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 144
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    .line 110
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 111
    iget-boolean p1, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 112
    invoke-direct {p0, p1}, Lcom/perm/kate/GoogleMapsActivity;->showLocation(Z)V

    return-void

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/GoogleMapsActivity;->moveCameraToLastKnownLocation()V

    .line 118
    iget-object p1, p0, Lcom/perm/kate/GoogleMapsActivity;->mMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->mapClickListener:Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setOnMapClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;)V

    return-void
.end method

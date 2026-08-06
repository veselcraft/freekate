.class public Lcom/perm/kate/GoogleMapsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "GoogleMapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;
    }
.end annotation


# static fields
.field public static CHOOSE_LOCATION:I


# instance fields
.field private btn_choose_location:Landroid/widget/Button;

.field private choose_location_listener:Landroid/view/View$OnClickListener;

.field private geo_latitude:D

.field private geo_longitude:D

.field private has_location:Z

.field private itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

.field private mapView:Lcom/google/android/maps/MapView;

.field private onlyShow:Z

.field private pb_header_progress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x5dd

    sput v0, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    .line 40
    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    .line 85
    new-instance v0, Lcom/perm/kate/GoogleMapsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GoogleMapsActivity$1;-><init>(Lcom/perm/kate/GoogleMapsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->choose_location_listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GoogleMapsActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    return-wide v0
.end method

.method static synthetic access$102(Lcom/perm/kate/GoogleMapsActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p1, "x1"    # D

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    return-wide p1
.end method

.method static synthetic access$200(Lcom/perm/kate/GoogleMapsActivity;)D
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    return-wide v0
.end method

.method static synthetic access$202(Lcom/perm/kate/GoogleMapsActivity;D)D
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p1, "x1"    # D

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    return-wide p1
.end method

.method static synthetic access$300(Lcom/perm/kate/GoogleMapsActivity;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/GoogleMapsActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GoogleMapsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/GoogleMapsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    return v0
.end method

.method static synthetic access$502(Lcom/perm/kate/GoogleMapsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    return p1
.end method

.method static synthetic access$600(Lcom/perm/kate/GoogleMapsActivity;Lcom/google/android/maps/GeoPoint;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p1, "x1"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/GoogleMapsActivity;->showPick(Lcom/google/android/maps/GeoPoint;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/GoogleMapsActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity;->pb_header_progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private getLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 98
    .local v0, "geo":Lcom/perm/utils/MyLocation;
    new-instance v1, Lcom/perm/kate/GoogleMapsActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/GoogleMapsActivity$2;-><init>(Lcom/perm/kate/GoogleMapsActivity;)V

    .line 114
    .local v1, "loc_res":Lcom/perm/utils/MyLocation$LocationResult;
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    .line 115
    invoke-virtual {p0, v3}, Lcom/perm/kate/GoogleMapsActivity;->showProgressBar(Z)V

    .line 116
    const v2, 0x7f070413

    invoke-virtual {p0, v2}, Lcom/perm/kate/GoogleMapsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    return-void
.end method

.method private showLocation(DD)V
    .locals 7
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .prologue
    const/4 v6, 0x0

    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 72
    new-instance v1, Lcom/google/android/maps/GeoPoint;

    mul-double v2, p1, v4

    double-to-int v2, v2

    mul-double/2addr v4, p3

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 73
    .local v1, "point":Lcom/google/android/maps/GeoPoint;
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v0, "overlayitem":Lcom/google/android/maps/OverlayItem;
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity;->itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    invoke-virtual {v2, v0}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 75
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 76
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v2}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 77
    return-void
.end method

.method private showPick(Lcom/google/android/maps/GeoPoint;)V
    .locals 2
    .param p1, "point"    # Lcom/google/android/maps/GeoPoint;

    .prologue
    const/4 v1, 0x0

    .line 80
    new-instance v0, Lcom/google/android/maps/OverlayItem;

    invoke-direct {v0, p1, v1, v1}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v0, "overlayitem":Lcom/google/android/maps/OverlayItem;
    iget-object v1, p0, Lcom/perm/kate/GoogleMapsActivity;->itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    invoke-static {v1}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->access$000(Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v1, p0, Lcom/perm/kate/GoogleMapsActivity;->itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    invoke-virtual {v1, v0}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->addOverlay(Lcom/google/android/maps/OverlayItem;)V

    .line 83
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity;->has_location:Z

    .line 122
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    .line 123
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    .line 124
    iget-wide v0, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_latitude:D

    iget-wide v2, p0, Lcom/perm/kate/GoogleMapsActivity;->geo_longitude:D

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/perm/kate/GoogleMapsActivity;->showLocation(DD)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v9, 0x7f030085

    invoke-virtual {p0, v9}, Lcom/perm/kate/GoogleMapsActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/GoogleMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "com.perm.kate.only_show"

    invoke-virtual {v9, v10, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    .line 51
    const v9, 0x7f0e01c1

    invoke-virtual {p0, v9}, Lcom/perm/kate/GoogleMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-boolean v10, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    if-eqz v10, :cond_0

    const/16 v8, 0x8

    :cond_0
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 52
    const v8, 0x7f0e01c2

    invoke-virtual {p0, v8}, Lcom/perm/kate/GoogleMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->btn_choose_location:Landroid/widget/Button;

    .line 53
    iget-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->btn_choose_location:Landroid/widget/Button;

    iget-object v9, p0, Lcom/perm/kate/GoogleMapsActivity;->choose_location_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v8, 0x7f0e01c0

    invoke-virtual {p0, v8}, Lcom/perm/kate/GoogleMapsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/maps/MapView;

    iput-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->mapView:Lcom/google/android/maps/MapView;

    .line 55
    iget-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->mapView:Lcom/google/android/maps/MapView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/GoogleMapsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f02013a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 57
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v8, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    invoke-direct {v8, p0, v0, p0}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;-><init>(Lcom/perm/kate/GoogleMapsActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    iput-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    .line 58
    iget-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->mapView:Lcom/google/android/maps/MapView;

    invoke-virtual {v8}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v7

    .line 59
    .local v7, "mapOverlays":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/maps/Overlay;>;"
    iget-object v8, p0, Lcom/perm/kate/GoogleMapsActivity;->itemizedoverlay:Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-boolean v8, p0, Lcom/perm/kate/GoogleMapsActivity;->onlyShow:Z

    if-eqz v8, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/perm/kate/GoogleMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.perm.kate.latitude"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "latitude":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/GoogleMapsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.perm.kate.longitude"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "longitude":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 64
    .local v2, "lat":D
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 65
    .local v4, "lon":D
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/perm/kate/GoogleMapsActivity;->showLocation(DD)V

    .line 69
    .end local v1    # "latitude":Ljava/lang/String;
    .end local v2    # "lat":D
    .end local v4    # "lon":D
    .end local v6    # "longitude":Ljava/lang/String;
    :goto_0
    return-void

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/GoogleMapsActivity;->getLocation()V

    goto :goto_0
.end method

.method public showProgressBar(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 168
    new-instance v0, Lcom/perm/kate/GoogleMapsActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GoogleMapsActivity$3;-><init>(Lcom/perm/kate/GoogleMapsActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GoogleMapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

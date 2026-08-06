.class public Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "GoogleMapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GoogleMapsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MapOverlayProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/maps/OverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/perm/kate/GoogleMapsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/GoogleMapsActivity;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/GoogleMapsActivity;
    .param p2, "defaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    .line 133
    invoke-static {p2}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public addOverlay(Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .param p1, "overlay"    # Lcom/google/android/maps/OverlayItem;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {p0}, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->populate()V

    .line 139
    return-void
.end method

.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    .line 152
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2}, Lcom/perm/kate/GoogleMapsActivity;->access$400(Lcom/perm/kate/GoogleMapsActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-super {p0, p1, p2}, Lcom/google/android/maps/ItemizedOverlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z

    move-result v1

    .line 163
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 155
    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/Projection;->fromPixels(II)Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    .line 156
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2}, Lcom/perm/kate/GoogleMapsActivity;->access$500(Lcom/perm/kate/GoogleMapsActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 157
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v2, v1}, Lcom/perm/kate/GoogleMapsActivity;->showProgressBar(Z)V

    .line 158
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2, v5}, Lcom/perm/kate/GoogleMapsActivity;->access$502(Lcom/perm/kate/GoogleMapsActivity;Z)Z

    .line 159
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/perm/kate/GoogleMapsActivity;->access$102(Lcom/perm/kate/GoogleMapsActivity;D)D

    .line 160
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v3

    int-to-double v4, v3

    div-double/2addr v4, v6

    invoke-static {v2, v4, v5}, Lcom/perm/kate/GoogleMapsActivity;->access$202(Lcom/perm/kate/GoogleMapsActivity;D)D

    .line 161
    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2, v0}, Lcom/perm/kate/GoogleMapsActivity;->access$600(Lcom/perm/kate/GoogleMapsActivity;Lcom/google/android/maps/GeoPoint;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$MapOverlayProvider;->mOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

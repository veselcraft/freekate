.class Lcom/perm/kate/GoogleMapsActivity$2;
.super Lcom/perm/utils/MyLocation$LocationResult;
.source "GoogleMapsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GoogleMapsActivity;->getLocation()V
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
    .param p1, "this$0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-direct {p0}, Lcom/perm/utils/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0}, Lcom/perm/kate/GoogleMapsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    new-instance v1, Lcom/perm/kate/GoogleMapsActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GoogleMapsActivity$2$1;-><init>(Lcom/perm/kate/GoogleMapsActivity$2;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/GoogleMapsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/GoogleMapsActivity;->showProgressBar(Z)V

    goto :goto_0
.end method

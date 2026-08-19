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

    .line 77
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-direct {p0}, Lcom/perm/utils/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    if-nez p1, :cond_1

    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    new-instance v1, Lcom/perm/kate/GoogleMapsActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/GoogleMapsActivity$2$1;-><init>(Lcom/perm/kate/GoogleMapsActivity$2;Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

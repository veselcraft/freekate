.class Lcom/perm/kate/GoogleMapsActivity$2$1;
.super Ljava/lang/Object;
.source "GoogleMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GoogleMapsActivity$2;->gotLocation(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GoogleMapsActivity$2;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/perm/kate/GoogleMapsActivity$2;Landroid/location/Location;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GoogleMapsActivity$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$2$1;->this$1:Lcom/perm/kate/GoogleMapsActivity$2;

    iput-object p2, p0, Lcom/perm/kate/GoogleMapsActivity$2$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$2$1;->this$1:Lcom/perm/kate/GoogleMapsActivity$2;

    iget-object v0, v0, Lcom/perm/kate/GoogleMapsActivity$2;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    iget-object v1, p0, Lcom/perm/kate/GoogleMapsActivity$2$1;->val$location:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/perm/kate/GoogleMapsActivity;->access$300(Lcom/perm/kate/GoogleMapsActivity;Landroid/location/Location;)V

    .line 109
    return-void
.end method

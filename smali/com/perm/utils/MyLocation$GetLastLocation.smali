.class Lcom/perm/utils/MyLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "MyLocation.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/MyLocation;


# direct methods
.method constructor <init>(Lcom/perm/utils/MyLocation;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-static {v0}, Lcom/perm/utils/MyLocation;->access$100(Lcom/perm/utils/MyLocation;)V

    .line 99
    iget-object v0, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-virtual {v0}, Lcom/perm/utils/MyLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/utils/MyLocation;->access$200(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V

    return-void
.end method

.class Lcom/perm/utils/MyLocation$GetLastLocation;
.super Ljava/util/TimerTask;
.source "MyLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/MyLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetLastLocation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/MyLocation;


# direct methods
.method constructor <init>(Lcom/perm/utils/MyLocation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/MyLocation;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-static {v0}, Lcom/perm/utils/MyLocation;->access$100(Lcom/perm/utils/MyLocation;)V

    .line 97
    iget-object v0, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    iget-object v1, p0, Lcom/perm/utils/MyLocation$GetLastLocation;->this$0:Lcom/perm/utils/MyLocation;

    invoke-virtual {v1}, Lcom/perm/utils/MyLocation;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/utils/MyLocation;->access$200(Lcom/perm/utils/MyLocation;Landroid/location/Location;)V

    .line 98
    return-void
.end method

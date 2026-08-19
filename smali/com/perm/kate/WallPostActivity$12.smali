.class Lcom/perm/kate/WallPostActivity$12;
.super Lcom/perm/utils/MyLocation$LocationResult;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$12;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Lcom/perm/utils/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 1

    .line 891
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$12;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 894
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$12;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$2800(Lcom/perm/kate/WallPostActivity;Landroid/location/Location;)V

    :cond_1
    return-void
.end method

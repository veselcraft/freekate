.class Lcom/perm/kate/GoogleMapsActivity$1;
.super Ljava/lang/Object;
.source "GoogleMapsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 61
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 64
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v0}, Lcom/perm/kate/GoogleMapsActivity;->access$000(Lcom/perm/kate/GoogleMapsActivity;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "latitude"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v0}, Lcom/perm/kate/GoogleMapsActivity;->access$100(Lcom/perm/kate/GoogleMapsActivity;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    iget-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

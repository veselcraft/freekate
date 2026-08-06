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
    .param p1, "this$0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "latitude"

    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2}, Lcom/perm/kate/GoogleMapsActivity;->access$100(Lcom/perm/kate/GoogleMapsActivity;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "longitude"

    iget-object v2, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v2}, Lcom/perm/kate/GoogleMapsActivity;->access$200(Lcom/perm/kate/GoogleMapsActivity;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/GoogleMapsActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    iget-object v1, p0, Lcom/perm/kate/GoogleMapsActivity$1;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v1}, Lcom/perm/kate/GoogleMapsActivity;->finish()V

    .line 93
    return-void
.end method

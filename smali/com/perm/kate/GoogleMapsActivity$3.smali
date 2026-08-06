.class Lcom/perm/kate/GoogleMapsActivity$3;
.super Ljava/lang/Object;
.source "GoogleMapsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GoogleMapsActivity;->showProgressBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GoogleMapsActivity;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/GoogleMapsActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/GoogleMapsActivity;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    iput-boolean p2, p0, Lcom/perm/kate/GoogleMapsActivity$3;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v0}, Lcom/perm/kate/GoogleMapsActivity;->access$700(Lcom/perm/kate/GoogleMapsActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->this$0:Lcom/perm/kate/GoogleMapsActivity;

    invoke-static {v0}, Lcom/perm/kate/GoogleMapsActivity;->access$700(Lcom/perm/kate/GoogleMapsActivity;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-boolean v0, p0, Lcom/perm/kate/GoogleMapsActivity$3;->val$show:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    :cond_0
    return-void

    .line 172
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

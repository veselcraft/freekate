.class Lcom/perm/kate/NewMessageActivity$10;
.super Lcom/perm/utils/MyLocation$LocationResult;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewMessageActivity;->getLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewMessageActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-direct {p0}, Lcom/perm/utils/MyLocation$LocationResult;-><init>()V

    return-void
.end method


# virtual methods
.method public gotLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewMessageActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    if-eqz p1, :cond_0

    .line 603
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity$10;->this$0:Lcom/perm/kate/NewMessageActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/NewMessageActivity;->access$1800(Lcom/perm/kate/NewMessageActivity;Landroid/location/Location;)V

    goto :goto_0
.end method

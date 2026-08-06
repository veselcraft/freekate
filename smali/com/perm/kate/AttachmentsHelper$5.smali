.class Lcom/perm/kate/AttachmentsHelper$5;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$5;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 931
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Geo;

    .line 932
    .local v0, "geo":Lcom/perm/kate/api/Geo;
    iget-object v2, v0, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$5;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .end local v0    # "geo":Lcom/perm/kate/api/Geo;
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 935
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

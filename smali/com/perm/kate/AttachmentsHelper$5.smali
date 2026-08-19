.class Lcom/perm/kate/AttachmentsHelper$5;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$5;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1166
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Geo;

    .line 1167
    iget-object v0, p1, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$5;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, p1, v1}, Lcom/perm/kate/Helper;->openMap(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1169
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 1170
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

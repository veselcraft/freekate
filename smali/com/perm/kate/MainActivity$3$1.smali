.class Lcom/perm/kate/MainActivity$3$1;
.super Lcom/perm/kate/session/Callback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MainActivity$3;

.field final synthetic val$group_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity$3;Landroid/app/Activity;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/perm/kate/MainActivity$3;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/perm/kate/MainActivity$3$1;->this$1:Lcom/perm/kate/MainActivity$3;

    iput-wide p3, p0, Lcom/perm/kate/MainActivity$3$1;->val$group_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 230
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/perm/kate/MainActivity$3$1;->this$1:Lcom/perm/kate/MainActivity$3;

    iget-object v1, v1, Lcom/perm/kate/MainActivity$3;->this$0:Lcom/perm/kate/MainActivity;

    iget-wide v2, p0, Lcom/perm/kate/MainActivity$3$1;->val$group_id:J

    invoke-static {v1, v0, v2, v3}, Lcom/perm/kate/notifications/GroupMessagesNotification;->display(Landroid/content/Context;IJ)V

    .line 232
    :cond_0
    return-void
.end method

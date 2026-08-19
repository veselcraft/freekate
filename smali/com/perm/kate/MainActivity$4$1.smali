.class Lcom/perm/kate/MainActivity$4$1;
.super Lcom/perm/kate/session/Callback;
.source "MainActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MainActivity$4;

.field final synthetic val$group_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/MainActivity$4;Landroid/app/Activity;J)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/perm/kate/MainActivity$4$1;->this$1:Lcom/perm/kate/MainActivity$4;

    iput-wide p3, p0, Lcom/perm/kate/MainActivity$4$1;->val$group_id:J

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 264
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/perm/kate/MainActivity$4$1;->this$1:Lcom/perm/kate/MainActivity$4;

    iget-object v0, v0, Lcom/perm/kate/MainActivity$4;->this$0:Lcom/perm/kate/MainActivity;

    iget-wide v1, p0, Lcom/perm/kate/MainActivity$4$1;->val$group_id:J

    invoke-static {v0, p1, v1, v2}, Lcom/perm/kate/notifications/GroupMessagesNotification;->display(Landroid/content/Context;IJ)V

    :cond_0
    return-void
.end method

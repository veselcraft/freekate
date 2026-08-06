.class Lcom/perm/kate/GroupBannedActivity$7$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupBannedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity$7;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupBannedActivity$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity$7;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GroupBannedActivity$7;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$7$1;->this$1:Lcom/perm/kate/GroupBannedActivity$7;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 243
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 244
    .local v0, "user_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 245
    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$7$1;->this$1:Lcom/perm/kate/GroupBannedActivity$7;

    iget-object v1, v1, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/GroupBannedActivity;->showGroupBlockActivity(J)V

    .line 246
    :cond_0
    return-void
.end method

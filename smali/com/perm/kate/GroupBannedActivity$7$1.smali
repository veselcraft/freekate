.class Lcom/perm/kate/GroupBannedActivity$7$1;
.super Lcom/perm/kate/session/Callback;
.source "GroupBannedActivity.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupBannedActivity$7;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity$7;Landroid/app/Activity;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$7$1;->this$1:Lcom/perm/kate/GroupBannedActivity$7;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 243
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$7$1;->this$1:Lcom/perm/kate/GroupBannedActivity$7;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$7;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/GroupBannedActivity;->showGroupBlockActivity(J)V

    :cond_0
    return-void
.end method

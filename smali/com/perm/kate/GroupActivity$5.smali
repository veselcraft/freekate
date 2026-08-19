.class Lcom/perm/kate/GroupActivity$5;
.super Lcom/perm/kate/session/Callback;
.source "GroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/GroupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$5;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 480
    check-cast p1, Ljava/lang/Integer;

    .line 481
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity$5;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/kate/db/DataHelper;->updateGroupWallCount(JLjava/lang/Integer;)V

    .line 482
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$5;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {v0, p1}, Lcom/perm/kate/GroupActivity;->access$1200(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V

    return-void
.end method

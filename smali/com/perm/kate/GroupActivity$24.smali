.class Lcom/perm/kate/GroupActivity$24;
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

    .line 716
    iput-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 735
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 719
    iget-object v0, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 720
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 721
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 722
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$2400(Lcom/perm/kate/GroupActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 723
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f0540

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    goto :goto_0

    .line 725
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    const v0, 0x7f0f053e

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 726
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->createUserGroup(JJLjava/lang/Boolean;Ljava/lang/Integer;)J

    .line 727
    iget-object p1, p0, Lcom/perm/kate/GroupActivity$24;->this$0:Lcom/perm/kate/GroupActivity;

    invoke-static {p1}, Lcom/perm/kate/GroupActivity;->access$1000(Lcom/perm/kate/GroupActivity;)V

    :cond_1
    :goto_0
    return-void
.end method
